# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SupplyChain
  module Types

    # You do not have the required privileges to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The BillOfMaterialsImportJob details.
    #
    # @!attribute [rw] instance_id
    #   The BillOfMaterialsImportJob instanceId.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The BillOfMaterialsImportJob jobId.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The BillOfMaterialsImportJob ConfigurationJobStatus.
    #   @return [String]
    #
    # @!attribute [rw] s3uri
    #   The S3 URI from which the CSV is read.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   When the BillOfMaterialsImportJob has reached a terminal state,
    #   there will be a message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/BillOfMaterialsImportJob AWS API Documentation
    #
    class BillOfMaterialsImportJob < Struct.new(
      :instance_id,
      :job_id,
      :status,
      :s3uri,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updating or deleting a resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for CreateBillOfMaterialsImportJob.
    #
    # @!attribute [rw] instance_id
    #   The AWS Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] s3uri
    #   The S3 URI of the CSV file to be imported. The bucket must grant
    #   permissions for AWS Supply Chain to read the file.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateBillOfMaterialsImportJobRequest AWS API Documentation
    #
    class CreateBillOfMaterialsImportJobRequest < Struct.new(
      :instance_id,
      :s3uri,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters of CreateBillOfMaterialsImportJob.
    #
    # @!attribute [rw] job_id
    #   The new BillOfMaterialsImportJob identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateBillOfMaterialsImportJobResponse AWS API Documentation
    #
    class CreateBillOfMaterialsImportJobResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for GetBillOfMaterialsImportJob.
    #
    # @!attribute [rw] instance_id
    #   The AWS Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The BillOfMaterialsImportJob identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetBillOfMaterialsImportJobRequest AWS API Documentation
    #
    class GetBillOfMaterialsImportJobRequest < Struct.new(
      :instance_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for GetBillOfMaterialsImportJob.
    #
    # @!attribute [rw] job
    #   The BillOfMaterialsImportJob.
    #   @return [Types::BillOfMaterialsImportJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetBillOfMaterialsImportJobResponse AWS API Documentation
    #
    class GetBillOfMaterialsImportJobResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unexpected error during processing of request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request references a resource which does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input does not satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
