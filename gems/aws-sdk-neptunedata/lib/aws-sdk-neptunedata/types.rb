# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Neptunedata
  module Types

    # Raised in case of an authentication or authorization failure.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a request is submitted that cannot be processed.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the bad request.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a specified bulk-load job ID cannot be found.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The bulk-load job ID that could not be found.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/BulkLoadIdNotFoundException AWS API Documentation
    #
    class BulkLoadIdNotFoundException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The unique identifier that identifies the query to be canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelGremlinQueryInput AWS API Documentation
    #
    class CancelGremlinQueryInput < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the cancelation
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelGremlinQueryOutput AWS API Documentation
    #
    class CancelGremlinQueryOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_id
    #   The ID of the load job to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelLoaderJobInput AWS API Documentation
    #
    class CancelLoaderJobInput < Struct.new(
      :load_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The cancellation status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelLoaderJobOutput AWS API Documentation
    #
    class CancelLoaderJobOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the data-processing job.
    #   @return [String]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster
    #   parameter group or an error will occur.
    #   @return [String]
    #
    # @!attribute [rw] clean
    #   If set to `TRUE`, this flag specifies that all Neptune ML S3
    #   artifacts should be deleted when the job is stopped. The default is
    #   `FALSE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelMLDataProcessingJobInput AWS API Documentation
    #
    class CancelMLDataProcessingJobInput < Struct.new(
      :id,
      :neptune_iam_role_arn,
      :clean)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the cancellation request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelMLDataProcessingJobOutput AWS API Documentation
    #
    class CancelMLDataProcessingJobOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the model-training job to be canceled.
    #   @return [String]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster
    #   parameter group or an error will occur.
    #   @return [String]
    #
    # @!attribute [rw] clean
    #   If set to `TRUE`, this flag specifies that all Amazon S3 artifacts
    #   should be deleted when the job is stopped. The default is `FALSE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelMLModelTrainingJobInput AWS API Documentation
    #
    class CancelMLModelTrainingJobInput < Struct.new(
      :id,
      :neptune_iam_role_arn,
      :clean)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the cancellation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelMLModelTrainingJobOutput AWS API Documentation
    #
    class CancelMLModelTrainingJobOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique ID of the model transform job to be canceled.
    #   @return [String]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster
    #   parameter group or an error will occur.
    #   @return [String]
    #
    # @!attribute [rw] clean
    #   If this flag is set to `TRUE`, all Neptune ML S3 artifacts should be
    #   deleted when the job is stopped. The default is `FALSE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelMLModelTransformJobInput AWS API Documentation
    #
    class CancelMLModelTransformJobInput < Struct.new(
      :id,
      :neptune_iam_role_arn,
      :clean)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   the status of the cancelation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelMLModelTransformJobOutput AWS API Documentation
    #
    class CancelMLModelTransformJobOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The unique ID of the openCypher query to cancel.
    #   @return [String]
    #
    # @!attribute [rw] silent
    #   If set to `TRUE`, causes the cancelation of the openCypher query to
    #   happen silently.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelOpenCypherQueryInput AWS API Documentation
    #
    class CancelOpenCypherQueryInput < Struct.new(
      :query_id,
      :silent)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The cancellation status of the openCypher query.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The cancelation payload for the openCypher query.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelOpenCypherQueryOutput AWS API Documentation
    #
    class CancelOpenCypherQueryOutput < Struct.new(
      :status,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a user cancelled a request.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelledByUserException AWS API Documentation
    #
    class CancelledByUserException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a request timed out in the client.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ClientTimeoutException AWS API Documentation
    #
    class ClientTimeoutException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a request attempts to modify data that is concurrently
    # being modified by another process.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a value in a request field did not satisfy required
    # constraints.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ConstraintViolationException AWS API Documentation
    #
    class ConstraintViolationException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   A unique identifier for the new inference endpoint. The default is
    #   an autogenerated timestamped name.
    #   @return [String]
    #
    # @!attribute [rw] ml_model_training_job_id
    #   The job Id of the completed model-training job that has created the
    #   model that the inference endpoint will point to. You must supply
    #   either the `mlModelTrainingJobId` or the `mlModelTransformJobId`.
    #   @return [String]
    #
    # @!attribute [rw] ml_model_transform_job_id
    #   The job Id of the completed model-transform job. You must supply
    #   either the `mlModelTrainingJobId` or the `mlModelTransformJobId`.
    #   @return [String]
    #
    # @!attribute [rw] update
    #   If set to `true`, `update` indicates that this is an update request.
    #   The default is `false`. You must supply either the
    #   `mlModelTrainingJobId` or the `mlModelTransformJobId`.
    #   @return [Boolean]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The ARN of an IAM role providing Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster
    #   parameter group or an error will be thrown.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   Model type for training. By default the Neptune ML model is
    #   automatically based on the `modelType` used in data processing, but
    #   you can specify a different model type here. The default is `rgcn`
    #   for heterogeneous graphs and `kge` for knowledge graphs. The only
    #   valid value for heterogeneous graphs is `rgcn`. Valid values for
    #   knowledge graphs are: `kge`, `transe`, `distmult`, and `rotate`.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of Neptune ML instance to use for online servicing. The
    #   default is `ml.m5.xlarge`. Choosing the ML instance for an inference
    #   endpoint depends on the task type, the graph size, and your budget.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The minimum number of Amazon EC2 instances to deploy to an endpoint
    #   for prediction. The default is 1
    #   @return [Integer]
    #
    # @!attribute [rw] volume_encryption_kms_key
    #   The Amazon Key Management Service (Amazon KMS) key that SageMaker
    #   uses to encrypt data on the storage volume attached to the ML
    #   compute instances that run the training job. The default is None.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CreateMLEndpointInput AWS API Documentation
    #
    class CreateMLEndpointInput < Struct.new(
      :id,
      :ml_model_training_job_id,
      :ml_model_transform_job_id,
      :update,
      :neptune_iam_role_arn,
      :model_name,
      :instance_type,
      :instance_count,
      :volume_encryption_kms_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique ID of the new inference endpoint.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN for the new inference endpoint.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_in_millis
    #   The endpoint creation time, in milliseconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CreateMLEndpointOutput AWS API Documentation
    #
    class CreateMLEndpointOutput < Struct.new(
      :id,
      :arn,
      :creation_time_in_millis)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains custom model training parameters. See [Custom models in
    # Neptune ML][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-custom-models.html
    #
    # @!attribute [rw] source_s3_directory_path
    #   The path to the Amazon S3 location where the Python module
    #   implementing your model is located. This must point to a valid
    #   existing Amazon S3 location that contains, at a minimum, a training
    #   script, a transform script, and a `model-hpo-configuration.json`
    #   file.
    #   @return [String]
    #
    # @!attribute [rw] training_entry_point_script
    #   The name of the entry point in your module of a script that performs
    #   model training and takes hyperparameters as command-line arguments,
    #   including fixed hyperparameters. The default is `training.py`.
    #   @return [String]
    #
    # @!attribute [rw] transform_entry_point_script
    #   The name of the entry point in your module of a script that should
    #   be run after the best model from the hyperparameter search has been
    #   identified, to compute the model artifacts necessary for model
    #   deployment. It should be able to run with no command-line
    #   arguments.The default is `transform.py`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CustomModelTrainingParameters AWS API Documentation
    #
    class CustomModelTrainingParameters < Struct.new(
      :source_s3_directory_path,
      :training_entry_point_script,
      :transform_entry_point_script)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains custom model transform parameters. See [Use a trained model
    # to generate new model artifacts][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html
    #
    # @!attribute [rw] source_s3_directory_path
    #   The path to the Amazon S3 location where the Python module
    #   implementing your model is located. This must point to a valid
    #   existing Amazon S3 location that contains, at a minimum, a training
    #   script, a transform script, and a `model-hpo-configuration.json`
    #   file.
    #   @return [String]
    #
    # @!attribute [rw] transform_entry_point_script
    #   The name of the entry point in your module of a script that should
    #   be run after the best model from the hyperparameter search has been
    #   identified, to compute the model artifacts necessary for model
    #   deployment. It should be able to run with no command-line arguments.
    #   The default is `transform.py`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CustomModelTransformParameters AWS API Documentation
    #
    class CustomModelTransformParameters < Struct.new(
      :source_s3_directory_path,
      :transform_entry_point_script)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the inference endpoint.
    #   @return [String]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The ARN of an IAM role providing Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster
    #   parameter group or an error will be thrown.
    #   @return [String]
    #
    # @!attribute [rw] clean
    #   If this flag is set to `TRUE`, all Neptune ML S3 artifacts should be
    #   deleted when the job is stopped. The default is `FALSE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/DeleteMLEndpointInput AWS API Documentation
    #
    class DeleteMLEndpointInput < Struct.new(
      :id,
      :neptune_iam_role_arn,
      :clean)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the cancellation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/DeleteMLEndpointOutput AWS API Documentation
    #
    class DeleteMLEndpointOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   The HTTP response code: 200 if the delete was successful, or 204 if
    #   there were no statistics to delete.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The cancel status.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The deletion payload.
    #   @return [Types::DeleteStatisticsValueMap]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/DeletePropertygraphStatisticsOutput AWS API Documentation
    #
    class DeletePropertygraphStatisticsOutput < Struct.new(
      :status_code,
      :status,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   The HTTP response code: 200 if the delete was successful, or 204 if
    #   there were no statistics to delete.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The cancel status.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The deletion payload.
    #   @return [Types::DeleteStatisticsValueMap]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/DeleteSparqlStatisticsOutput AWS API Documentation
    #
    class DeleteSparqlStatisticsOutput < Struct.new(
      :status_code,
      :status,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # The payload for DeleteStatistics.
    #
    # @!attribute [rw] active
    #   The current status of the statistics.
    #   @return [Boolean]
    #
    # @!attribute [rw] statistics_id
    #   The ID of the statistics generation run that is currently occurring.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/DeleteStatisticsValueMap AWS API Documentation
    #
    class DeleteStatisticsValueMap < Struct.new(
      :active,
      :statistics_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An edge structure.
    #
    # @!attribute [rw] count
    #   The number of edges that have this specific structure.
    #   @return [Integer]
    #
    # @!attribute [rw] edge_properties
    #   A list of edge properties present in this specific structure.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/EdgeStructure AWS API Documentation
    #
    class EdgeStructure < Struct.new(
      :count,
      :edge_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The fast reset action. One of the following values:
    #
    #   * <b> <code>initiateDatabaseReset</code> </b>   –   This action
    #     generates a unique token needed to actually perform the fast
    #     reset.
    #
    #   * <b> <code>performDatabaseReset</code> </b>   –   This action uses
    #     the token generated by the `initiateDatabaseReset` action to
    #     actually perform the fast reset.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   The fast-reset token to initiate the reset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteFastResetInput AWS API Documentation
    #
    class ExecuteFastResetInput < Struct.new(
      :action,
      :token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The `status` is only returned for the `performDatabaseReset` action,
    #   and indicates whether or not the fast reset rquest is accepted.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The `payload` is only returned by the `initiateDatabaseReset`
    #   action, and contains the unique token to use with the
    #   `performDatabaseReset` action to make the reset occur.
    #   @return [Types::FastResetToken]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteFastResetOutput AWS API Documentation
    #
    class ExecuteFastResetOutput < Struct.new(
      :status,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gremlin_query
    #   The Gremlin explain query string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteGremlinExplainQueryInput AWS API Documentation
    #
    class ExecuteGremlinExplainQueryInput < Struct.new(
      :gremlin_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] output
    #   A text blob containing the Gremlin explain result, as described in
    #   [Tuning Gremlin queries][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-traversal-tuning.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteGremlinExplainQueryOutput AWS API Documentation
    #
    class ExecuteGremlinExplainQueryOutput < Struct.new(
      :output)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gremlin_query
    #   The Gremlin query string to profile.
    #   @return [String]
    #
    # @!attribute [rw] results
    #   If this flag is set to `TRUE`, the query results are gathered and
    #   displayed as part of the profile report. If `FALSE`, only the result
    #   count is displayed.
    #   @return [Boolean]
    #
    # @!attribute [rw] chop
    #   If non-zero, causes the results string to be truncated at that
    #   number of characters. If set to zero, the string contains all the
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] serializer
    #   If non-null, the gathered results are returned in a serialized
    #   response message in the format specified by this parameter. See
    #   [Gremlin profile API in Neptune][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-profile-api.html
    #   @return [String]
    #
    # @!attribute [rw] index_ops
    #   If this flag is set to `TRUE`, the results include a detailed report
    #   of all index operations that took place during query execution and
    #   serialization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteGremlinProfileQueryInput AWS API Documentation
    #
    class ExecuteGremlinProfileQueryInput < Struct.new(
      :gremlin_query,
      :results,
      :chop,
      :serializer,
      :index_ops)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] output
    #   A text blob containing the Gremlin Profile result. See [Gremlin
    #   profile API in Neptune][1] for details.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-profile-api.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteGremlinProfileQueryOutput AWS API Documentation
    #
    class ExecuteGremlinProfileQueryOutput < Struct.new(
      :output)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gremlin_query
    #   Using this API, you can run Gremlin queries in string format much as
    #   you can using the HTTP endpoint. The interface is compatible with
    #   whatever Gremlin version your DB cluster is using (see the
    #   [Tinkerpop client section][1] to determine which Gremlin releases
    #   your engine version supports).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-gremlin-client.html#best-practices-gremlin-java-latest
    #   @return [String]
    #
    # @!attribute [rw] serializer
    #   If non-null, the query results are returned in a serialized response
    #   message in the format specified by this parameter. See the
    #   [GraphSON][1] section in the TinkerPop documentation for a list of
    #   the formats that are currently supported.
    #
    #
    #
    #   [1]: https://tinkerpop.apache.org/docs/current/reference/#_graphson
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteGremlinQueryInput AWS API Documentation
    #
    class ExecuteGremlinQueryInput < Struct.new(
      :gremlin_query,
      :serializer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The unique identifier of the Gremlin query.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Gremlin query.
    #   @return [Types::GremlinQueryStatusAttributes]
    #
    # @!attribute [rw] result
    #   The Gremlin query output from the server.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] meta
    #   Metadata about the Gremlin query.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteGremlinQueryOutput AWS API Documentation
    #
    class ExecuteGremlinQueryOutput < Struct.new(
      :request_id,
      :status,
      :result,
      :meta)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] open_cypher_query
    #   The openCypher query string.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The openCypher query parameters.
    #   @return [String]
    #
    # @!attribute [rw] explain_mode
    #   The openCypher `explain` mode. Can be one of: `static`, `dynamic`,
    #   or `details`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteOpenCypherExplainQueryInput AWS API Documentation
    #
    class ExecuteOpenCypherExplainQueryInput < Struct.new(
      :open_cypher_query,
      :parameters,
      :explain_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   A text blob containing the openCypher `explain` results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteOpenCypherExplainQueryOutput AWS API Documentation
    #
    class ExecuteOpenCypherExplainQueryOutput < Struct.new(
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] open_cypher_query
    #   The openCypher query string to be executed.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The openCypher query parameters for query execution. See [Examples
    #   of openCypher parameterized queries][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/opencypher-parameterized-queries.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteOpenCypherQueryInput AWS API Documentation
    #
    class ExecuteOpenCypherQueryInput < Struct.new(
      :open_cypher_query,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The openCypherquery results.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteOpenCypherQueryOutput AWS API Documentation
    #
    class ExecuteOpenCypherQueryOutput < Struct.new(
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a request attempts to access an stream that has expired.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExpiredStreamException AWS API Documentation
    #
    class ExpiredStreamException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a request fails.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/FailureByQueryException AWS API Documentation
    #
    class FailureByQueryException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the fast reset token used to initiate a fast
    # reset.
    #
    # @!attribute [rw] token
    #   A UUID generated by the database in the `initiateDatabaseReset`
    #   action, and then consumed by the `performDatabaseReset` to reset the
    #   database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/FastResetToken AWS API Documentation
    #
    class FastResetToken < Struct.new(
      :token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   Set to `healthy` if the instance is not experiencing problems. If
    #   the instance is recovering from a crash or from being rebooted and
    #   there are active transactions running from the latest server
    #   shutdown, status is set to `recovery`.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Set to the UTC time at which the current server process started.
    #   @return [String]
    #
    # @!attribute [rw] db_engine_version
    #   Set to the Neptune engine version running on your DB cluster. If
    #   this engine version has been manually patched since it was released,
    #   the version number is prefixed by `Patch-`.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   Set to `reader` if the instance is a read-replica, or to `writer` if
    #   the instance is the primary instance.
    #   @return [String]
    #
    # @!attribute [rw] dfe_query_engine
    #   Set to `enabled` if the DFE engine is fully enabled, or to
    #   `viaQueryHint` (the default) if the DFE engine is only used with
    #   queries that have the `useDFE` query hint set to `true`.
    #   @return [String]
    #
    # @!attribute [rw] gremlin
    #   Contains information about the Gremlin query language available on
    #   your cluster. Specifically, it contains a version field that
    #   specifies the current TinkerPop version being used by the engine.
    #   @return [Types::QueryLanguageVersion]
    #
    # @!attribute [rw] sparql
    #   Contains information about the SPARQL query language available on
    #   your cluster. Specifically, it contains a version field that
    #   specifies the current SPARQL version being used by the engine.
    #   @return [Types::QueryLanguageVersion]
    #
    # @!attribute [rw] opencypher
    #   Contains information about the openCypher query language available
    #   on your cluster. Specifically, it contains a version field that
    #   specifies the current operCypher version being used by the engine.
    #   @return [Types::QueryLanguageVersion]
    #
    # @!attribute [rw] lab_mode
    #   Contains Lab Mode settings being used by the engine.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] rolling_back_trx_count
    #   If there are transactions being rolled back, this field is set to
    #   the number of such transactions. If there are none, the field
    #   doesn't appear at all.
    #   @return [Integer]
    #
    # @!attribute [rw] rolling_back_trx_earliest_start_time
    #   Set to the start time of the earliest transaction being rolled back.
    #   If no transactions are being rolled back, the field doesn't appear
    #   at all.
    #   @return [String]
    #
    # @!attribute [rw] features
    #   Contains status information about the features enabled on your DB
    #   cluster.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] settings
    #   Contains information about the current settings on your DB cluster.
    #   For example, contains the current cluster query timeout setting
    #   (`clusterQueryTimeoutInMs`).
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetEngineStatusOutput AWS API Documentation
    #
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
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The unique identifier that identifies the Gremlin query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetGremlinQueryStatusInput AWS API Documentation
    #
    class GetGremlinQueryStatusInput < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The ID of the query for which status is being returned.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The Gremlin query string.
    #   @return [String]
    #
    # @!attribute [rw] query_eval_stats
    #   The evaluation status of the Gremlin query.
    #   @return [Types::QueryEvalStats]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetGremlinQueryStatusOutput AWS API Documentation
    #
    class GetGremlinQueryStatusOutput < Struct.new(
      :query_id,
      :query_string,
      :query_eval_stats)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_id
    #   The load ID of the load job to get the status of.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Flag indicating whether or not to include details beyond the overall
    #   status (`TRUE` or `FALSE`; the default is `FALSE`).
    #   @return [Boolean]
    #
    # @!attribute [rw] errors
    #   Flag indicating whether or not to include a list of errors
    #   encountered (`TRUE` or `FALSE`; the default is `FALSE`).
    #
    #   The list of errors is paged. The `page` and `errorsPerPage`
    #   parameters allow you to page through all the errors.
    #   @return [Boolean]
    #
    # @!attribute [rw] page
    #   The error page number (a positive integer; the default is `1`). Only
    #   valid when the `errors` parameter is set to `TRUE`.
    #   @return [Integer]
    #
    # @!attribute [rw] errors_per_page
    #   The number of errors returned in each page (a positive integer; the
    #   default is `10`). Only valid when the `errors` parameter set to
    #   `TRUE`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetLoaderJobStatusInput AWS API Documentation
    #
    class GetLoaderJobStatusInput < Struct.new(
      :load_id,
      :details,
      :errors,
      :page,
      :errors_per_page)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP response code for the request.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   Status information about the load job, in a layout that could look
    #   like this:
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetLoaderJobStatusOutput AWS API Documentation
    #
    class GetLoaderJobStatusOutput < Struct.new(
      :status,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the data-processing job to be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster
    #   parameter group or an error will occur.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetMLDataProcessingJobInput AWS API Documentation
    #
    class GetMLDataProcessingJobInput < Struct.new(
      :id,
      :neptune_iam_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   Status of the data processing job.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of this data-processing job.
    #   @return [String]
    #
    # @!attribute [rw] processing_job
    #   Definition of the data processing job.
    #   @return [Types::MlResourceDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetMLDataProcessingJobOutput AWS API Documentation
    #
    class GetMLDataProcessingJobOutput < Struct.new(
      :status,
      :id,
      :processing_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the inference endpoint.
    #   @return [String]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster
    #   parameter group or an error will occur.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetMLEndpointInput AWS API Documentation
    #
    class GetMLEndpointInput < Struct.new(
      :id,
      :neptune_iam_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the inference endpoint.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the inference endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint definition.
    #   @return [Types::MlResourceDefinition]
    #
    # @!attribute [rw] endpoint_config
    #   The endpoint configuration
    #   @return [Types::MlConfigDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetMLEndpointOutput AWS API Documentation
    #
    class GetMLEndpointOutput < Struct.new(
      :status,
      :id,
      :endpoint,
      :endpoint_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the model-training job to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster
    #   parameter group or an error will occur.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetMLModelTrainingJobInput AWS API Documentation
    #
    class GetMLModelTrainingJobInput < Struct.new(
      :id,
      :neptune_iam_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the model training job.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of this model-training job.
    #   @return [String]
    #
    # @!attribute [rw] processing_job
    #   The data processing job.
    #   @return [Types::MlResourceDefinition]
    #
    # @!attribute [rw] hpo_job
    #   The HPO job.
    #   @return [Types::MlResourceDefinition]
    #
    # @!attribute [rw] model_transform_job
    #   The model transform job.
    #   @return [Types::MlResourceDefinition]
    #
    # @!attribute [rw] ml_models
    #   A list of the configurations of the ML models being used.
    #   @return [Array<Types::MlConfigDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetMLModelTrainingJobOutput AWS API Documentation
    #
    class GetMLModelTrainingJobOutput < Struct.new(
      :status,
      :id,
      :processing_job,
      :hpo_job,
      :model_transform_job,
      :ml_models)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the model-transform job to be reetrieved.
    #   @return [String]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster
    #   parameter group or an error will occur.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetMLModelTransformJobInput AWS API Documentation
    #
    class GetMLModelTransformJobInput < Struct.new(
      :id,
      :neptune_iam_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the model-transform job.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the model-transform job to be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] base_processing_job
    #   The base data processing job.
    #   @return [Types::MlResourceDefinition]
    #
    # @!attribute [rw] remote_model_transform_job
    #   The remote model transform job.
    #   @return [Types::MlResourceDefinition]
    #
    # @!attribute [rw] models
    #   A list of the configuration information for the models being used.
    #   @return [Array<Types::MlConfigDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetMLModelTransformJobOutput AWS API Documentation
    #
    class GetMLModelTransformJobOutput < Struct.new(
      :status,
      :id,
      :base_processing_job,
      :remote_model_transform_job,
      :models)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The unique ID of the openCypher query for which to retrieve the
    #   query status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetOpenCypherQueryStatusInput AWS API Documentation
    #
    class GetOpenCypherQueryStatusInput < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The unique ID of the query for which status is being returned.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The openCypher query string.
    #   @return [String]
    #
    # @!attribute [rw] query_eval_stats
    #   The openCypher query evaluation status.
    #   @return [Types::QueryEvalStats]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetOpenCypherQueryStatusOutput AWS API Documentation
    #
    class GetOpenCypherQueryStatusOutput < Struct.new(
      :query_id,
      :query_string,
      :query_eval_stats)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP return code of the request. If the request succeeded, the
    #   code is 200. See [Common error codes for DFE statistics request][1]
    #   for a list of common errors.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/neptune-dfe-statistics.html#neptune-dfe-statistics-errors
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   Statistics for property-graph data.
    #   @return [Types::Statistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetPropertygraphStatisticsOutput AWS API Documentation
    #
    class GetPropertygraphStatisticsOutput < Struct.new(
      :status,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] limit
    #   Specifies the maximum number of records to return. There is also a
    #   size limit of 10 MB on the response that can't be modified and that
    #   takes precedence over the number of records specified in the `limit`
    #   parameter. The response does include a threshold-breaching record if
    #   the 10 MB limit was reached.
    #
    #   The range for `limit` is 1 to 100,000, with a default of 10.
    #   @return [Integer]
    #
    # @!attribute [rw] iterator_type
    #   Can be one of:
    #
    #   * `AT_SEQUENCE_NUMBER`   –   Indicates that reading should start
    #     from the event sequence number specified jointly by the
    #     `commitNum` and `opNum` parameters.
    #
    #   * `AFTER_SEQUENCE_NUMBER`   –   Indicates that reading should start
    #     right after the event sequence number specified jointly by the
    #     `commitNum` and `opNum` parameters.
    #
    #   * `TRIM_HORIZON`   –   Indicates that reading should start at the
    #     last untrimmed record in the system, which is the oldest unexpired
    #     (not yet deleted) record in the change-log stream.
    #
    #   * `LATEST`   –   Indicates that reading should start at the most
    #     recent record in the system, which is the latest unexpired (not
    #     yet deleted) record in the change-log stream.
    #   @return [String]
    #
    # @!attribute [rw] commit_num
    #   The commit number of the starting record to read from the change-log
    #   stream. This parameter is required when `iteratorType`
    #   is`AT_SEQUENCE_NUMBER` or `AFTER_SEQUENCE_NUMBER`, and ignored when
    #   `iteratorType` is `TRIM_HORIZON` or `LATEST`.
    #   @return [Integer]
    #
    # @!attribute [rw] op_num
    #   The operation sequence number within the specified commit to start
    #   reading from in the change-log stream data. The default is `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] encoding
    #   If set to TRUE, Neptune compresses the response using gzip encoding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetPropertygraphStreamInput AWS API Documentation
    #
    class GetPropertygraphStreamInput < Struct.new(
      :limit,
      :iterator_type,
      :commit_num,
      :op_num,
      :encoding)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] last_event_id
    #   Sequence identifier of the last change in the stream response.
    #
    #   An event ID is composed of two fields: a `commitNum`, which
    #   identifies a transaction that changed the graph, and an `opNum`,
    #   which identifies a specific operation within that transaction:
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_trx_timestamp_in_millis
    #   The time at which the commit for the transaction was requested, in
    #   milliseconds from the Unix epoch.
    #   @return [Integer]
    #
    # @!attribute [rw] format
    #   Serialization format for the change records being returned.
    #   Currently, the only supported value is `PG_JSON`.
    #   @return [String]
    #
    # @!attribute [rw] records
    #   An array of serialized change-log stream records included in the
    #   response.
    #   @return [Array<Types::PropertygraphRecord>]
    #
    # @!attribute [rw] total_records
    #   The total number of records in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetPropertygraphStreamOutput AWS API Documentation
    #
    class GetPropertygraphStreamOutput < Struct.new(
      :last_event_id,
      :last_trx_timestamp_in_millis,
      :format,
      :records,
      :total_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mode
    #   Mode can take one of two values: `BASIC` (the default), and
    #   `DETAILED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetPropertygraphSummaryInput AWS API Documentation
    #
    class GetPropertygraphSummaryInput < Struct.new(
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   The HTTP return code of the request. If the request succeeded, the
    #   code is 200.
    #   @return [Integer]
    #
    # @!attribute [rw] payload
    #   Payload containing the property graph summary response.
    #   @return [Types::PropertygraphSummaryValueMap]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetPropertygraphSummaryOutput AWS API Documentation
    #
    class GetPropertygraphSummaryOutput < Struct.new(
      :status_code,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mode
    #   Mode can take one of two values: `BASIC` (the default), and
    #   `DETAILED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetRDFGraphSummaryInput AWS API Documentation
    #
    class GetRDFGraphSummaryInput < Struct.new(
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   The HTTP return code of the request. If the request succeeded, the
    #   code is 200.
    #   @return [Integer]
    #
    # @!attribute [rw] payload
    #   Payload for an RDF graph summary response
    #   @return [Types::RDFGraphSummaryValueMap]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetRDFGraphSummaryOutput AWS API Documentation
    #
    class GetRDFGraphSummaryOutput < Struct.new(
      :status_code,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP return code of the request. If the request succeeded, the
    #   code is 200. See [Common error codes for DFE statistics request][1]
    #   for a list of common errors.
    #
    #   When invoking this operation in a Neptune cluster that has IAM
    #   authentication enabled, the IAM user or role making the request must
    #   have a policy attached that allows the
    #   [neptune-db:GetStatisticsStatus][2] IAM action in that cluster.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/neptune-dfe-statistics.html#neptune-dfe-statistics-errors
    #   [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstatisticsstatus
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   Statistics for RDF data.
    #   @return [Types::Statistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetSparqlStatisticsOutput AWS API Documentation
    #
    class GetSparqlStatisticsOutput < Struct.new(
      :status,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] limit
    #   Specifies the maximum number of records to return. There is also a
    #   size limit of 10 MB on the response that can't be modified and that
    #   takes precedence over the number of records specified in the `limit`
    #   parameter. The response does include a threshold-breaching record if
    #   the 10 MB limit was reached.
    #
    #   The range for `limit` is 1 to 100,000, with a default of 10.
    #   @return [Integer]
    #
    # @!attribute [rw] iterator_type
    #   Can be one of:
    #
    #   * `AT_SEQUENCE_NUMBER`   –   Indicates that reading should start
    #     from the event sequence number specified jointly by the
    #     `commitNum` and `opNum` parameters.
    #
    #   * `AFTER_SEQUENCE_NUMBER`   –   Indicates that reading should start
    #     right after the event sequence number specified jointly by the
    #     `commitNum` and `opNum` parameters.
    #
    #   * `TRIM_HORIZON`   –   Indicates that reading should start at the
    #     last untrimmed record in the system, which is the oldest unexpired
    #     (not yet deleted) record in the change-log stream.
    #
    #   * `LATEST`   –   Indicates that reading should start at the most
    #     recent record in the system, which is the latest unexpired (not
    #     yet deleted) record in the change-log stream.
    #   @return [String]
    #
    # @!attribute [rw] commit_num
    #   The commit number of the starting record to read from the change-log
    #   stream. This parameter is required when `iteratorType`
    #   is`AT_SEQUENCE_NUMBER` or `AFTER_SEQUENCE_NUMBER`, and ignored when
    #   `iteratorType` is `TRIM_HORIZON` or `LATEST`.
    #   @return [Integer]
    #
    # @!attribute [rw] op_num
    #   The operation sequence number within the specified commit to start
    #   reading from in the change-log stream data. The default is `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] encoding
    #   If set to TRUE, Neptune compresses the response using gzip encoding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetSparqlStreamInput AWS API Documentation
    #
    class GetSparqlStreamInput < Struct.new(
      :limit,
      :iterator_type,
      :commit_num,
      :op_num,
      :encoding)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] last_event_id
    #   Sequence identifier of the last change in the stream response.
    #
    #   An event ID is composed of two fields: a `commitNum`, which
    #   identifies a transaction that changed the graph, and an `opNum`,
    #   which identifies a specific operation within that transaction:
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_trx_timestamp_in_millis
    #   The time at which the commit for the transaction was requested, in
    #   milliseconds from the Unix epoch.
    #   @return [Integer]
    #
    # @!attribute [rw] format
    #   Serialization format for the change records being returned.
    #   Currently, the only supported value is `NQUADS`.
    #   @return [String]
    #
    # @!attribute [rw] records
    #   An array of serialized change-log stream records included in the
    #   response.
    #   @return [Array<Types::SparqlRecord>]
    #
    # @!attribute [rw] total_records
    #   The total number of records in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetSparqlStreamOutput AWS API Documentation
    #
    class GetSparqlStreamOutput < Struct.new(
      :last_event_id,
      :last_trx_timestamp_in_millis,
      :format,
      :records,
      :total_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # Captures the status of a Gremlin query (see the [Gremlin query status
    # API][1] page).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-api-status.html
    #
    # @!attribute [rw] query_id
    #   The ID of the Gremlin query.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The query string of the Gremlin query.
    #   @return [String]
    #
    # @!attribute [rw] query_eval_stats
    #   The query statistics of the Gremlin query.
    #   @return [Types::QueryEvalStats]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GremlinQueryStatus AWS API Documentation
    #
    class GremlinQueryStatus < Struct.new(
      :query_id,
      :query_string,
      :query_eval_stats)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains status components of a Gremlin query.
    #
    # @!attribute [rw] message
    #   The status message.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP response code returned fro the Gremlin query request..
    #   @return [Integer]
    #
    # @!attribute [rw] attributes
    #   Attributes of the Gremlin query status.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GremlinQueryStatusAttributes AWS API Documentation
    #
    class GremlinQueryStatusAttributes < Struct.new(
      :message,
      :code,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when an argument in a request is not supported.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/IllegalArgumentException AWS API Documentation
    #
    class IllegalArgumentException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when the processing of the request failed unexpectedly.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/InternalFailureException AWS API Documentation
    #
    class InternalFailureException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when an argument in a request has an invalid value.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/InvalidArgumentException AWS API Documentation
    #
    class InvalidArgumentException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when invalid numerical data is encountered when servicing a
    # request.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/InvalidNumericDataException AWS API Documentation
    #
    class InvalidNumericDataException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a parameter value is not valid.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request that includes an invalid parameter.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] include_waiting
    #   If set to `TRUE`, the list returned includes waiting queries. The
    #   default is `FALSE`;
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListGremlinQueriesInput AWS API Documentation
    #
    class ListGremlinQueriesInput < Struct.new(
      :include_waiting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accepted_query_count
    #   The number of queries that have been accepted but not yet completed,
    #   including queries in the queue.
    #   @return [Integer]
    #
    # @!attribute [rw] running_query_count
    #   The number of Gremlin queries currently running.
    #   @return [Integer]
    #
    # @!attribute [rw] queries
    #   A list of the current queries.
    #   @return [Array<Types::GremlinQueryStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListGremlinQueriesOutput AWS API Documentation
    #
    class ListGremlinQueriesOutput < Struct.new(
      :accepted_query_count,
      :running_query_count,
      :queries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] limit
    #   The number of load IDs to list. Must be a positive integer greater
    #   than zero and not more than `100` (which is the default).
    #   @return [Integer]
    #
    # @!attribute [rw] include_queued_loads
    #   An optional parameter that can be used to exclude the load IDs of
    #   queued load requests when requesting a list of load IDs by setting
    #   the parameter to `FALSE`. The default value is `TRUE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListLoaderJobsInput AWS API Documentation
    #
    class ListLoaderJobsInput < Struct.new(
      :limit,
      :include_queued_loads)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   Returns the status of the job list request.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The requested list of job IDs.
    #   @return [Types::LoaderIdResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListLoaderJobsOutput AWS API Documentation
    #
    class ListLoaderJobsOutput < Struct.new(
      :status,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_items
    #   The maximum number of items to return (from 1 to 1024; the default
    #   is 10).
    #   @return [Integer]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster
    #   parameter group or an error will occur.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListMLDataProcessingJobsInput AWS API Documentation
    #
    class ListMLDataProcessingJobsInput < Struct.new(
      :max_items,
      :neptune_iam_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ids
    #   A page listing data processing job IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListMLDataProcessingJobsOutput AWS API Documentation
    #
    class ListMLDataProcessingJobsOutput < Struct.new(
      :ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_items
    #   The maximum number of items to return (from 1 to 1024; the default
    #   is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster
    #   parameter group or an error will occur.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListMLEndpointsInput AWS API Documentation
    #
    class ListMLEndpointsInput < Struct.new(
      :max_items,
      :neptune_iam_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ids
    #   A page from the list of inference endpoint IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListMLEndpointsOutput AWS API Documentation
    #
    class ListMLEndpointsOutput < Struct.new(
      :ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_items
    #   The maximum number of items to return (from 1 to 1024; the default
    #   is 10).
    #   @return [Integer]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster
    #   parameter group or an error will occur.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListMLModelTrainingJobsInput AWS API Documentation
    #
    class ListMLModelTrainingJobsInput < Struct.new(
      :max_items,
      :neptune_iam_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ids
    #   A page of the list of model training job IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListMLModelTrainingJobsOutput AWS API Documentation
    #
    class ListMLModelTrainingJobsOutput < Struct.new(
      :ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_items
    #   The maximum number of items to return (from 1 to 1024; the default
    #   is 10).
    #   @return [Integer]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster
    #   parameter group or an error will occur.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListMLModelTransformJobsInput AWS API Documentation
    #
    class ListMLModelTransformJobsInput < Struct.new(
      :max_items,
      :neptune_iam_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ids
    #   A page from the list of model transform IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListMLModelTransformJobsOutput AWS API Documentation
    #
    class ListMLModelTransformJobsOutput < Struct.new(
      :ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] include_waiting
    #   When set to `TRUE` and other parameters are not present, causes
    #   status information to be returned for waiting queries as well as for
    #   running queries.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListOpenCypherQueriesInput AWS API Documentation
    #
    class ListOpenCypherQueriesInput < Struct.new(
      :include_waiting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accepted_query_count
    #   The number of queries that have been accepted but not yet completed,
    #   including queries in the queue.
    #   @return [Integer]
    #
    # @!attribute [rw] running_query_count
    #   The number of currently running openCypher queries.
    #   @return [Integer]
    #
    # @!attribute [rw] queries
    #   A list of current openCypher queries.
    #   @return [Array<Types::GremlinQueryStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListOpenCypherQueriesOutput AWS API Documentation
    #
    class ListOpenCypherQueriesOutput < Struct.new(
      :accepted_query_count,
      :running_query_count,
      :queries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when access is denied to a specified load URL.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/LoadUrlAccessDeniedException AWS API Documentation
    #
    class LoadUrlAccessDeniedException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a list of load IDs.
    #
    # @!attribute [rw] load_ids
    #   A list of load IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/LoaderIdResult AWS API Documentation
    #
    class LoaderIdResult < Struct.new(
      :load_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a specified machine-learning resource could not be found.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/MLResourceNotFoundException AWS API Documentation
    #
    class MLResourceNotFoundException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a query is submitted that is syntactically incorrect or
    # does not pass additional validation.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the malformed query request.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/MalformedQueryException AWS API Documentation
    #
    class MalformedQueryException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mode
    #   The statistics generation mode. One of: `DISABLE_AUTOCOMPUTE`,
    #   `ENABLE_AUTOCOMPUTE`, or `REFRESH`, the last of which manually
    #   triggers DFE statistics generation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ManagePropertygraphStatisticsInput AWS API Documentation
    #
    class ManagePropertygraphStatisticsInput < Struct.new(
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP return code of the request. If the request succeeded, the
    #   code is 200.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   This is only returned for refresh mode.
    #   @return [Types::RefreshStatisticsIdMap]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ManagePropertygraphStatisticsOutput AWS API Documentation
    #
    class ManagePropertygraphStatisticsOutput < Struct.new(
      :status,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mode
    #   The statistics generation mode. One of: `DISABLE_AUTOCOMPUTE`,
    #   `ENABLE_AUTOCOMPUTE`, or `REFRESH`, the last of which manually
    #   triggers DFE statistics generation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ManageSparqlStatisticsInput AWS API Documentation
    #
    class ManageSparqlStatisticsInput < Struct.new(
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP return code of the request. If the request succeeded, the
    #   code is 200.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   This is only returned for refresh mode.
    #   @return [Types::RefreshStatisticsIdMap]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ManageSparqlStatisticsOutput AWS API Documentation
    #
    class ManageSparqlStatisticsOutput < Struct.new(
      :status,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a request fails because of insufficient memory resources.
    # The request can be retried.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request that failed.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/MemoryLimitExceededException AWS API Documentation
    #
    class MemoryLimitExceededException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when the HTTP method used by a request is not supported by the
    # endpoint being used.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/MethodNotAllowedException AWS API Documentation
    #
    class MethodNotAllowedException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a required parameter is missing.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in which the parameter is missing.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/MissingParameterException AWS API Documentation
    #
    class MissingParameterException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a Neptune ML configuration.
    #
    # @!attribute [rw] name
    #   The configuration name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN for the configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/MlConfigDefinition AWS API Documentation
    #
    class MlConfigDefinition < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a Neptune ML resource.
    #
    # @!attribute [rw] name
    #   The resource name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The resource status.
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   The output location.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The failure reason, in case of a failure.
    #   @return [String]
    #
    # @!attribute [rw] cloudwatch_log_url
    #   The CloudWatch log URL for the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/MlResourceDefinition AWS API Documentation
    #
    class MlResourceDefinition < Struct.new(
      :name,
      :arn,
      :status,
      :output_location,
      :failure_reason,
      :cloudwatch_log_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A node structure.
    #
    # @!attribute [rw] count
    #   Number of nodes that have this specific structure.
    #   @return [Integer]
    #
    # @!attribute [rw] node_properties
    #   A list of the node properties present in this specific structure.
    #   @return [Array<String>]
    #
    # @!attribute [rw] distinct_outgoing_edge_labels
    #   A list of distinct outgoing edge labels present in this specific
    #   structure.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/NodeStructure AWS API Documentation
    #
    class NodeStructure < Struct.new(
      :count,
      :node_properties,
      :distinct_outgoing_edge_labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a parsing issue is encountered.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ParsingException AWS API Documentation
    #
    class ParsingException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a precondition for processing a request is not satisfied.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/PreconditionsFailedException AWS API Documentation
    #
    class PreconditionsFailedException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Gremlin or openCypher change record.
    #
    # @!attribute [rw] id
    #   The ID of the Gremlin or openCypher element.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of this Gremlin or openCypher element. Must be one of:
    #
    #   * <b> <code>v1</code> </b>   -   Vertex label for Gremlin, or node
    #     label for openCypher.
    #
    #   * <b> <code>vp</code> </b>   -   Vertex properties for Gremlin, or
    #     node properties for openCypher.
    #
    #   * <b> <code>e</code> </b>   -   Edge and edge label for Gremlin, or
    #     relationship and relationship type for openCypher.
    #
    #   * <b> <code>ep</code> </b>   -   Edge properties for Gremlin, or
    #     relationship properties for openCypher.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The property name. For element labels, this is `label`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   This is a JSON object that contains a value field for the value
    #   itself, and a datatype field for the JSON data type of that value:
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] from
    #   If this is an edge (type = `e`), the ID of the corresponding `from`
    #   vertex or source node.
    #   @return [String]
    #
    # @!attribute [rw] to
    #   If this is an edge (type = `e`), the ID of the corresponding `to`
    #   vertex or target node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/PropertygraphData AWS API Documentation
    #
    class PropertygraphData < Struct.new(
      :id,
      :type,
      :key,
      :value,
      :from,
      :to)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure of a property graph record.
    #
    # @!attribute [rw] commit_timestamp_in_millis
    #   The time at which the commit for the transaction was requested, in
    #   milliseconds from the Unix epoch.
    #   @return [Integer]
    #
    # @!attribute [rw] event_id
    #   The sequence identifier of the stream change record.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] data
    #   The serialized Gremlin or openCypher change record.
    #   @return [Types::PropertygraphData]
    #
    # @!attribute [rw] op
    #   The operation that created the change.
    #   @return [String]
    #
    # @!attribute [rw] is_last_op
    #   Only present if this operation is the last one in its transaction.
    #   If present, it is set to true. It is useful for ensuring that an
    #   entire transaction is consumed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/PropertygraphRecord AWS API Documentation
    #
    class PropertygraphRecord < Struct.new(
      :commit_timestamp_in_millis,
      :event_id,
      :data,
      :op,
      :is_last_op)
      SENSITIVE = []
      include Aws::Structure
    end

    # The graph summary API returns a read-only list of node and edge labels
    # and property keys, along with counts of nodes, edges, and properties.
    # See [Graph summary response for a property graph (PG)][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/neptune-graph-summary.html#neptune-graph-summary-pg-response
    #
    # @!attribute [rw] num_nodes
    #   The number of nodes in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] num_edges
    #   The number of edges in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] num_node_labels
    #   The number of distinct node labels in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] num_edge_labels
    #   The number of distinct edge labels in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] node_labels
    #   A list of the distinct node labels in the graph.
    #   @return [Array<String>]
    #
    # @!attribute [rw] edge_labels
    #   A list of the distinct edge labels in the graph.
    #   @return [Array<String>]
    #
    # @!attribute [rw] num_node_properties
    #   A list of the distinct node properties in the graph, along with the
    #   count of nodes where each property is used.
    #   @return [Integer]
    #
    # @!attribute [rw] num_edge_properties
    #   The number of distinct edge properties in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] node_properties
    #   The number of distinct node properties in the graph.
    #   @return [Array<Hash<String,Integer>>]
    #
    # @!attribute [rw] edge_properties
    #   A list of the distinct edge properties in the graph, along with the
    #   count of edges where each property is used.
    #   @return [Array<Hash<String,Integer>>]
    #
    # @!attribute [rw] total_node_property_values
    #   The total number of usages of all node properties.
    #   @return [Integer]
    #
    # @!attribute [rw] total_edge_property_values
    #   The total number of usages of all edge properties.
    #   @return [Integer]
    #
    # @!attribute [rw] node_structures
    #   This field is only present when the requested mode is `DETAILED`. It
    #   contains a list of node structures.
    #   @return [Array<Types::NodeStructure>]
    #
    # @!attribute [rw] edge_structures
    #   This field is only present when the requested mode is `DETAILED`. It
    #   contains a list of edge structures.
    #   @return [Array<Types::EdgeStructure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/PropertygraphSummary AWS API Documentation
    #
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
      :edge_structures)
      SENSITIVE = []
      include Aws::Structure
    end

    # Payload for the property graph summary response.
    #
    # @!attribute [rw] version
    #   The version of this graph summary response.
    #   @return [String]
    #
    # @!attribute [rw] last_statistics_computation_time
    #   The timestamp, in ISO 8601 format, of the time at which Neptune last
    #   computed statistics.
    #   @return [Time]
    #
    # @!attribute [rw] graph_summary
    #   The graph summary.
    #   @return [Types::PropertygraphSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/PropertygraphSummaryValueMap AWS API Documentation
    #
    class PropertygraphSummaryValueMap < Struct.new(
      :version,
      :last_statistics_computation_time,
      :graph_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure to capture query statistics such as how many queries are
    # running, accepted or waiting and their details.
    #
    # @!attribute [rw] waited
    #   Indicates how long the query waited, in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] elapsed
    #   The number of milliseconds the query has been running so far.
    #   @return [Integer]
    #
    # @!attribute [rw] cancelled
    #   Set to `TRUE` if the query was cancelled, or FALSE otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] subqueries
    #   The number of subqueries in this query.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/QueryEvalStats AWS API Documentation
    #
    class QueryEvalStats < Struct.new(
      :waited,
      :elapsed,
      :cancelled,
      :subqueries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure for expressing the query language version.
    #
    # @!attribute [rw] version
    #   The version of the query language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/QueryLanguageVersion AWS API Documentation
    #
    class QueryLanguageVersion < Struct.new(
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when the number of active queries exceeds what the server can
    # process. The query in question can be retried when the system is less
    # busy.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request which exceeded the limit.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/QueryLimitExceededException AWS API Documentation
    #
    class QueryLimitExceededException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when the size of a query exceeds the system limit.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request that exceeded the limit.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/QueryLimitException AWS API Documentation
    #
    class QueryLimitException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when the body of a query is too large.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request that is too large.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/QueryTooLargeException AWS API Documentation
    #
    class QueryTooLargeException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The RDF graph summary API returns a read-only list of classes and
    # predicate keys, along with counts of quads, subjects, and predicates.
    #
    # @!attribute [rw] num_distinct_subjects
    #   The number of distinct subjects in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] num_distinct_predicates
    #   The number of distinct predicates in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] num_quads
    #   The number of quads in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] num_classes
    #   The number of classes in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] classes
    #   A list of the classes in the graph.
    #   @return [Array<String>]
    #
    # @!attribute [rw] predicates
    #   "A list of predicates in the graph, along with the predicate
    #   counts.
    #   @return [Array<Hash<String,Integer>>]
    #
    # @!attribute [rw] subject_structures
    #   This field is only present when the request mode is `DETAILED`. It
    #   contains a list of subject structures.
    #   @return [Array<Types::SubjectStructure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/RDFGraphSummary AWS API Documentation
    #
    class RDFGraphSummary < Struct.new(
      :num_distinct_subjects,
      :num_distinct_predicates,
      :num_quads,
      :num_classes,
      :classes,
      :predicates,
      :subject_structures)
      SENSITIVE = []
      include Aws::Structure
    end

    # Payload for an RDF graph summary response.
    #
    # @!attribute [rw] version
    #   The version of this graph summary response.
    #   @return [String]
    #
    # @!attribute [rw] last_statistics_computation_time
    #   The timestamp, in ISO 8601 format, of the time at which Neptune last
    #   computed statistics.
    #   @return [Time]
    #
    # @!attribute [rw] graph_summary
    #   The graph summary of an RDF graph. See [Graph summary response for
    #   an RDF graph][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/neptune-graph-summary.html#neptune-graph-summary-rdf-response
    #   @return [Types::RDFGraphSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/RDFGraphSummaryValueMap AWS API Documentation
    #
    class RDFGraphSummaryValueMap < Struct.new(
      :version,
      :last_statistics_computation_time,
      :graph_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a request attempts to write to a read-only resource.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in which the parameter is missing.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ReadOnlyViolationException AWS API Documentation
    #
    class ReadOnlyViolationException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistics for `REFRESH` mode.
    #
    # @!attribute [rw] statistics_id
    #   The ID of the statistics generation run that is currently occurring.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/RefreshStatisticsIdMap AWS API Documentation
    #
    class RefreshStatisticsIdMap < Struct.new(
      :statistics_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when there is a problem accessing Amazon S3.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/S3Exception AWS API Documentation
    #
    class S3Exception < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when the server shuts down while processing a request.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ServerShutdownException AWS API Documentation
    #
    class ServerShutdownException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Neptune logs are converted to SPARQL quads in the graph using the
    # Resource Description Framework (RDF) [N-QUADS][1] language defined in
    # the W3C RDF 1.1 N-Quads specification
    #
    #
    #
    # [1]: https://www.w3.org/TR/n-quads/
    #
    # @!attribute [rw] stmt
    #   Holds an [N-QUADS][1] statement expressing the changed quad.
    #
    #
    #
    #   [1]: https://www.w3.org/TR/n-quads/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/SparqlData AWS API Documentation
    #
    class SparqlData < Struct.new(
      :stmt)
      SENSITIVE = []
      include Aws::Structure
    end

    # A serialized SPARQL stream record capturing a change-log entry for the
    # RDF graph.
    #
    # @!attribute [rw] commit_timestamp_in_millis
    #   The time at which the commit for the transaction was requested, in
    #   milliseconds from the Unix epoch.
    #   @return [Integer]
    #
    # @!attribute [rw] event_id
    #   The sequence identifier of the stream change record.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] data
    #   The serialized SPARQL change record. The serialization formats of
    #   each record are described in more detail in [Serialization Formats
    #   in Neptune Streams][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/streams-change-formats.html
    #   @return [Types::SparqlData]
    #
    # @!attribute [rw] op
    #   The operation that created the change.
    #   @return [String]
    #
    # @!attribute [rw] is_last_op
    #   Only present if this operation is the last one in its transaction.
    #   If present, it is set to true. It is useful for ensuring that an
    #   entire transaction is consumed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/SparqlRecord AWS API Documentation
    #
    class SparqlRecord < Struct.new(
      :commit_timestamp_in_millis,
      :event_id,
      :data,
      :op,
      :is_last_op)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source
    #   The `source` parameter accepts an S3 URI that identifies a single
    #   file, multiple files, a folder, or multiple folders. Neptune loads
    #   every data file in any folder that is specified.
    #
    #   The URI can be in any of the following formats.
    #
    #   * `s3://(bucket_name)/(object-key-name)`
    #
    #   * `https://s3.amazonaws.com/(bucket_name)/(object-key-name)`
    #
    #   * `https://s3.us-east-1.amazonaws.com/(bucket_name)/(object-key-name)`
    #
    #   The `object-key-name` element of the URI is equivalent to the
    #   [prefix][1] parameter in an S3 [ListObjects][2] API call. It
    #   identifies all the objects in the specified S3 bucket whose names
    #   begin with that prefix. That can be a single file or folder, or
    #   multiple files and/or folders.
    #
    #   The specified folder or folders can contain multiple vertex files
    #   and multiple edge files.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html#API_ListObjects_RequestParameters
    #   [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the data. For more information about data formats for
    #   the Neptune `Loader` command, see [Load Data Formats][1].
    #
    #   **Allowed values**
    #
    #   * <b> <code>csv</code> </b> for the [Gremlin CSV data format][2].
    #
    #   * <b> <code>opencypher</code> </b> for the [openCypher CSV data
    #     format][3].
    #
    #   * <b> <code>ntriples</code> </b> for the [N-Triples RDF data
    #     format][4].
    #
    #   * <b> <code>nquads</code> </b> for the [N-Quads RDF data format][5].
    #
    #   * <b> <code>rdfxml</code> </b> for the [RDF\\XML RDF data
    #     format][6].
    #
    #   * <b> <code>turtle</code> </b> for the [Turtle RDF data format][7].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format.html
    #   [2]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html
    #   [3]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html
    #   [4]: https://www.w3.org/TR/n-triples/
    #   [5]: https://www.w3.org/TR/n-quads/
    #   [6]: https://www.w3.org/TR/rdf-syntax-grammar/
    #   [7]: https://www.w3.org/TR/turtle/
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_region
    #   The Amazon region of the S3 bucket. This must match the Amazon
    #   Region of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) for an IAM role to be assumed by the
    #   Neptune DB instance for access to the S3 bucket. The IAM role ARN
    #   provided here should be attached to the DB cluster (see [Adding the
    #   IAM Role to an Amazon Neptune Cluster][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-IAM-add-role-cluster.html
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The load job mode.
    #
    #   *Allowed values*: `RESUME`, `NEW`, `AUTO`.
    #
    #   *Default value*: `AUTO`.
    #
    #   ****
    #
    #   * `RESUME`   –   In RESUME mode, the loader looks for a previous
    #     load from this source, and if it finds one, resumes that load job.
    #     If no previous load job is found, the loader stops.
    #
    #     The loader avoids reloading files that were successfully loaded in
    #     a previous job. It only tries to process failed files. If you
    #     dropped previously loaded data from your Neptune cluster, that
    #     data is not reloaded in this mode. If a previous load job loaded
    #     all files from the same source successfully, nothing is reloaded,
    #     and the loader returns success.
    #
    #   * `NEW`   –   In NEW mode, the creates a new load request regardless
    #     of any previous loads. You can use this mode to reload all the
    #     data from a source after dropping previously loaded data from your
    #     Neptune cluster, or to load new data available at the same source.
    #
    #   * `AUTO`   –   In AUTO mode, the loader looks for a previous load
    #     job from the same source, and if it finds one, resumes that job,
    #     just as in `RESUME` mode.
    #
    #     If the loader doesn't find a previous load job from the same
    #     source, it loads all data from the source, just as in `NEW` mode.
    #   @return [String]
    #
    # @!attribute [rw] fail_on_error
    #   <b> <code>failOnError</code> </b>   –   A flag to toggle a complete
    #   stop on an error.
    #
    #   *Allowed values*: `"TRUE"`, `"FALSE"`.
    #
    #   *Default value*: `"TRUE"`.
    #
    #   When this parameter is set to `"FALSE"`, the loader tries to load
    #   all the data in the location specified, skipping any entries with
    #   errors.
    #
    #   When this parameter is set to `"TRUE"`, the loader stops as soon as
    #   it encounters an error. Data loaded up to that point persists.
    #   @return [Boolean]
    #
    # @!attribute [rw] parallelism
    #   The optional `parallelism` parameter can be set to reduce the number
    #   of threads used by the bulk load process.
    #
    #   *Allowed values*:
    #
    #   * `LOW` –   The number of threads used is the number of available
    #     vCPUs divided by 8.
    #
    #   * `MEDIUM` –   The number of threads used is the number of available
    #     vCPUs divided by 2.
    #
    #   * `HIGH` –   The number of threads used is the same as the number of
    #     available vCPUs.
    #
    #   * `OVERSUBSCRIBE` –   The number of threads used is the number of
    #     available vCPUs multiplied by 2. If this value is used, the bulk
    #     loader takes up all available resources.
    #
    #     This does not mean, however, that the `OVERSUBSCRIBE` setting
    #     results in 100% CPU utilization. Because the load operation is I/O
    #     bound, the highest CPU utilization to expect is in the 60% to 70%
    #     range.
    #
    #   *Default value*: `HIGH`
    #
    #   The `parallelism` setting can sometimes result in a deadlock between
    #   threads when loading openCypher data. When this happens, Neptune
    #   returns the `LOAD_DATA_DEADLOCK` error. You can generally fix the
    #   issue by setting `parallelism` to a lower setting and retrying the
    #   load command.
    #   @return [String]
    #
    # @!attribute [rw] parser_configuration
    #   <b> <code>parserConfiguration</code> </b>   –   An optional object
    #   with additional parser configuration values. Each of the child
    #   parameters is also optional:
    #
    #   ****
    #
    #   * <b> <code>namedGraphUri</code> </b>   –   The default graph for
    #     all RDF formats when no graph is specified (for non-quads formats
    #     and NQUAD entries with no graph).
    #
    #     The default is
    #     `https://aws.amazon.com/neptune/vocab/v01/DefaultNamedGraph`.
    #
    #   * <b> <code>baseUri</code> </b>   –   The base URI for RDF/XML and
    #     Turtle formats.
    #
    #     The default is `https://aws.amazon.com/neptune/default`.
    #
    #   * <b> <code>allowEmptyStrings</code> </b>   –   Gremlin users need
    #     to be able to pass empty string values("") as node and edge
    #     properties when loading CSV data. If `allowEmptyStrings` is set to
    #     `false` (the default), such empty strings are treated as nulls and
    #     are not loaded.
    #
    #     If `allowEmptyStrings` is set to `true`, the loader treats empty
    #     strings as valid property values and loads them accordingly.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_single_cardinality_properties
    #   `updateSingleCardinalityProperties` is an optional parameter that
    #   controls how the bulk loader treats a new value for
    #   single-cardinality vertex or edge properties. This is not supported
    #   for loading openCypher data.
    #
    #   *Allowed values*: `"TRUE"`, `"FALSE"`.
    #
    #   *Default value*: `"FALSE"`.
    #
    #   By default, or when `updateSingleCardinalityProperties` is
    #   explicitly set to `"FALSE"`, the loader treats a new value as an
    #   error, because it violates single cardinality.
    #
    #   When `updateSingleCardinalityProperties` is set to `"TRUE"`, on the
    #   other hand, the bulk loader replaces the existing value with the new
    #   one. If multiple edge or single-cardinality vertex property values
    #   are provided in the source file(s) being loaded, the final value at
    #   the end of the bulk load could be any one of those new values. The
    #   loader only guarantees that the existing value has been replaced by
    #   one of the new ones.
    #   @return [Boolean]
    #
    # @!attribute [rw] queue_request
    #   This is an optional flag parameter that indicates whether the load
    #   request can be queued up or not.
    #
    #   You don't have to wait for one load job to complete before issuing
    #   the next one, because Neptune can queue up as many as 64 jobs at a
    #   time, provided that their `queueRequest` parameters are all set to
    #   `"TRUE"`. The queue order of the jobs will be first-in-first-out
    #   (FIFO).
    #
    #   If the `queueRequest` parameter is omitted or set to `"FALSE"`, the
    #   load request will fail if another load job is already running.
    #
    #   *Allowed values*: `"TRUE"`, `"FALSE"`.
    #
    #   *Default value*: `"FALSE"`.
    #   @return [Boolean]
    #
    # @!attribute [rw] dependencies
    #   This is an optional parameter that can make a queued load request
    #   contingent on the successful completion of one or more previous jobs
    #   in the queue.
    #
    #   Neptune can queue up as many as 64 load requests at a time, if their
    #   `queueRequest` parameters are set to `"TRUE"`. The `dependencies`
    #   parameter lets you make execution of such a queued request dependent
    #   on the successful completion of one or more specified previous
    #   requests in the queue.
    #
    #   For example, if load `Job-A` and `Job-B` are independent of each
    #   other, but load `Job-C` needs `Job-A` and `Job-B` to be finished
    #   before it begins, proceed as follows:
    #
    #   1.  Submit `load-job-A` and `load-job-B` one after another in any
    #       order, and save their load-ids.
    #
    #   2.  Submit `load-job-C` with the load-ids of the two jobs in its
    #       `dependencies` field:
    #
    #   Because of the `dependencies` parameter, the bulk loader will not
    #   start `Job-C` until `Job-A` and `Job-B` have completed successfully.
    #   If either one of them fails, Job-C will not be executed, and its
    #   status will be set to
    #   `LOAD_FAILED_BECAUSE_DEPENDENCY_NOT_SATISFIED`.
    #
    #   You can set up multiple levels of dependency in this way, so that
    #   the failure of one job will cause all requests that are directly or
    #   indirectly dependent on it to be cancelled.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_provided_edge_ids
    #   This parameter is required only when loading openCypher data that
    #   contains relationship IDs. It must be included and set to `True`
    #   when openCypher relationship IDs are explicitly provided in the load
    #   data (recommended).
    #
    #   When `userProvidedEdgeIds` is absent or set to `True`, an `:ID`
    #   column must be present in every relationship file in the load.
    #
    #   When `userProvidedEdgeIds` is present and set to `False`,
    #   relationship files in the load **must not** contain an `:ID` column.
    #   Instead, the Neptune loader automatically generates an ID for each
    #   relationship.
    #
    #   It's useful to provide relationship IDs explicitly so that the
    #   loader can resume loading after error in the CSV data have been
    #   fixed, without having to reload any relationships that have already
    #   been loaded. If relationship IDs have not been explicitly assigned,
    #   the loader cannot resume a failed load if any relationship file has
    #   had to be corrected, and must instead reload all the relationships.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/StartLoaderJobInput AWS API Documentation
    #
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
      :user_provided_edge_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP return code indicating the status of the load job.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   Contains a `loadId` name-value pair that provides an identifier for
    #   the load operation.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/StartLoaderJobOutput AWS API Documentation
    #
    class StartLoaderJobOutput < Struct.new(
      :status,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   A unique identifier for the new job. The default is an autogenerated
    #   UUID.
    #   @return [String]
    #
    # @!attribute [rw] previous_data_processing_job_id
    #   The job ID of a completed data processing job run on an earlier
    #   version of the data.
    #   @return [String]
    #
    # @!attribute [rw] input_data_s3_location
    #   The URI of the Amazon S3 location where you want SageMaker to
    #   download the data needed to run the data processing job.
    #   @return [String]
    #
    # @!attribute [rw] processed_data_s3_location
    #   The URI of the Amazon S3 location where you want SageMaker to save
    #   the results of a data processing job.
    #   @return [String]
    #
    # @!attribute [rw] sagemaker_iam_role_arn
    #   The ARN of an IAM role for SageMaker execution. This must be listed
    #   in your DB cluster parameter group or an error will occur.
    #   @return [String]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that SageMaker can
    #   assume to perform tasks on your behalf. This must be listed in your
    #   DB cluster parameter group or an error will occur.
    #   @return [String]
    #
    # @!attribute [rw] processing_instance_type
    #   The type of ML instance used during data processing. Its memory
    #   should be large enough to hold the processed dataset. The default is
    #   the smallest ml.r5 type whose memory is ten times larger than the
    #   size of the exported graph data on disk.
    #   @return [String]
    #
    # @!attribute [rw] processing_instance_volume_size_in_gb
    #   The disk volume size of the processing instance. Both input data and
    #   processed data are stored on disk, so the volume size must be large
    #   enough to hold both data sets. The default is 0. If not specified or
    #   0, Neptune ML chooses the volume size automatically based on the
    #   data size.
    #   @return [Integer]
    #
    # @!attribute [rw] processing_time_out_in_seconds
    #   Timeout in seconds for the data processing job. The default is
    #   86,400 (1 day).
    #   @return [Integer]
    #
    # @!attribute [rw] model_type
    #   One of the two model types that Neptune ML currently supports:
    #   heterogeneous graph models (`heterogeneous`), and knowledge graph
    #   (`kge`). The default is none. If not specified, Neptune ML chooses
    #   the model type automatically based on the data.
    #   @return [String]
    #
    # @!attribute [rw] config_file_name
    #   A data specification file that describes how to load the exported
    #   graph data for training. The file is automatically generated by the
    #   Neptune export toolkit. The default is
    #   `training-data-configuration.json`.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The IDs of the subnets in the Neptune VPC. The default is None.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The VPC security group IDs. The default is None.
    #   @return [Array<String>]
    #
    # @!attribute [rw] volume_encryption_kms_key
    #   The Amazon Key Management Service (Amazon KMS) key that SageMaker
    #   uses to encrypt data on the storage volume attached to the ML
    #   compute instances that run the training job. The default is None.
    #   @return [String]
    #
    # @!attribute [rw] s3_output_encryption_kms_key
    #   The Amazon Key Management Service (Amazon KMS) key that SageMaker
    #   uses to encrypt the output of the processing job. The default is
    #   none.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/StartMLDataProcessingJobInput AWS API Documentation
    #
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
      :s3_output_encryption_kms_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique ID of the new data processing job.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the data processing job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_in_millis
    #   The time it took to create the new processing job, in milliseconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/StartMLDataProcessingJobOutput AWS API Documentation
    #
    class StartMLDataProcessingJobOutput < Struct.new(
      :id,
      :arn,
      :creation_time_in_millis)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   A unique identifier for the new job. The default is An autogenerated
    #   UUID.
    #   @return [String]
    #
    # @!attribute [rw] previous_model_training_job_id
    #   The job ID of a completed model-training job that you want to update
    #   incrementally based on updated data.
    #   @return [String]
    #
    # @!attribute [rw] data_processing_job_id
    #   The job ID of the completed data-processing job that has created the
    #   data that the training will work with.
    #   @return [String]
    #
    # @!attribute [rw] train_model_s3_location
    #   The location in Amazon S3 where the model artifacts are to be
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] sagemaker_iam_role_arn
    #   The ARN of an IAM role for SageMaker execution.This must be listed
    #   in your DB cluster parameter group or an error will occur.
    #   @return [String]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster
    #   parameter group or an error will occur.
    #   @return [String]
    #
    # @!attribute [rw] base_processing_instance_type
    #   The type of ML instance used in preparing and managing training of
    #   ML models. This is a CPU instance chosen based on memory
    #   requirements for processing the training data and model.
    #   @return [String]
    #
    # @!attribute [rw] training_instance_type
    #   The type of ML instance used for model training. All Neptune ML
    #   models support CPU, GPU, and multiGPU training. The default is
    #   `ml.p3.2xlarge`. Choosing the right instance type for training
    #   depends on the task type, graph size, and your budget.
    #   @return [String]
    #
    # @!attribute [rw] training_instance_volume_size_in_gb
    #   The disk volume size of the training instance. Both input data and
    #   the output model are stored on disk, so the volume size must be
    #   large enough to hold both data sets. The default is 0. If not
    #   specified or 0, Neptune ML selects a disk volume size based on the
    #   recommendation generated in the data processing step.
    #   @return [Integer]
    #
    # @!attribute [rw] training_time_out_in_seconds
    #   Timeout in seconds for the training job. The default is 86,400 (1
    #   day).
    #   @return [Integer]
    #
    # @!attribute [rw] max_hpo_number_of_training_jobs
    #   Maximum total number of training jobs to start for the
    #   hyperparameter tuning job. The default is 2. Neptune ML
    #   automatically tunes the hyperparameters of the machine learning
    #   model. To obtain a model that performs well, use at least 10 jobs
    #   (in other words, set `maxHPONumberOfTrainingJobs` to 10). In
    #   general, the more tuning runs, the better the results.
    #   @return [Integer]
    #
    # @!attribute [rw] max_hpo_parallel_training_jobs
    #   Maximum number of parallel training jobs to start for the
    #   hyperparameter tuning job. The default is 2. The number of parallel
    #   jobs you can run is limited by the available resources on your
    #   training instance.
    #   @return [Integer]
    #
    # @!attribute [rw] subnets
    #   The IDs of the subnets in the Neptune VPC. The default is None.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The VPC security group IDs. The default is None.
    #   @return [Array<String>]
    #
    # @!attribute [rw] volume_encryption_kms_key
    #   The Amazon Key Management Service (KMS) key that SageMaker uses to
    #   encrypt data on the storage volume attached to the ML compute
    #   instances that run the training job. The default is None.
    #   @return [String]
    #
    # @!attribute [rw] s3_output_encryption_kms_key
    #   The Amazon Key Management Service (KMS) key that SageMaker uses to
    #   encrypt the output of the processing job. The default is none.
    #   @return [String]
    #
    # @!attribute [rw] enable_managed_spot_training
    #   Optimizes the cost of training machine-learning models by using
    #   Amazon Elastic Compute Cloud spot instances. The default is `False`.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_model_training_parameters
    #   The configuration for custom model training. This is a JSON object.
    #   @return [Types::CustomModelTrainingParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/StartMLModelTrainingJobInput AWS API Documentation
    #
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
      :custom_model_training_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique ID of the new model training job.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the new model training job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_in_millis
    #   The model training job creation time, in milliseconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/StartMLModelTrainingJobOutput AWS API Documentation
    #
    class StartMLModelTrainingJobOutput < Struct.new(
      :id,
      :arn,
      :creation_time_in_millis)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   A unique identifier for the new job. The default is an autogenerated
    #   UUID.
    #   @return [String]
    #
    # @!attribute [rw] data_processing_job_id
    #   The job ID of a completed data-processing job. You must include
    #   either `dataProcessingJobId` and a `mlModelTrainingJobId`, or a
    #   `trainingJobName`.
    #   @return [String]
    #
    # @!attribute [rw] ml_model_training_job_id
    #   The job ID of a completed model-training job. You must include
    #   either `dataProcessingJobId` and a `mlModelTrainingJobId`, or a
    #   `trainingJobName`.
    #   @return [String]
    #
    # @!attribute [rw] training_job_name
    #   The name of a completed SageMaker training job. You must include
    #   either `dataProcessingJobId` and a `mlModelTrainingJobId`, or a
    #   `trainingJobName`.
    #   @return [String]
    #
    # @!attribute [rw] model_transform_output_s3_location
    #   The location in Amazon S3 where the model artifacts are to be
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] sagemaker_iam_role_arn
    #   The ARN of an IAM role for SageMaker execution. This must be listed
    #   in your DB cluster parameter group or an error will occur.
    #   @return [String]
    #
    # @!attribute [rw] neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster
    #   parameter group or an error will occur.
    #   @return [String]
    #
    # @!attribute [rw] custom_model_transform_parameters
    #   Configuration information for a model transform using a custom
    #   model. The `customModelTransformParameters` object contains the
    #   following fields, which must have values compatible with the saved
    #   model parameters from the training job:
    #   @return [Types::CustomModelTransformParameters]
    #
    # @!attribute [rw] base_processing_instance_type
    #   The type of ML instance used in preparing and managing training of
    #   ML models. This is an ML compute instance chosen based on memory
    #   requirements for processing the training data and model.
    #   @return [String]
    #
    # @!attribute [rw] base_processing_instance_volume_size_in_gb
    #   The disk volume size of the training instance in gigabytes. The
    #   default is 0. Both input data and the output model are stored on
    #   disk, so the volume size must be large enough to hold both data
    #   sets. If not specified or 0, Neptune ML selects a disk volume size
    #   based on the recommendation generated in the data processing step.
    #   @return [Integer]
    #
    # @!attribute [rw] subnets
    #   The IDs of the subnets in the Neptune VPC. The default is None.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The VPC security group IDs. The default is None.
    #   @return [Array<String>]
    #
    # @!attribute [rw] volume_encryption_kms_key
    #   The Amazon Key Management Service (KMS) key that SageMaker uses to
    #   encrypt data on the storage volume attached to the ML compute
    #   instances that run the training job. The default is None.
    #   @return [String]
    #
    # @!attribute [rw] s3_output_encryption_kms_key
    #   The Amazon Key Management Service (KMS) key that SageMaker uses to
    #   encrypt the output of the processing job. The default is none.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/StartMLModelTransformJobInput AWS API Documentation
    #
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
      :s3_output_encryption_kms_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique ID of the new model transform job.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the model transform job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_in_millis
    #   The creation time of the model transform job, in milliseconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/StartMLModelTransformJobOutput AWS API Documentation
    #
    class StartMLModelTransformJobOutput < Struct.new(
      :id,
      :arn,
      :creation_time_in_millis)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains statistics information. The DFE engine uses information about
    # the data in your Neptune graph to make effective trade-offs when
    # planning query execution. This information takes the form of
    # statistics that include so-called characteristic sets and predicate
    # statistics that can guide query planning. See [Managing statistics for
    # the Neptune DFE to use][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/neptune-dfe-statistics.html
    #
    # @!attribute [rw] auto_compute
    #   Indicates whether or not automatic statistics generation is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] active
    #   Indicates whether or not DFE statistics generation is enabled at
    #   all.
    #   @return [Boolean]
    #
    # @!attribute [rw] statistics_id
    #   Reports the ID of the current statistics generation run. A value of
    #   -1 indicates that no statistics have been generated.
    #   @return [String]
    #
    # @!attribute [rw] date
    #   The UTC time at which DFE statistics have most recently been
    #   generated.
    #   @return [Time]
    #
    # @!attribute [rw] note
    #   A note about problems in the case where statistics are invalid.
    #   @return [String]
    #
    # @!attribute [rw] signature_info
    #   A StatisticsSummary structure that contains:
    #
    #   * `signatureCount` - The total number of signatures across all
    #     characteristic sets.
    #
    #   * `instanceCount` - The total number of characteristic-set
    #     instances.
    #
    #   * `predicateCount` - The total number of unique predicates.
    #   @return [Types::StatisticsSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/Statistics AWS API Documentation
    #
    class Statistics < Struct.new(
      :auto_compute,
      :active,
      :statistics_id,
      :date,
      :note,
      :signature_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when statistics needed to satisfy a request are not available.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/StatisticsNotAvailableException AWS API Documentation
    #
    class StatisticsNotAvailableException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the characteristic sets generated in the statistics.
    #
    # @!attribute [rw] signature_count
    #   The total number of signatures across all characteristic sets.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_count
    #   The total number of characteristic-set instances.
    #   @return [Integer]
    #
    # @!attribute [rw] predicate_count
    #   The total number of unique predicates.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/StatisticsSummary AWS API Documentation
    #
    class StatisticsSummary < Struct.new(
      :signature_count,
      :instance_count,
      :predicate_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when stream records requested by a query cannot be found.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/StreamRecordsNotFoundException AWS API Documentation
    #
    class StreamRecordsNotFoundException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A subject structure.
    #
    # @!attribute [rw] count
    #   Number of occurrences of this specific structure.
    #   @return [Integer]
    #
    # @!attribute [rw] predicates
    #   A list of predicates present in this specific structure.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/SubjectStructure AWS API Documentation
    #
    class SubjectStructure < Struct.new(
      :count,
      :predicates)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when the rate of requests exceeds the maximum throughput.
    # Requests can be retried after encountering this exception.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request that could not be processed for this reason.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when the an operation exceeds the time limit allowed for it.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request that could not be processed for this reason.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/TimeLimitExceededException AWS API Documentation
    #
    class TimeLimitExceededException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when the number of requests being processed exceeds the limit.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request that could not be processed for this reason.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a request attempts to initiate an operation that is not
    # supported.
    #
    # @!attribute [rw] detailed_message
    #   A detailed message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request in question.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The HTTP status code returned with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/UnsupportedOperationException AWS API Documentation
    #
    class UnsupportedOperationException < Struct.new(
      :detailed_message,
      :request_id,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

