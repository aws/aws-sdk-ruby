# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Signer
  module Types

    # @note When making an API call, you may pass CancelSigningProfileRequest
    #   data as a hash:
    #
    #       {
    #         profile_name: "ProfileName", # required
    #       }
    #
    # @!attribute [rw] profile_name
    #   The name of the signing profile to be canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/CancelSigningProfileRequest AWS API Documentation
    #
    class CancelSigningProfileRequest < Struct.new(
      :profile_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSigningJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The ID of the signing job on input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/DescribeSigningJobRequest AWS API Documentation
    #
    class DescribeSigningJobRequest < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the signing job on output.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The object that contains the name of your S3 bucket or your raw
    #   code.
    #   @return [Types::Source]
    #
    # @!attribute [rw] signing_material
    #   Amazon Resource Name (ARN) of your code signing certificate.
    #   @return [Types::SigningMaterial]
    #
    # @!attribute [rw] platform_id
    #   The microcontroller platform to which your signed code image will be
    #   distributed.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The name of the profile that initiated the signing operation.
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   A list of any overrides that were applied to the signing operation.
    #   @return [Types::SigningPlatformOverrides]
    #
    # @!attribute [rw] signing_parameters
    #   Map of user-assigned key-value pairs used during signing. These
    #   values contain any information that you specified for use in your
    #   signing job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_at
    #   Date and time that the signing job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   Date and time that the signing job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] requested_by
    #   The IAM principal that requested the signing job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the signing job.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   String value that contains the status reason.
    #   @return [String]
    #
    # @!attribute [rw] signed_object
    #   Name of the S3 bucket where the signed code image is saved by AWS
    #   Signer.
    #   @return [Types::SignedObject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/DescribeSigningJobResponse AWS API Documentation
    #
    class DescribeSigningJobResponse < Struct.new(
      :job_id,
      :source,
      :signing_material,
      :platform_id,
      :profile_name,
      :overrides,
      :signing_parameters,
      :created_at,
      :completed_at,
      :requested_by,
      :status,
      :status_reason,
      :signed_object)
      include Aws::Structure
    end

    # Points to an `S3Destination` object that contains information about
    # your S3 bucket.
    #
    # @note When making an API call, you may pass Destination
    #   data as a hash:
    #
    #       {
    #         s3: {
    #           bucket_name: "BucketName",
    #           prefix: "Prefix",
    #         },
    #       }
    #
    # @!attribute [rw] s3
    #   The `S3Destination` object.
    #   @return [Types::S3Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :s3)
      include Aws::Structure
    end

    # The encryption algorithm options that are available to an AWS Signer
    # job.
    #
    # @!attribute [rw] allowed_values
    #   The set of accepted encryption algorithms that are allowed in an AWS
    #   Signer job.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_value
    #   The default encryption algorithm that is used by an AWS Signer job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/EncryptionAlgorithmOptions AWS API Documentation
    #
    class EncryptionAlgorithmOptions < Struct.new(
      :allowed_values,
      :default_value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSigningPlatformRequest
    #   data as a hash:
    #
    #       {
    #         platform_id: "PlatformId", # required
    #       }
    #
    # @!attribute [rw] platform_id
    #   The ID of the target signing platform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/GetSigningPlatformRequest AWS API Documentation
    #
    class GetSigningPlatformRequest < Struct.new(
      :platform_id)
      include Aws::Structure
    end

    # @!attribute [rw] platform_id
    #   The ID of the target signing platform.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the target signing platform.
    #   @return [String]
    #
    # @!attribute [rw] partner
    #   A list of partner entities that use the target signing platform.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The validation template that is used by the target signing platform.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category type of the target signing platform.
    #   @return [String]
    #
    # @!attribute [rw] signing_configuration
    #   A list of configurations applied to the target platform at signing.
    #   @return [Types::SigningConfiguration]
    #
    # @!attribute [rw] signing_image_format
    #   The format of the target platform's signing image.
    #   @return [Types::SigningImageFormat]
    #
    # @!attribute [rw] max_size_in_mb
    #   The maximum size (in MB) of the payload that can be signed by the
    #   target platform.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/GetSigningPlatformResponse AWS API Documentation
    #
    class GetSigningPlatformResponse < Struct.new(
      :platform_id,
      :display_name,
      :partner,
      :target,
      :category,
      :signing_configuration,
      :signing_image_format,
      :max_size_in_mb)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSigningProfileRequest
    #   data as a hash:
    #
    #       {
    #         profile_name: "ProfileName", # required
    #       }
    #
    # @!attribute [rw] profile_name
    #   The name of the target signing profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/GetSigningProfileRequest AWS API Documentation
    #
    class GetSigningProfileRequest < Struct.new(
      :profile_name)
      include Aws::Structure
    end

    # @!attribute [rw] profile_name
    #   The name of the target signing profile.
    #   @return [String]
    #
    # @!attribute [rw] signing_material
    #   The ARN of the certificate that the target profile uses for signing
    #   operations.
    #   @return [Types::SigningMaterial]
    #
    # @!attribute [rw] platform_id
    #   The ID of the platform that is used by the target signing profile.
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   A list of overrides applied by the target signing profile for
    #   signing operations.
    #   @return [Types::SigningPlatformOverrides]
    #
    # @!attribute [rw] signing_parameters
    #   A map of key-value pairs for signing operations that is attached to
    #   the target signing profile.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the target signing profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/GetSigningProfileResponse AWS API Documentation
    #
    class GetSigningProfileResponse < Struct.new(
      :profile_name,
      :signing_material,
      :platform_id,
      :overrides,
      :signing_parameters,
      :status)
      include Aws::Structure
    end

    # The hash algorithms that are available to an AWS Signer job.
    #
    # @!attribute [rw] allowed_values
    #   The set of accepted hash algorithms allowed in an AWS Signer job.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_value
    #   The default hash algorithm that is used in an AWS Signer job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/HashAlgorithmOptions AWS API Documentation
    #
    class HashAlgorithmOptions < Struct.new(
      :allowed_values,
      :default_value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSigningJobsRequest
    #   data as a hash:
    #
    #       {
    #         status: "InProgress", # accepts InProgress, Failed, Succeeded
    #         platform_id: "PlatformId",
    #         requested_by: "RequestedBy",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] status
    #   A status value with which to filter your results.
    #   @return [String]
    #
    # @!attribute [rw] platform_id
    #   The ID of microcontroller platform that you specified for the
    #   distribution of your code image.
    #   @return [String]
    #
    # @!attribute [rw] requested_by
    #   The IAM principal that requested the signing job.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of items to return in the response. Use
    #   this parameter when paginating results. If additional items exist
    #   beyond the number you specify, the `nextToken` element is set in the
    #   response. Use the `nextToken` value in a subsequent request to
    #   retrieve additional items.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   String for specifying the next set of paginated results to return.
    #   After you receive a response with truncated results, use this
    #   parameter in a subsequent request. Set it to the value of
    #   `nextToken` from the response that you just received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningJobsRequest AWS API Documentation
    #
    class ListSigningJobsRequest < Struct.new(
      :status,
      :platform_id,
      :requested_by,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   A list of your signing jobs.
    #   @return [Array<Types::SigningJob>]
    #
    # @!attribute [rw] next_token
    #   String for specifying the next set of paginated results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningJobsResponse AWS API Documentation
    #
    class ListSigningJobsResponse < Struct.new(
      :jobs,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSigningPlatformsRequest
    #   data as a hash:
    #
    #       {
    #         category: "String",
    #         partner: "String",
    #         target: "String",
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] category
    #   The category type of a signing platform.
    #   @return [String]
    #
    # @!attribute [rw] partner
    #   Any partner entities connected to a signing platform.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The validation template that is used by the target signing platform.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned by this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Value for specifying the next set of paginated results to return.
    #   After you receive a response with truncated results, use this
    #   parameter in a subsequent request. Set it to the value of
    #   `nextToken` from the response that you just received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningPlatformsRequest AWS API Documentation
    #
    class ListSigningPlatformsRequest < Struct.new(
      :category,
      :partner,
      :target,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] platforms
    #   A list of all platforms that match the request parameters.
    #   @return [Array<Types::SigningPlatform>]
    #
    # @!attribute [rw] next_token
    #   Value for specifying the next set of paginated results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningPlatformsResponse AWS API Documentation
    #
    class ListSigningPlatformsResponse < Struct.new(
      :platforms,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSigningProfilesRequest
    #   data as a hash:
    #
    #       {
    #         include_canceled: false,
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] include_canceled
    #   Designates whether to include profiles with the status of
    #   `CANCELED`.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of profiles to be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Value for specifying the next set of paginated results to return.
    #   After you receive a response with truncated results, use this
    #   parameter in a subsequent request. Set it to the value of
    #   `nextToken` from the response that you just received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningProfilesRequest AWS API Documentation
    #
    class ListSigningProfilesRequest < Struct.new(
      :include_canceled,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] profiles
    #   A list of profiles that are available in the AWS account. This
    #   includes profiles with the status of `CANCELED` if the
    #   `includeCanceled` parameter is set to `true`.
    #   @return [Array<Types::SigningProfile>]
    #
    # @!attribute [rw] next_token
    #   Value for specifying the next set of paginated results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningProfilesResponse AWS API Documentation
    #
    class ListSigningProfilesResponse < Struct.new(
      :profiles,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutSigningProfileRequest
    #   data as a hash:
    #
    #       {
    #         profile_name: "ProfileName", # required
    #         signing_material: { # required
    #           certificate_arn: "CertificateArn", # required
    #         },
    #         platform_id: "PlatformId", # required
    #         overrides: {
    #           signing_configuration: {
    #             encryption_algorithm: "RSA", # accepts RSA, ECDSA
    #             hash_algorithm: "SHA1", # accepts SHA1, SHA256
    #           },
    #         },
    #         signing_parameters: {
    #           "SigningParameterKey" => "SigningParameterValue",
    #         },
    #       }
    #
    # @!attribute [rw] profile_name
    #   The name of the signing profile to be created.
    #   @return [String]
    #
    # @!attribute [rw] signing_material
    #   The AWS Certificate Manager certificate that will be used to sign
    #   code with the new signing profile.
    #   @return [Types::SigningMaterial]
    #
    # @!attribute [rw] platform_id
    #   The ID of the signing profile to be created.
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   A subfield of `platform`. This specifies any different configuration
    #   options that you want to apply to the chosen platform (such as a
    #   different `hash-algorithm` or `signing-algorithm`).
    #   @return [Types::SigningPlatformOverrides]
    #
    # @!attribute [rw] signing_parameters
    #   Map of key-value pairs for signing. These can include any
    #   information that you want to use during signing.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/PutSigningProfileRequest AWS API Documentation
    #
    class PutSigningProfileRequest < Struct.new(
      :profile_name,
      :signing_material,
      :platform_id,
      :overrides,
      :signing_parameters)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the signing profile created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/PutSigningProfileResponse AWS API Documentation
    #
    class PutSigningProfileResponse < Struct.new(
      :arn)
      include Aws::Structure
    end

    # The name and prefix of the S3 bucket where AWS Signer saves your
    # signed objects.
    #
    # @note When making an API call, you may pass S3Destination
    #   data as a hash:
    #
    #       {
    #         bucket_name: "BucketName",
    #         prefix: "Prefix",
    #       }
    #
    # @!attribute [rw] bucket_name
    #   Name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   An Amazon S3 prefix that you can use to limit responses to those
    #   that begin with the specified prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/S3Destination AWS API Documentation
    #
    class S3Destination < Struct.new(
      :bucket_name,
      :prefix)
      include Aws::Structure
    end

    # The S3 bucket name and key where AWS Signer saved your signed code
    # image.
    #
    # @!attribute [rw] bucket_name
    #   Name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Key name that uniquely identifies a signed code image in your
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/S3SignedObject AWS API Documentation
    #
    class S3SignedObject < Struct.new(
      :bucket_name,
      :key)
      include Aws::Structure
    end

    # Information about the S3 bucket where you saved your unsigned code.
    #
    # @note When making an API call, you may pass S3Source
    #   data as a hash:
    #
    #       {
    #         bucket_name: "BucketName", # required
    #         key: "Key", # required
    #         version: "Version", # required
    #       }
    #
    # @!attribute [rw] bucket_name
    #   Name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Key name of the bucket object that contains your unsigned code.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of your source image in your version enabled S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/S3Source AWS API Documentation
    #
    class S3Source < Struct.new(
      :bucket_name,
      :key,
      :version)
      include Aws::Structure
    end

    # Points to an `S3SignedObject` object that contains information about
    # your signed code image.
    #
    # @!attribute [rw] s3
    #   The `S3SignedObject`.
    #   @return [Types::S3SignedObject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SignedObject AWS API Documentation
    #
    class SignedObject < Struct.new(
      :s3)
      include Aws::Structure
    end

    # The configuration of an AWS Signer operation.
    #
    # @!attribute [rw] encryption_algorithm_options
    #   The encryption algorithm options that are available for an AWS
    #   Signer job.
    #   @return [Types::EncryptionAlgorithmOptions]
    #
    # @!attribute [rw] hash_algorithm_options
    #   The hash algorithm options that are available for an AWS Signer job.
    #   @return [Types::HashAlgorithmOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningConfiguration AWS API Documentation
    #
    class SigningConfiguration < Struct.new(
      :encryption_algorithm_options,
      :hash_algorithm_options)
      include Aws::Structure
    end

    # A signing configuration that overrides the default encryption or hash
    # algorithm of a signing job.
    #
    # @note When making an API call, you may pass SigningConfigurationOverrides
    #   data as a hash:
    #
    #       {
    #         encryption_algorithm: "RSA", # accepts RSA, ECDSA
    #         hash_algorithm: "SHA1", # accepts SHA1, SHA256
    #       }
    #
    # @!attribute [rw] encryption_algorithm
    #   A specified override of the default encryption algorithm that is
    #   used in an AWS Signer job.
    #   @return [String]
    #
    # @!attribute [rw] hash_algorithm
    #   A specified override of the default hash algorithm that is used in
    #   an AWS Signer job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningConfigurationOverrides AWS API Documentation
    #
    class SigningConfigurationOverrides < Struct.new(
      :encryption_algorithm,
      :hash_algorithm)
      include Aws::Structure
    end

    # The image format of an AWS Signer platform or profile.
    #
    # @!attribute [rw] supported_formats
    #   The supported formats of an AWS Signer signing image.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_format
    #   The default format of an AWS Signer signing image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningImageFormat AWS API Documentation
    #
    class SigningImageFormat < Struct.new(
      :supported_formats,
      :default_format)
      include Aws::Structure
    end

    # Contains information about a signing job.
    #
    # @!attribute [rw] job_id
    #   The ID of the signing job.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   A `Source` that contains information about a signing job's code
    #   image source.
    #   @return [Types::Source]
    #
    # @!attribute [rw] signed_object
    #   A `SignedObject` structure that contains information about a signing
    #   job's signed code image.
    #   @return [Types::SignedObject]
    #
    # @!attribute [rw] signing_material
    #   A `SigningMaterial` object that contains the Amazon Resource Name
    #   (ARN) of the certificate used for the signing job.
    #   @return [Types::SigningMaterial]
    #
    # @!attribute [rw] created_at
    #   The date and time that the signing job was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the signing job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningJob AWS API Documentation
    #
    class SigningJob < Struct.new(
      :job_id,
      :source,
      :signed_object,
      :signing_material,
      :created_at,
      :status)
      include Aws::Structure
    end

    # The ACM certificate that is used to sign your code.
    #
    # @note When making an API call, you may pass SigningMaterial
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "CertificateArn", # required
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificates that is used to
    #   sign your code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningMaterial AWS API Documentation
    #
    class SigningMaterial < Struct.new(
      :certificate_arn)
      include Aws::Structure
    end

    # Contains information about the signing configurations and parameters
    # that is used to perform an AWS Signer job.
    #
    # @!attribute [rw] platform_id
    #   The ID of an AWS Signer platform.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of an AWS Signer platform.
    #   @return [String]
    #
    # @!attribute [rw] partner
    #   Any partner entities linked to an AWS Signer platform.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The types of targets that can be signed by an AWS Signer platform.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of an AWS Signer platform.
    #   @return [String]
    #
    # @!attribute [rw] signing_configuration
    #   The configuration of an AWS Signer platform. This includes the
    #   designated hash algorithm and encryption algorithm of a signing
    #   platform.
    #   @return [Types::SigningConfiguration]
    #
    # @!attribute [rw] signing_image_format
    #   The signing image format that is used by an AWS Signer platform.
    #   @return [Types::SigningImageFormat]
    #
    # @!attribute [rw] max_size_in_mb
    #   The maximum size (in MB) of code that can be signed by a AWS Signer
    #   platform.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningPlatform AWS API Documentation
    #
    class SigningPlatform < Struct.new(
      :platform_id,
      :display_name,
      :partner,
      :target,
      :category,
      :signing_configuration,
      :signing_image_format,
      :max_size_in_mb)
      include Aws::Structure
    end

    # Any overrides that are applied to the signing configuration of an AWS
    # Signer platform.
    #
    # @note When making an API call, you may pass SigningPlatformOverrides
    #   data as a hash:
    #
    #       {
    #         signing_configuration: {
    #           encryption_algorithm: "RSA", # accepts RSA, ECDSA
    #           hash_algorithm: "SHA1", # accepts SHA1, SHA256
    #         },
    #       }
    #
    # @!attribute [rw] signing_configuration
    #   A signing configuration that overrides the default encryption or
    #   hash algorithm of a signing job.
    #   @return [Types::SigningConfigurationOverrides]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningPlatformOverrides AWS API Documentation
    #
    class SigningPlatformOverrides < Struct.new(
      :signing_configuration)
      include Aws::Structure
    end

    # Contains information about the ACM certificates and AWS Signer
    # configuration parameters that can be used by a given AWS Signer user.
    #
    # @!attribute [rw] profile_name
    #   The name of the AWS Signer profile.
    #   @return [String]
    #
    # @!attribute [rw] signing_material
    #   The ACM certificate that is available for use by a signing profile.
    #   @return [Types::SigningMaterial]
    #
    # @!attribute [rw] platform_id
    #   The ID of a platform that is available for use by a signing profile.
    #   @return [String]
    #
    # @!attribute [rw] signing_parameters
    #   The parameters that are available for use by an AWS Signer user.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of an AWS Signer profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningProfile AWS API Documentation
    #
    class SigningProfile < Struct.new(
      :profile_name,
      :signing_material,
      :platform_id,
      :signing_parameters,
      :status)
      include Aws::Structure
    end

    # An `S3Source` object that contains information about the S3 bucket
    # where you saved your unsigned code.
    #
    # @note When making an API call, you may pass Source
    #   data as a hash:
    #
    #       {
    #         s3: {
    #           bucket_name: "BucketName", # required
    #           key: "Key", # required
    #           version: "Version", # required
    #         },
    #       }
    #
    # @!attribute [rw] s3
    #   The `S3Source` object.
    #   @return [Types::S3Source]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/Source AWS API Documentation
    #
    class Source < Struct.new(
      :s3)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartSigningJobRequest
    #   data as a hash:
    #
    #       {
    #         source: { # required
    #           s3: {
    #             bucket_name: "BucketName", # required
    #             key: "Key", # required
    #             version: "Version", # required
    #           },
    #         },
    #         destination: { # required
    #           s3: {
    #             bucket_name: "BucketName",
    #             prefix: "Prefix",
    #           },
    #         },
    #         profile_name: "ProfileName",
    #         client_request_token: "ClientRequestToken", # required
    #       }
    #
    # @!attribute [rw] source
    #   The S3 bucket that contains the object to sign or a BLOB that
    #   contains your raw code.
    #   @return [Types::Source]
    #
    # @!attribute [rw] destination
    #   The S3 bucket in which to save your signed object. The destination
    #   contains the name of your bucket and an optional prefix.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] profile_name
    #   The name of the signing profile.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   String that identifies the signing request. All calls after the
    #   first that use this token return the same response as the first
    #   call.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/StartSigningJobRequest AWS API Documentation
    #
    class StartSigningJobRequest < Struct.new(
      :source,
      :destination,
      :profile_name,
      :client_request_token)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of your signing job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/StartSigningJobResponse AWS API Documentation
    #
    class StartSigningJobResponse < Struct.new(
      :job_id)
      include Aws::Structure
    end

  end
end
