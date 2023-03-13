# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LookoutforVision
  module Types

    # You are not authorized to perform the action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an anomaly type found on an image by an image
    # segmentation model. For more information, see DetectAnomalies.
    #
    # @!attribute [rw] name
    #   The name of an anomaly type found in an image. `Name` maps to an
    #   anomaly type in the training dataset, apart from the anomaly type
    #   `background`. The service automatically inserts the `background`
    #   anomaly type into the response from `DetectAnomalies`.
    #   @return [String]
    #
    # @!attribute [rw] pixel_anomaly
    #   Information about the pixel mask that covers an anomaly type.
    #   @return [Types::PixelAnomaly]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/Anomaly AWS API Documentation
    #
    class Anomaly < Struct.new(
      :name,
      :pixel_anomaly)
      SENSITIVE = []
      include Aws::Structure
    end

    # The update or deletion of a resource caused an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name of the project in which you want to create a dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   The type of the dataset. Specify `train` for a training dataset.
    #   Specify `test` for a test dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_source
    #   The location of the manifest file that Amazon Lookout for Vision
    #   uses to create the dataset.
    #
    #   If you don't specify `DatasetSource`, an empty dataset is created
    #   and the operation synchronously returns. Later, you can add JSON
    #   Lines by calling UpdateDatasetEntries.
    #
    #   If you specify a value for `DataSource`, the manifest at the S3
    #   location is validated and used to create the dataset. The call to
    #   `CreateDataset` is asynchronous and might take a while to complete.
    #   To find out the current status, Check the value of `Status` returned
    #   in a call to DescribeDataset.
    #   @return [Types::DatasetSource]
    #
    # @!attribute [rw] client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `CreateDataset` completes only once. You choose the value to pass.
    #   For example, An issue might prevent you from getting a response from
    #   `CreateDataset`. In this case, safely retry your call to
    #   `CreateDataset` by using the same `ClientToken` parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple dataset creation requests. You'll need
    #   to provide your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `CreateDataset`. An idempotency token is
    #   active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/CreateDatasetRequest AWS API Documentation
    #
    class CreateDatasetRequest < Struct.new(
      :project_name,
      :dataset_type,
      :dataset_source,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_metadata
    #   Information about the dataset.
    #   @return [Types::DatasetMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/CreateDatasetResponse AWS API Documentation
    #
    class CreateDatasetResponse < Struct.new(
      :dataset_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name of the project in which you want to create a model version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the version of the model.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `CreateModel` completes only once. You choose the value to pass. For
    #   example, An issue might prevent you from getting a response from
    #   `CreateModel`. In this case, safely retry your call to `CreateModel`
    #   by using the same `ClientToken` parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from starting multiple training jobs. You'll need to provide
    #   your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `CreateModel`. An idempotency token is
    #   active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   The location where Amazon Lookout for Vision saves the training
    #   results.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier for your AWS KMS key. The key is used to encrypt
    #   training and test images copied into the service for model training.
    #   Your source images are unaffected. If this parameter is not
    #   specified, the copied images are encrypted by a key that AWS owns
    #   and manages.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of tags (key-value pairs) that you want to attach to the
    #   model.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/CreateModelRequest AWS API Documentation
    #
    class CreateModelRequest < Struct.new(
      :project_name,
      :description,
      :client_token,
      :output_config,
      :kms_key_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_metadata
    #   The response from a call to `CreateModel`.
    #   @return [Types::ModelMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/CreateModelResponse AWS API Documentation
    #
    class CreateModelResponse < Struct.new(
      :model_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name for the project.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `CreateProject` completes only once. You choose the value to pass.
    #   For example, An issue might prevent you from getting a response from
    #   `CreateProject`. In this case, safely retry your call to
    #   `CreateProject` by using the same `ClientToken` parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple project creation requests. You'll need
    #   to provide your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `CreateProject`. An idempotency token is
    #   active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/CreateProjectRequest AWS API Documentation
    #
    class CreateProjectRequest < Struct.new(
      :project_name,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_metadata
    #   Information about the project.
    #   @return [Types::ProjectMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/CreateProjectResponse AWS API Documentation
    #
    class CreateProjectResponse < Struct.new(
      :project_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description for a dataset. For more information, see
    # DescribeDataset.
    #
    # @!attribute [rw] project_name
    #   The name of the project that contains the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   The type of the dataset. The value `train` represents a training
    #   dataset or single dataset project. The value `test` represents a
    #   test dataset.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The Unix timestamp for the time and date that the dataset was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The Unix timestamp for the date and time that the dataset was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] image_stats
    #   Statistics about the images in a dataset.
    #   @return [Types::DatasetImageStats]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DatasetDescription AWS API Documentation
    #
    class DatasetDescription < Struct.new(
      :project_name,
      :dataset_type,
      :creation_timestamp,
      :last_updated_timestamp,
      :status,
      :status_message,
      :image_stats)
      SENSITIVE = []
      include Aws::Structure
    end

    # Location information about a manifest file. You can use a manifest
    # file to create a dataset.
    #
    # @!attribute [rw] s3_object
    #   The S3 bucket location for the manifest file.
    #   @return [Types::InputS3Object]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DatasetGroundTruthManifest AWS API Documentation
    #
    class DatasetGroundTruthManifest < Struct.new(
      :s3_object)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistics about the images in a dataset.
    #
    # @!attribute [rw] total
    #   The total number of images in the dataset.
    #   @return [Integer]
    #
    # @!attribute [rw] labeled
    #   The total number of labeled images.
    #   @return [Integer]
    #
    # @!attribute [rw] normal
    #   The total number of images labeled as normal.
    #   @return [Integer]
    #
    # @!attribute [rw] anomaly
    #   the total number of images labeled as an anomaly.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DatasetImageStats AWS API Documentation
    #
    class DatasetImageStats < Struct.new(
      :total,
      :labeled,
      :normal,
      :anomaly)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for an Amazon Lookout for Vision dataset. For more
    # information, see DescribeDataset and ProjectDescription.
    #
    # @!attribute [rw] dataset_type
    #   The type of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The Unix timestamp for the date and time that the dataset was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DatasetMetadata AWS API Documentation
    #
    class DatasetMetadata < Struct.new(
      :dataset_type,
      :creation_timestamp,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the location of a manifest file that Amazon Lookout
    # for Vision uses to to create a dataset.
    #
    # @!attribute [rw] ground_truth_manifest
    #   Location information for the manifest file.
    #   @return [Types::DatasetGroundTruthManifest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DatasetSource AWS API Documentation
    #
    class DatasetSource < Struct.new(
      :ground_truth_manifest)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name of the project that contains the dataset that you want to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   The type of the dataset to delete. Specify `train` to delete the
    #   training dataset. Specify `test` to delete the test dataset. To
    #   delete the dataset in a single dataset project, specify `train`.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `DeleteDataset` completes only once. You choose the value to pass.
    #   For example, An issue might prevent you from getting a response from
    #   `DeleteDataset`. In this case, safely retry your call to
    #   `DeleteDataset` by using the same `ClientToken` parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple deletetion requests. You'll need to
    #   provide your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `DeleteDataset`. An idempotency token is
    #   active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DeleteDatasetRequest AWS API Documentation
    #
    class DeleteDatasetRequest < Struct.new(
      :project_name,
      :dataset_type,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DeleteDatasetResponse AWS API Documentation
    #
    class DeleteDatasetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] project_name
    #   The name of the project that contains the model that you want to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `DeleteModel` completes only once. You choose the value to pass. For
    #   example, an issue might prevent you from getting a response from
    #   `DeleteModel`. In this case, safely retry your call to `DeleteModel`
    #   by using the same `ClientToken` parameter value.
    #
    #   If you don't supply a value for ClientToken, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple model deletion requests. You'll need to
    #   provide your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `DeleteModel`. An idempotency token is
    #   active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DeleteModelRequest AWS API Documentation
    #
    class DeleteModelRequest < Struct.new(
      :project_name,
      :model_version,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the model that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DeleteModelResponse AWS API Documentation
    #
    class DeleteModelResponse < Struct.new(
      :model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name of the project to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `DeleteProject` completes only once. You choose the value to pass.
    #   For example, An issue might prevent you from getting a response from
    #   `DeleteProject`. In this case, safely retry your call to
    #   `DeleteProject` by using the same `ClientToken` parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple project deletion requests. You'll need
    #   to provide your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `DeleteProject`. An idempotency token is
    #   active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DeleteProjectRequest AWS API Documentation
    #
    class DeleteProjectRequest < Struct.new(
      :project_name,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DeleteProjectResponse AWS API Documentation
    #
    class DeleteProjectResponse < Struct.new(
      :project_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name of the project that contains the dataset that you want to
    #   describe.
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   The type of the dataset to describe. Specify `train` to describe the
    #   training dataset. Specify `test` to describe the test dataset. If
    #   you have a single dataset project, specify `train`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DescribeDatasetRequest AWS API Documentation
    #
    class DescribeDatasetRequest < Struct.new(
      :project_name,
      :dataset_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_description
    #   The description of the requested dataset.
    #   @return [Types::DatasetDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DescribeDatasetResponse AWS API Documentation
    #
    class DescribeDatasetResponse < Struct.new(
      :dataset_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name of the project that contains the model packaging job that
    #   you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The job name for the model packaging job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DescribeModelPackagingJobRequest AWS API Documentation
    #
    class DescribeModelPackagingJobRequest < Struct.new(
      :project_name,
      :job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_packaging_description
    #   The description of the model packaging job.
    #   @return [Types::ModelPackagingDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DescribeModelPackagingJobResponse AWS API Documentation
    #
    class DescribeModelPackagingJobResponse < Struct.new(
      :model_packaging_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The project that contains the version of a model that you want to
    #   describe.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model that you want to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DescribeModelRequest AWS API Documentation
    #
    class DescribeModelRequest < Struct.new(
      :project_name,
      :model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_description
    #   Contains the description of the model.
    #   @return [Types::ModelDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DescribeModelResponse AWS API Documentation
    #
    class DescribeModelResponse < Struct.new(
      :model_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name of the project that you want to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DescribeProjectRequest AWS API Documentation
    #
    class DescribeProjectRequest < Struct.new(
      :project_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_description
    #   The description of the project.
    #   @return [Types::ProjectDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DescribeProjectResponse AWS API Documentation
    #
    class DescribeProjectResponse < Struct.new(
      :project_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name of the project that contains the model version that you
    #   want to use.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The unencrypted image bytes that you want to analyze.
    #   @return [IO]
    #
    # @!attribute [rw] content_type
    #   The type of the image passed in `Body`. Valid values are `image/png`
    #   (PNG format images) and `image/jpeg` (JPG format images).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DetectAnomaliesRequest AWS API Documentation
    #
    class DetectAnomaliesRequest < Struct.new(
      :project_name,
      :model_version,
      :body,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detect_anomaly_result
    #   The results of the `DetectAnomalies` operation.
    #   @return [Types::DetectAnomalyResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DetectAnomaliesResponse AWS API Documentation
    #
    class DetectAnomaliesResponse < Struct.new(
      :detect_anomaly_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # The prediction results from a call to DetectAnomalies.
    # `DetectAnomalyResult` includes classification information for the
    # prediction (`IsAnomalous` and `Confidence`). If the model you use is
    # an image segementation model, `DetectAnomalyResult` also includes
    # segmentation information (`Anomalies` and `AnomalyMask`).
    # Classification information is calculated separately from segmentation
    # information and you shouldn't assume a relationship between them.
    #
    # @!attribute [rw] source
    #   The source of the image that was analyzed. `direct` means that the
    #   images was supplied from the local computer. No other values are
    #   supported.
    #   @return [Types::ImageSource]
    #
    # @!attribute [rw] is_anomalous
    #   True if Amazon Lookout for Vision classifies the image as containing
    #   an anomaly, otherwise false.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   The confidence that Lookout for Vision has in the accuracy of the
    #   classification in `IsAnomalous`.
    #   @return [Float]
    #
    # @!attribute [rw] anomalies
    #   If the model is an image segmentation model, `Anomalies` contains a
    #   list of anomaly types found in the image. There is one entry for
    #   each type of anomaly found (even if multiple instances of an anomaly
    #   type exist on the image). The first element in the list is always an
    #   anomaly type representing the image background ('background') and
    #   shouldn't be considered an anomaly. Amazon Lookout for Vision
    #   automatically add the background anomaly type to the response, and
    #   you don't need to declare a background anomaly type in your
    #   dataset.
    #
    #   If the list has one entry ('background'), no anomalies were found
    #   on the image.
    #
    #
    #
    #   An image classification model doesn't return an `Anomalies` list.
    #   @return [Array<Types::Anomaly>]
    #
    # @!attribute [rw] anomaly_mask
    #   If the model is an image segmentation model, `AnomalyMask` contains
    #   pixel masks that covers all anomaly types found on the image. Each
    #   anomaly type has a different mask color. To map a color to an
    #   anomaly type, see the `color` field of the PixelAnomaly object.
    #
    #   An image classification model doesn't return an `Anomalies` list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DetectAnomalyResult AWS API Documentation
    #
    class DetectAnomalyResult < Struct.new(
      :source,
      :is_anomalous,
      :confidence,
      :anomalies,
      :anomaly_mask)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for the AWS IoT Greengrass component created
    # in a model packaging job. For more information, see
    # StartModelPackagingJob.
    #
    # <note markdown="1"> You can't specify a component with the same `ComponentName` and
    # `Componentversion` as an existing component with the same component
    # name and component version.
    #
    #  </note>
    #
    # @!attribute [rw] compiler_options
    #   Additional compiler options for the Greengrass component. Currently,
    #   only NVIDIA Graphics Processing Units (GPU) and CPU accelerators are
    #   supported. If you specify `TargetDevice`, don't specify
    #   `CompilerOptions`.
    #
    #   For more information, see *Compiler options* in the Amazon Lookout
    #   for Vision Developer Guide.
    #   @return [String]
    #
    # @!attribute [rw] target_device
    #   The target device for the model. Currently the only supported value
    #   is `jetson_xavier`. If you specify `TargetDevice`, you can't
    #   specify `TargetPlatform`.
    #   @return [String]
    #
    # @!attribute [rw] target_platform
    #   The target platform for the model. If you specify `TargetPlatform`,
    #   you can't specify `TargetDevice`.
    #   @return [Types::TargetPlatform]
    #
    # @!attribute [rw] s3_output_location
    #   An S3 location in which Lookout for Vision stores the component
    #   artifacts.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] component_name
    #   A name for the AWS IoT Greengrass component.
    #   @return [String]
    #
    # @!attribute [rw] component_version
    #   A Version for the AWS IoT Greengrass component. If you don't
    #   provide a value, a default value of ` Model Version.0.0` is used.
    #   @return [String]
    #
    # @!attribute [rw] component_description
    #   A description for the AWS IoT Greengrass component.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of tags (key-value pairs) that you want to attach to the AWS
    #   IoT Greengrass component.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/GreengrassConfiguration AWS API Documentation
    #
    class GreengrassConfiguration < Struct.new(
      :compiler_options,
      :target_device,
      :target_platform,
      :s3_output_location,
      :component_name,
      :component_version,
      :component_description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the AWS IoT Greengrass component created by a model
    # packaging job.
    #
    # @!attribute [rw] component_version_arn
    #   The Amazon Resource Name (ARN) of the component.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] component_version
    #   The version of the component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/GreengrassOutputDetails AWS API Documentation
    #
    class GreengrassOutputDetails < Struct.new(
      :component_version_arn,
      :component_name,
      :component_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source for an image.
    #
    # @!attribute [rw] type
    #   The type of the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ImageSource AWS API Documentation
    #
    class ImageSource < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon S3 Location information for an input manifest file.
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket that contains the manifest.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The name and location of the manifest file withiin the bucket.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version ID of the bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/InputS3Object AWS API Documentation
    #
    class InputS3Object < Struct.new(
      :bucket,
      :key,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Lookout for Vision experienced a service issue. Try your call
    # again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The period of time, in seconds, before the operation can be retried.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name of the project that contains the dataset that you want to
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   The type of the dataset that you want to list. Specify `train` to
    #   list the training dataset. Specify `test` to list the test dataset.
    #   If you have a single dataset project, specify `train`.
    #   @return [String]
    #
    # @!attribute [rw] labeled
    #   Specify `true` to include labeled entries, otherwise specify
    #   `false`. If you don't specify a value, Lookout for Vision returns
    #   all entries.
    #   @return [Boolean]
    #
    # @!attribute [rw] anomaly_class
    #   Specify `normal` to include only normal images. Specify `anomaly` to
    #   only include anomalous entries. If you don't specify a value,
    #   Amazon Lookout for Vision returns normal and anomalous images.
    #   @return [String]
    #
    # @!attribute [rw] before_creation_date
    #   Only includes entries before the specified date in the response. For
    #   example, `2020-06-23T00:00:00`.
    #   @return [Time]
    #
    # @!attribute [rw] after_creation_date
    #   Only includes entries after the specified date in the response. For
    #   example, `2020-06-23T00:00:00`.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Lookout for Vision returns a pagination token
    #   in the response. You can use this pagination token to retrieve the
    #   next set of dataset entries.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 100. If you specify a value greater
    #   than 100, a ValidationException error occurs. The default value is
    #   100.
    #   @return [Integer]
    #
    # @!attribute [rw] source_ref_contains
    #   Perform a "contains" search on the values of the `source-ref` key
    #   within the dataset. For example a value of "IMG\_17" returns all
    #   JSON Lines where the `source-ref` key value matches **IMG\_17**.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ListDatasetEntriesRequest AWS API Documentation
    #
    class ListDatasetEntriesRequest < Struct.new(
      :project_name,
      :dataset_type,
      :labeled,
      :anomaly_class,
      :before_creation_date,
      :after_creation_date,
      :next_token,
      :max_results,
      :source_ref_contains)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_entries
    #   A list of the entries (JSON Lines) within the dataset.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Lookout for Vision returns this
    #   token that you can use in the subsequent request to retrieve the
    #   next set ofdataset entries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ListDatasetEntriesResponse AWS API Documentation
    #
    class ListDatasetEntriesResponse < Struct.new(
      :dataset_entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name of the project for which you want to list the model
    #   packaging jobs.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more
    #   results to retrieve), Amazon Lookout for Vision returns a pagination
    #   token in the response. You can use this pagination token to retrieve
    #   the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 100. If you specify a value greater
    #   than 100, a ValidationException error occurs. The default value is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ListModelPackagingJobsRequest AWS API Documentation
    #
    class ListModelPackagingJobsRequest < Struct.new(
      :project_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_packaging_jobs
    #   A list of the model packaging jobs created for the specified Amazon
    #   Lookout for Vision project.
    #   @return [Array<Types::ModelPackagingJobMetadata>]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more
    #   results to retrieve), Amazon Lookout for Vision returns a pagination
    #   token in the response. You can use this pagination token to retrieve
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ListModelPackagingJobsResponse AWS API Documentation
    #
    class ListModelPackagingJobsResponse < Struct.new(
      :model_packaging_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name of the project that contains the model versions that you
    #   want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Lookout for Vision returns a pagination token
    #   in the response. You can use this pagination token to retrieve the
    #   next set of models.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 100. If you specify a value greater
    #   than 100, a ValidationException error occurs. The default value is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ListModelsRequest AWS API Documentation
    #
    class ListModelsRequest < Struct.new(
      :project_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] models
    #   A list of model versions in the specified project.
    #   @return [Array<Types::ModelMetadata>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Lookout for Vision returns this
    #   token that you can use in the subsequent request to retrieve the
    #   next set of models.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ListModelsResponse AWS API Documentation
    #
    class ListModelsResponse < Struct.new(
      :models,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Lookout for Vision returns a pagination token
    #   in the response. You can use this pagination token to retrieve the
    #   next set of projects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 100. If you specify a value greater
    #   than 100, a ValidationException error occurs. The default value is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ListProjectsRequest AWS API Documentation
    #
    class ListProjectsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] projects
    #   A list of projects in your AWS account.
    #   @return [Array<Types::ProjectMetadata>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Lookout for Vision returns this
    #   token that you can use in the subsequent request to retrieve the
    #   next set of projects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ListProjectsResponse AWS API Documentation
    #
    class ListProjectsResponse < Struct.new(
      :projects,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the model for which you want to
    #   list tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A map of tag keys and values attached to the specified model.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon Lookout for Vision model.
    #
    # @!attribute [rw] model_version
    #   The version of the model
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the model.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The unix timestamp for the date and time that the model was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for the model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the model.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for the model.
    #   @return [String]
    #
    # @!attribute [rw] performance
    #   Performance metrics for the model. Created during training.
    #   @return [Types::ModelPerformance]
    #
    # @!attribute [rw] output_config
    #   The S3 location where Amazon Lookout for Vision saves model training
    #   files.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] evaluation_manifest
    #   The S3 location where Amazon Lookout for Vision saves the manifest
    #   file that was used to test the trained model and generate the
    #   performance scores.
    #   @return [Types::OutputS3Object]
    #
    # @!attribute [rw] evaluation_result
    #   The S3 location where Amazon Lookout for Vision saves the
    #   performance metrics.
    #   @return [Types::OutputS3Object]
    #
    # @!attribute [rw] evaluation_end_timestamp
    #   The unix timestamp for the date and time that the evaluation ended.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_id
    #   The identifer for the AWS Key Management Service (AWS KMS) key that
    #   was used to encrypt the model during training.
    #   @return [String]
    #
    # @!attribute [rw] min_inference_units
    #   The minimum number of inference units used by the model. For more
    #   information, see StartModel
    #   @return [Integer]
    #
    # @!attribute [rw] max_inference_units
    #   The maximum number of inference units Amazon Lookout for Vision uses
    #   to auto-scale the model. For more information, see StartModel.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ModelDescription AWS API Documentation
    #
    class ModelDescription < Struct.new(
      :model_version,
      :model_arn,
      :creation_timestamp,
      :description,
      :status,
      :status_message,
      :performance,
      :output_config,
      :evaluation_manifest,
      :evaluation_result,
      :evaluation_end_timestamp,
      :kms_key_id,
      :min_inference_units,
      :max_inference_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon Lookout for Vision model.
    #
    # @!attribute [rw] creation_timestamp
    #   The unix timestamp for the date and time that the model was created.
    #   @return [Time]
    #
    # @!attribute [rw] model_version
    #   The version of the model.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the model.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for the model.
    #   @return [String]
    #
    # @!attribute [rw] performance
    #   Performance metrics for the model. Not available until training has
    #   successfully completed.
    #   @return [Types::ModelPerformance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ModelMetadata AWS API Documentation
    #
    class ModelMetadata < Struct.new(
      :creation_timestamp,
      :model_version,
      :model_arn,
      :description,
      :status,
      :status_message,
      :performance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for a Amazon Lookout for Vision model
    # packaging job. For more information, see StartModelPackagingJob.
    #
    # @!attribute [rw] greengrass
    #   Configuration information for the AWS IoT Greengrass component in a
    #   model packaging job.
    #   @return [Types::GreengrassConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ModelPackagingConfiguration AWS API Documentation
    #
    class ModelPackagingConfiguration < Struct.new(
      :greengrass)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a model packaging job. For more information, see
    # DescribeModelPackagingJob.
    #
    # @!attribute [rw] job_name
    #   The name of the model packaging job.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project that's associated with a model that's in
    #   the model package.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model used in the model packaging job.
    #   @return [String]
    #
    # @!attribute [rw] model_packaging_configuration
    #   The configuration information used in the model packaging job.
    #   @return [Types::ModelPackagingConfiguration]
    #
    # @!attribute [rw] model_packaging_job_description
    #   The description for the model packaging job.
    #   @return [String]
    #
    # @!attribute [rw] model_packaging_method
    #   The AWS service used to package the job. Currently Lookout for
    #   Vision can package jobs with AWS IoT Greengrass.
    #   @return [String]
    #
    # @!attribute [rw] model_packaging_output_details
    #   Information about the output of the model packaging job. For more
    #   information, see DescribeModelPackagingJob.
    #   @return [Types::ModelPackagingOutputDetails]
    #
    # @!attribute [rw] status
    #   The status of the model packaging job.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for the model packaging job.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The Unix timestamp for the time and date that the model packaging
    #   job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The Unix timestamp for the time and date that the model packaging
    #   job was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ModelPackagingDescription AWS API Documentation
    #
    class ModelPackagingDescription < Struct.new(
      :job_name,
      :project_name,
      :model_version,
      :model_packaging_configuration,
      :model_packaging_job_description,
      :model_packaging_method,
      :model_packaging_output_details,
      :status,
      :status_message,
      :creation_timestamp,
      :last_updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a model packaging job. For more information, see
    # ListModelPackagingJobs.
    #
    # @!attribute [rw] job_name
    #   The name of the model packaging job.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The project that contains the model that is in the model package.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model that is in the model package.
    #   @return [String]
    #
    # @!attribute [rw] model_packaging_job_description
    #   The description for the model packaging job.
    #   @return [String]
    #
    # @!attribute [rw] model_packaging_method
    #   The AWS service used to package the job. Currently Lookout for
    #   Vision can package jobs with AWS IoT Greengrass.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the model packaging job.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for the model packaging job.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The Unix timestamp for the time and date that the model packaging
    #   job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The Unix timestamp for the time and date that the model packaging
    #   job was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ModelPackagingJobMetadata AWS API Documentation
    #
    class ModelPackagingJobMetadata < Struct.new(
      :job_name,
      :project_name,
      :model_version,
      :model_packaging_job_description,
      :model_packaging_method,
      :status,
      :status_message,
      :creation_timestamp,
      :last_updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the output from a model packaging job.
    #
    # @!attribute [rw] greengrass
    #   Information about the AWS IoT Greengrass component in a model
    #   packaging job.
    #   @return [Types::GreengrassOutputDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ModelPackagingOutputDetails AWS API Documentation
    #
    class ModelPackagingOutputDetails < Struct.new(
      :greengrass)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the evaluation performance of a trained model.
    #
    # @!attribute [rw] f1_score
    #   The overall F1 score metric for the trained model.
    #   @return [Float]
    #
    # @!attribute [rw] recall
    #   The overall recall metric value for the trained model.
    #   @return [Float]
    #
    # @!attribute [rw] precision
    #   The overall precision metric value for the trained model.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ModelPerformance AWS API Documentation
    #
    class ModelPerformance < Struct.new(
      :f1_score,
      :recall,
      :precision)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 location where Amazon Lookout for Vision saves model training
    # files.
    #
    # @!attribute [rw] s3_location
    #   The S3 location for the output.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/OutputConfig AWS API Documentation
    #
    class OutputConfig < Struct.new(
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 location where Amazon Lookout for Vision saves training output.
    #
    # @!attribute [rw] bucket
    #   The bucket that contains the training output.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The location of the training output in the bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/OutputS3Object AWS API Documentation
    #
    class OutputS3Object < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the pixels in an anomaly mask. For more information,
    # see Anomaly. `PixelAnomaly` is only returned by image segmentation
    # models.
    #
    # @!attribute [rw] total_percentage_area
    #   The percentage area of the image that the anomaly type covers.
    #   @return [Float]
    #
    # @!attribute [rw] color
    #   A hex color value for the mask that covers an anomaly type. Each
    #   anomaly type has a different mask color. The color maps to the color
    #   of the anomaly type used in the training dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/PixelAnomaly AWS API Documentation
    #
    class PixelAnomaly < Struct.new(
      :total_percentage_area,
      :color)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describe an Amazon Lookout for Vision project. For more information,
    # see DescribeProject.
    #
    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The unix timestamp for the date and time that the project was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] datasets
    #   A list of datasets in the project.
    #   @return [Array<Types::DatasetMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ProjectDescription AWS API Documentation
    #
    class ProjectDescription < Struct.new(
      :project_arn,
      :project_name,
      :creation_timestamp,
      :datasets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata about an Amazon Lookout for Vision project.
    #
    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The unix timestamp for the date and time that the project was
    #   created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ProjectMetadata AWS API Documentation
    #
    class ProjectMetadata < Struct.new(
      :project_arn,
      :project_name,
      :creation_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the location of training output or the output of a
    # model packaging job.
    #
    # @!attribute [rw] bucket
    #   The S3 bucket that contains the training or model packaging job
    #   output. If you are training a model, the bucket must in your AWS
    #   account. If you use an S3 bucket for a model packaging job, the S3
    #   bucket must be in the same AWS Region and AWS account in which you
    #   use AWS IoT Greengrass.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The path of the folder, within the S3 bucket, that contains the
    #   output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service quota was exceeded the allowed limit. For more information,
    # see Limits in Amazon Lookout for Vision in the Amazon Lookout for
    # Vision Developer Guide.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name of the project which contains the version of the model that
    #   you want to package.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model within the project that you want to
    #   package.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   A name for the model packaging job. If you don't supply a value,
    #   the service creates a job name for you.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration for the model packaging job.
    #   @return [Types::ModelPackagingConfiguration]
    #
    # @!attribute [rw] description
    #   A description for the model packaging job.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `StartModelPackagingJob` completes only once. You choose the value
    #   to pass. For example, An issue might prevent you from getting a
    #   response from `StartModelPackagingJob`. In this case, safely retry
    #   your call to `StartModelPackagingJob` by using the same
    #   `ClientToken` parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple dataset creation requests. You'll need
    #   to provide your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `StartModelPackagingJob`. An idempotency
    #   token is active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/StartModelPackagingJobRequest AWS API Documentation
    #
    class StartModelPackagingJobRequest < Struct.new(
      :project_name,
      :model_version,
      :job_name,
      :configuration,
      :description,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The job name for the model packaging job. If you don't supply a job
    #   name in the `JobName` input parameter, the service creates a job
    #   name for you.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/StartModelPackagingJobResponse AWS API Documentation
    #
    class StartModelPackagingJobResponse < Struct.new(
      :job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name of the project that contains the model that you want to
    #   start.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model that you want to start.
    #   @return [String]
    #
    # @!attribute [rw] min_inference_units
    #   The minimum number of inference units to use. A single inference
    #   unit represents 1 hour of processing. Use a higher number to
    #   increase the TPS throughput of your model. You are charged for the
    #   number of inference units that you use.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `StartModel` completes only once. You choose the value to pass. For
    #   example, An issue might prevent you from getting a response from
    #   `StartModel`. In this case, safely retry your call to `StartModel`
    #   by using the same `ClientToken` parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple start requests. You'll need to provide
    #   your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `StartModel`. An idempotency token is
    #   active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] max_inference_units
    #   The maximum number of inference units to use for auto-scaling the
    #   model. If you don't specify a value, Amazon Lookout for Vision
    #   doesn't auto-scale the model.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/StartModelRequest AWS API Documentation
    #
    class StartModelRequest < Struct.new(
      :project_name,
      :model_version,
      :min_inference_units,
      :client_token,
      :max_inference_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current running status of the model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/StartModelResponse AWS API Documentation
    #
    class StartModelResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name of the project that contains the model that you want to
    #   stop.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model that you want to stop.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `StopModel` completes only once. You choose the value to pass. For
    #   example, An issue might prevent you from getting a response from
    #   `StopModel`. In this case, safely retry your call to `StopModel` by
    #   using the same `ClientToken` parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple stop requests. You'll need to provide
    #   your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `StopModel`. An idempotency token is active
    #   for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/StopModelRequest AWS API Documentation
    #
    class StopModelRequest < Struct.new(
      :project_name,
      :model_version,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/StopModelResponse AWS API Documentation
    #
    class StopModelResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key and value pair that is attached to the specified Amazon Lookout
    # for Vision model.
    #
    # @!attribute [rw] key
    #   The key of the tag that is attached to the specified model.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag that is attached to the specified model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the model to assign the tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value tags to assign to the model.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The platform on which a model runs on an AWS IoT Greengrass core
    # device.
    #
    # @!attribute [rw] os
    #   The target operating system for the model. Linux is the only
    #   operating system that is currently supported.
    #   @return [String]
    #
    # @!attribute [rw] arch
    #   The target architecture for the model. The currently supported
    #   architectures are X86\_64 (64-bit version of the x86 instruction
    #   set) and ARM\_64 (ARMv8 64-bit CPU).
    #   @return [String]
    #
    # @!attribute [rw] accelerator
    #   The target accelerator for the model. Currently, Amazon Lookout for
    #   Vision only supports NVIDIA (Nvidia graphics processing unit) and
    #   CPU accelerators. If you specify NVIDIA as an accelerator, you must
    #   also specify the `gpu-code`, `trt-ver`, and `cuda-ver` compiler
    #   options. If you don't specify an accelerator, Lookout for Vision
    #   uses the CPU for compilation and we highly recommend that you use
    #   the GreengrassConfiguration$CompilerOptions field. For example, you
    #   can use the following compiler options for CPU:
    #
    #   * `mcpu`: CPU micro-architecture. For example, `\{'mcpu':
    #     'skylake-avx512'\}`
    #
    #   * `mattr`: CPU flags. For example, `\{'mattr': ['+neon',
    #     '+vfpv4']\}`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/TargetPlatform AWS API Documentation
    #
    class TargetPlatform < Struct.new(
      :os,
      :arch,
      :accelerator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Lookout for Vision is temporarily unable to process the
    # request. Try your call again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The period of time, in seconds, before the operation can be retried.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the model from which you want to
    #   remove tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of the keys of the tags that you want to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] project_name
    #   The name of the project that contains the dataset that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   The type of the dataset that you want to update. Specify `train` to
    #   update the training dataset. Specify `test` to update the test
    #   dataset. If you have a single dataset project, specify `train`.
    #   @return [String]
    #
    # @!attribute [rw] changes
    #   The entries to add to the dataset.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `UpdateDatasetEntries` completes only once. You choose the value to
    #   pass. For example, An issue might prevent you from getting a
    #   response from `UpdateDatasetEntries`. In this case, safely retry
    #   your call to `UpdateDatasetEntries` by using the same `ClientToken`
    #   parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple updates with the same dataset entries.
    #   You'll need to provide your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `UpdateDatasetEntries`. An idempotency
    #   token is active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/UpdateDatasetEntriesRequest AWS API Documentation
    #
    class UpdateDatasetEntriesRequest < Struct.new(
      :project_name,
      :dataset_type,
      :changes,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the dataset update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/UpdateDatasetEntriesResponse AWS API Documentation
    #
    class UpdateDatasetEntriesResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An input validation error occured. For example, invalid characters in
    # a project name, or if a pagination token is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
