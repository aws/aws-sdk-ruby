# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CustomerProfiles
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddProfileKeyRequest
    #   data as a hash:
    #
    #       {
    #         profile_id: "uuid", # required
    #         key_name: "name", # required
    #         values: ["string1To255"], # required
    #         domain_name: "name", # required
    #       }
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   A searchable identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of key values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AddProfileKeyRequest AWS API Documentation
    #
    class AddProfileKeyRequest < Struct.new(
      :profile_id,
      :key_name,
      :values,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_name
    #   A searchable identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of key values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AddProfileKeyResponse AWS API Documentation
    #
    class AddProfileKeyResponse < Struct.new(
      :key_name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A generic address associated with the customer that is not mailing,
    # shipping, or billing.
    #
    # @note When making an API call, you may pass Address
    #   data as a hash:
    #
    #       {
    #         address_1: "string1To255",
    #         address_2: "string1To255",
    #         address_3: "string1To255",
    #         address_4: "string1To255",
    #         city: "string1To255",
    #         county: "string1To255",
    #         state: "string1To255",
    #         province: "string1To255",
    #         country: "string1To255",
    #         postal_code: "string1To255",
    #       }
    #
    # @!attribute [rw] address_1
    #   The first line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] address_2
    #   The second line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] address_3
    #   The third line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] address_4
    #   The fourth line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] county
    #   The county in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] province
    #   The province in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code of a customer address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Address AWS API Documentation
    #
    class Address < Struct.new(
      :address_1,
      :address_2,
      :address_3,
      :address_4,
      :city,
      :county,
      :state,
      :province,
      :country,
      :postal_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input you provided is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         default_expiration_days: 1, # required
    #         default_encryption_key: "encryptionKey",
    #         dead_letter_queue_url: "sqsQueueUrl",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] default_expiration_days
    #   The default number of days until the data within the domain expires.
    #   @return [Integer]
    #
    # @!attribute [rw] default_encryption_key
    #   The default encryption key, which is an AWS managed key, is used
    #   when no specific type of encryption key is specified. It is used to
    #   encrypt all data before it is placed in permanent or semi-permanent
    #   storage.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_queue_url
    #   The URL of the SQS dead letter queue, which is used for reporting
    #   errors associated with ingesting data from third party applications.
    #   You must set up a policy on the DeadLetterQueue for the SendMessage
    #   operation to enable Amazon Connect Customer Profiles to send
    #   messages to the DeadLetterQueue.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateDomainRequest AWS API Documentation
    #
    class CreateDomainRequest < Struct.new(
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] default_expiration_days
    #   The default number of days until the data within the domain expires.
    #   @return [Integer]
    #
    # @!attribute [rw] default_encryption_key
    #   The default encryption key, which is an AWS managed key, is used
    #   when no specific type of encryption key is specified. It is used to
    #   encrypt all data before it is placed in permanent or semi-permanent
    #   storage.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_queue_url
    #   The URL of the SQS dead letter queue, which is used for reporting
    #   errors associated with ingesting data from third party applications.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateDomainResponse AWS API Documentation
    #
    class CreateDomainResponse < Struct.new(
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProfileRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         account_number: "string1To255",
    #         additional_information: "string1To1000",
    #         party_type: "INDIVIDUAL", # accepts INDIVIDUAL, BUSINESS, OTHER
    #         business_name: "string1To255",
    #         first_name: "string1To255",
    #         middle_name: "string1To255",
    #         last_name: "string1To255",
    #         birth_date: "string1To255",
    #         gender: "MALE", # accepts MALE, FEMALE, UNSPECIFIED
    #         phone_number: "string1To255",
    #         mobile_phone_number: "string1To255",
    #         home_phone_number: "string1To255",
    #         business_phone_number: "string1To255",
    #         email_address: "string1To255",
    #         personal_email_address: "string1To255",
    #         business_email_address: "string1To255",
    #         address: {
    #           address_1: "string1To255",
    #           address_2: "string1To255",
    #           address_3: "string1To255",
    #           address_4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255",
    #         },
    #         shipping_address: {
    #           address_1: "string1To255",
    #           address_2: "string1To255",
    #           address_3: "string1To255",
    #           address_4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255",
    #         },
    #         mailing_address: {
    #           address_1: "string1To255",
    #           address_2: "string1To255",
    #           address_3: "string1To255",
    #           address_4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255",
    #         },
    #         billing_address: {
    #           address_1: "string1To255",
    #           address_2: "string1To255",
    #           address_3: "string1To255",
    #           address_4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255",
    #         },
    #         attributes: {
    #           "string1To255" => "string1To255",
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] account_number
    #   A unique account number that you have given to the customer.
    #   @return [String]
    #
    # @!attribute [rw] additional_information
    #   Any additional information relevant to the customer's profile.
    #   @return [String]
    #
    # @!attribute [rw] party_type
    #   The type of profile used to describe the customer.
    #   @return [String]
    #
    # @!attribute [rw] business_name
    #   The name of the customer’s business.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The customer’s first name.
    #   @return [String]
    #
    # @!attribute [rw] middle_name
    #   The customer’s middle name.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The customer’s last name.
    #   @return [String]
    #
    # @!attribute [rw] birth_date
    #   The customer’s birth date.
    #   @return [String]
    #
    # @!attribute [rw] gender
    #   The gender with which the customer identifies.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The customer's phone number, which has not been specified as a
    #   mobile, home, or business number.
    #   @return [String]
    #
    # @!attribute [rw] mobile_phone_number
    #   The customer’s mobile phone number.
    #   @return [String]
    #
    # @!attribute [rw] home_phone_number
    #   The customer’s home phone number.
    #   @return [String]
    #
    # @!attribute [rw] business_phone_number
    #   The customer’s business phone number.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The customer's email address, which has not been specified as a
    #   personal or business address.
    #   @return [String]
    #
    # @!attribute [rw] personal_email_address
    #   The customer’s personal email address.
    #   @return [String]
    #
    # @!attribute [rw] business_email_address
    #   The customer’s business email address.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   A generic address associated with the customer that is not mailing,
    #   shipping, or billing.
    #   @return [Types::Address]
    #
    # @!attribute [rw] shipping_address
    #   The customer’s shipping address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] mailing_address
    #   The customer’s mailing address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] billing_address
    #   The customer’s billing address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] attributes
    #   A key value pair of attributes of a customer profile.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateProfileRequest AWS API Documentation
    #
    class CreateProfileRequest < Struct.new(
      :domain_name,
      :account_number,
      :additional_information,
      :party_type,
      :business_name,
      :first_name,
      :middle_name,
      :last_name,
      :birth_date,
      :gender,
      :phone_number,
      :mobile_phone_number,
      :home_phone_number,
      :business_phone_number,
      :email_address,
      :personal_email_address,
      :business_email_address,
      :address,
      :shipping_address,
      :mailing_address,
      :billing_address,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateProfileResponse AWS API Documentation
    #
    class CreateProfileResponse < Struct.new(
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteDomainRequest AWS API Documentation
    #
    class DeleteDomainRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the delete request is done.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteDomainResponse AWS API Documentation
    #
    class DeleteDomainResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         uri: "string1To255",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI of the S3 bucket or any other type of data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteIntegrationRequest AWS API Documentation
    #
    class DeleteIntegrationRequest < Struct.new(
      :domain_name,
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the delete request is done.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteIntegrationResponse AWS API Documentation
    #
    class DeleteIntegrationResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteProfileKeyRequest
    #   data as a hash:
    #
    #       {
    #         profile_id: "uuid", # required
    #         key_name: "name", # required
    #         values: ["string1To255"], # required
    #         domain_name: "name", # required
    #       }
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   A searchable identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of key values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileKeyRequest AWS API Documentation
    #
    class DeleteProfileKeyRequest < Struct.new(
      :profile_id,
      :key_name,
      :values,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the delete request is done.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileKeyResponse AWS API Documentation
    #
    class DeleteProfileKeyResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteProfileObjectRequest
    #   data as a hash:
    #
    #       {
    #         profile_id: "uuid", # required
    #         profile_object_unique_key: "string1To255", # required
    #         object_type_name: "typeName", # required
    #         domain_name: "name", # required
    #       }
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_object_unique_key
    #   The unique identifier of the profile object generated by the
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileObjectRequest AWS API Documentation
    #
    class DeleteProfileObjectRequest < Struct.new(
      :profile_id,
      :profile_object_unique_key,
      :object_type_name,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the delete request is done.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileObjectResponse AWS API Documentation
    #
    class DeleteProfileObjectResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteProfileObjectTypeRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         object_type_name: "typeName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileObjectTypeRequest AWS API Documentation
    #
    class DeleteProfileObjectTypeRequest < Struct.new(
      :domain_name,
      :object_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the delete request is done.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileObjectTypeResponse AWS API Documentation
    #
    class DeleteProfileObjectTypeResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteProfileRequest
    #   data as a hash:
    #
    #       {
    #         profile_id: "uuid", # required
    #         domain_name: "name", # required
    #       }
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileRequest AWS API Documentation
    #
    class DeleteProfileRequest < Struct.new(
      :profile_id,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the delete request is done.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileResponse AWS API Documentation
    #
    class DeleteProfileResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Usage-specific statistics about the domain.
    #
    # @!attribute [rw] profile_count
    #   The total number of profiles currently in the domain.
    #   @return [Integer]
    #
    # @!attribute [rw] metering_profile_count
    #   The number of profiles that you are currently paying for in the
    #   domain. If you have more than 100 objects associated with a single
    #   profile, that profile counts as two profiles. If you have more than
    #   200 objects, that profile counts as three, and so on.
    #   @return [Integer]
    #
    # @!attribute [rw] object_count
    #   The total number of objects in domain.
    #   @return [Integer]
    #
    # @!attribute [rw] total_size
    #   The total size, in bytes, of all objects in the domain.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DomainStats AWS API Documentation
    #
    class DomainStats < Struct.new(
      :profile_count,
      :metering_profile_count,
      :object_count,
      :total_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   A unique name for the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetDomainRequest AWS API Documentation
    #
    class GetDomainRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] default_expiration_days
    #   The default number of days until the data within the domain expires.
    #   @return [Integer]
    #
    # @!attribute [rw] default_encryption_key
    #   The default encryption key, which is an AWS managed key, is used
    #   when no specific type of encryption key is specified. It is used to
    #   encrypt all data before it is placed in permanent or semi-permanent
    #   storage.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_queue_url
    #   The URL of the SQS dead letter queue, which is used for reporting
    #   errors associated with ingesting data from third party applications.
    #   @return [String]
    #
    # @!attribute [rw] stats
    #   Usage-specific statistics about the domain.
    #   @return [Types::DomainStats]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetDomainResponse AWS API Documentation
    #
    class GetDomainResponse < Struct.new(
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :stats,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         uri: "string1To255",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI of the S3 bucket or any other type of data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetIntegrationRequest AWS API Documentation
    #
    class GetIntegrationRequest < Struct.new(
      :domain_name,
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI of the S3 bucket or any other type of data source.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetIntegrationResponse AWS API Documentation
    #
    class GetIntegrationResponse < Struct.new(
      :domain_name,
      :uri,
      :object_type_name,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetProfileObjectTypeRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         object_type_name: "typeName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileObjectTypeRequest AWS API Documentation
    #
    class GetProfileObjectTypeRequest < Struct.new(
      :domain_name,
      :object_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   A unique identifier for the object template.
    #   @return [String]
    #
    # @!attribute [rw] expiration_days
    #   The number of days until the data in the object expires.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key
    #   The customer-provided key to encrypt the profile object that will be
    #   created in this profile object type.
    #   @return [String]
    #
    # @!attribute [rw] allow_profile_creation
    #   Indicates whether a profile should be created when data is received
    #   if one doesn’t exist for an object of this type. The default is
    #   `FALSE`. If the AllowProfileCreation flag is set to `FALSE`, then
    #   the service tries to fetch a standard profile and associate this
    #   object with the profile. If it is set to `TRUE`, and if no match is
    #   found, then the service creates a new standard profile.
    #   @return [Boolean]
    #
    # @!attribute [rw] fields
    #   A map of the name and ObjectType field.
    #   @return [Hash<String,Types::ObjectTypeField>]
    #
    # @!attribute [rw] keys
    #   A list of unique keys that can be used to map data to the profile.
    #   @return [Hash<String,Array<Types::ObjectTypeKey>>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileObjectTypeResponse AWS API Documentation
    #
    class GetProfileObjectTypeResponse < Struct.new(
      :object_type_name,
      :description,
      :template_id,
      :expiration_days,
      :encryption_key,
      :allow_profile_creation,
      :fields,
      :keys,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetProfileObjectTypeTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_id: "name", # required
    #       }
    #
    # @!attribute [rw] template_id
    #   A unique identifier for the object template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileObjectTypeTemplateRequest AWS API Documentation
    #
    class GetProfileObjectTypeTemplateRequest < Struct.new(
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_id
    #   A unique identifier for the object template.
    #   @return [String]
    #
    # @!attribute [rw] source_name
    #   The name of the source of the object template.
    #   @return [String]
    #
    # @!attribute [rw] source_object
    #   The source of the object template.
    #   @return [String]
    #
    # @!attribute [rw] allow_profile_creation
    #   Indicates whether a profile should be created when data is received
    #   if one doesn’t exist for an object of this type. The default is
    #   `FALSE`. If the AllowProfileCreation flag is set to `FALSE`, then
    #   the service tries to fetch a standard profile and associate this
    #   object with the profile. If it is set to `TRUE`, and if no match is
    #   found, then the service creates a new standard profile.
    #   @return [Boolean]
    #
    # @!attribute [rw] fields
    #   A map of the name and ObjectType field.
    #   @return [Hash<String,Types::ObjectTypeField>]
    #
    # @!attribute [rw] keys
    #   A list of unique keys that can be used to map data to the profile.
    #   @return [Hash<String,Array<Types::ObjectTypeKey>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileObjectTypeTemplateResponse AWS API Documentation
    #
    class GetProfileObjectTypeTemplateResponse < Struct.new(
      :template_id,
      :source_name,
      :source_object,
      :allow_profile_creation,
      :fields,
      :keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal service error occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAccountIntegrationsRequest
    #   data as a hash:
    #
    #       {
    #         uri: "string1To255", # required
    #         next_token: "token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] uri
    #   The URI of the S3 bucket or any other type of data source.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous ListAccountIntegrations API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListAccountIntegrationsRequest AWS API Documentation
    #
    class ListAccountIntegrationsRequest < Struct.new(
      :uri,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of ListAccountIntegration instances.
    #   @return [Array<Types::ListIntegrationItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous ListAccountIntegrations API
    #   call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListAccountIntegrationsResponse AWS API Documentation
    #
    class ListAccountIntegrationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object in a list that represents a domain.
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListDomainItem AWS API Documentation
    #
    class ListDomainItem < Struct.new(
      :domain_name,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDomainsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous ListDomain API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListDomainsRequest AWS API Documentation
    #
    class ListDomainsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of ListDomains instances.
    #   @return [Array<Types::ListDomainItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous ListDomains API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListDomainsResponse AWS API Documentation
    #
    class ListDomainsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An integration in list of integrations.
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI of the S3 bucket or any other type of data source.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListIntegrationItem AWS API Documentation
    #
    class ListIntegrationItem < Struct.new(
      :domain_name,
      :uri,
      :object_type_name,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIntegrationsRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         next_token: "token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous ListIntegrations API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListIntegrationsRequest AWS API Documentation
    #
    class ListIntegrationsRequest < Struct.new(
      :domain_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of ListIntegrations instances.
    #   @return [Array<Types::ListIntegrationItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous ListIntegrations API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListIntegrationsResponse AWS API Documentation
    #
    class ListIntegrationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A ProfileObjectType instance.
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypeItem AWS API Documentation
    #
    class ListProfileObjectTypeItem < Struct.new(
      :object_type_name,
      :description,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A ProfileObjectTypeTemplate in a list of ProfileObjectTypeTemplates.
    #
    # @!attribute [rw] template_id
    #   A unique identifier for the object template.
    #   @return [String]
    #
    # @!attribute [rw] source_name
    #   The name of the source of the object template.
    #   @return [String]
    #
    # @!attribute [rw] source_object
    #   The source of the object template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypeTemplateItem AWS API Documentation
    #
    class ListProfileObjectTypeTemplateItem < Struct.new(
      :template_id,
      :source_name,
      :source_object)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProfileObjectTypeTemplatesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous ListObjectTypeTemplates API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypeTemplatesRequest AWS API Documentation
    #
    class ListProfileObjectTypeTemplatesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of ListProfileObjectType template instances.
    #   @return [Array<Types::ListProfileObjectTypeTemplateItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous ListObjectTypeTemplates API
    #   call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypeTemplatesResponse AWS API Documentation
    #
    class ListProfileObjectTypeTemplatesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProfileObjectTypesRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         next_token: "token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypesRequest AWS API Documentation
    #
    class ListProfileObjectTypesRequest < Struct.new(
      :domain_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of ListProfileObjectTypes instances.
    #   @return [Array<Types::ListProfileObjectTypeItem>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypesResponse AWS API Documentation
    #
    class ListProfileObjectTypesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A ProfileObject in a list of ProfileObjects.
    #
    # @!attribute [rw] object_type_name
    #   Specifies the kind of object being added to a profile, such as
    #   "Salesforce-Account."
    #   @return [String]
    #
    # @!attribute [rw] profile_object_unique_key
    #   The unique identifier of the ProfileObject generated by the service.
    #   @return [String]
    #
    # @!attribute [rw] object
    #   A JSON representation of a ProfileObject that belongs to a profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectsItem AWS API Documentation
    #
    class ListProfileObjectsItem < Struct.new(
      :object_type_name,
      :profile_object_unique_key,
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProfileObjectsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "token",
    #         max_results: 1,
    #         domain_name: "name", # required
    #         object_type_name: "typeName", # required
    #         profile_id: "uuid", # required
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous call to ListProfileObjects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectsRequest AWS API Documentation
    #
    class ListProfileObjectsRequest < Struct.new(
      :next_token,
      :max_results,
      :domain_name,
      :object_type_name,
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of ListProfileObject instances.
    #   @return [Array<Types::ListProfileObjectsItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous call to ListProfileObjects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectsResponse AWS API Documentation
    #
    class ListProfileObjectsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TagArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource for which you want to view tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a field in a ProfileObjectType.
    #
    # @note When making an API call, you may pass ObjectTypeField
    #   data as a hash:
    #
    #       {
    #         source: "text",
    #         target: "text",
    #         content_type: "STRING", # accepts STRING, NUMBER, PHONE_NUMBER, EMAIL_ADDRESS, NAME
    #       }
    #
    # @!attribute [rw] source
    #   A field of a ProfileObject. For example: \_source.FirstName, where
    #   “\_source” is a ProfileObjectType of a Zendesk user and “FirstName”
    #   is a field in that ObjectType.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The location of the data in the standard ProfileObject model. For
    #   example: \_profile.Address.PostalCode.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the field. Used for determining equality when
    #   searching.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ObjectTypeField AWS API Documentation
    #
    class ObjectTypeField < Struct.new(
      :source,
      :target,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines the Key element of a ProfileObject. A Key is a
    # special element that can be used to search for a customer profile.
    #
    # @note When making an API call, you may pass ObjectTypeKey
    #   data as a hash:
    #
    #       {
    #         standard_identifiers: ["PROFILE"], # accepts PROFILE, UNIQUE, SECONDARY, LOOKUP_ONLY, NEW_ONLY
    #         field_names: ["name"],
    #       }
    #
    # @!attribute [rw] standard_identifiers
    #   The types of keys that a ProfileObject can have. Each ProfileObject
    #   can have only 1 UNIQUE key but multiple PROFILE keys. PROFILE means
    #   that this key can be used to tie an object to a PROFILE. UNIQUE
    #   means that it can be used to uniquely identify an object. If a key a
    #   is marked as SECONDARY, it will be used to search for profiles after
    #   all other PROFILE keys have been searched. A LOOKUP\_ONLY key is
    #   only used to match a profile but is not persisted to be used for
    #   searching of the profile. A NEW\_ONLY key is only used if the
    #   profile does not already exist before the object is ingested,
    #   otherwise it is only used for matching objects to profiles.
    #   @return [Array<String>]
    #
    # @!attribute [rw] field_names
    #   The reference for the key name of the fields map.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ObjectTypeKey AWS API Documentation
    #
    class ObjectTypeKey < Struct.new(
      :standard_identifiers,
      :field_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The standard profile of a customer.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] account_number
    #   A unique account number that you have given to the customer.
    #   @return [String]
    #
    # @!attribute [rw] additional_information
    #   Any additional information relevant to the customer's profile.
    #   @return [String]
    #
    # @!attribute [rw] party_type
    #   The type of profile used to describe the customer.
    #   @return [String]
    #
    # @!attribute [rw] business_name
    #   The name of the customer’s business.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The customer’s first name.
    #   @return [String]
    #
    # @!attribute [rw] middle_name
    #   The customer’s middle name.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The customer’s last name.
    #   @return [String]
    #
    # @!attribute [rw] birth_date
    #   The customer’s birth date.
    #   @return [String]
    #
    # @!attribute [rw] gender
    #   The gender with which the customer identifies.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The customer's phone number, which has not been specified as a
    #   mobile, home, or business number.
    #   @return [String]
    #
    # @!attribute [rw] mobile_phone_number
    #   The customer’s mobile phone number.
    #   @return [String]
    #
    # @!attribute [rw] home_phone_number
    #   The customer’s home phone number.
    #   @return [String]
    #
    # @!attribute [rw] business_phone_number
    #   The customer’s home phone number.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The customer's email address, which has not been specified as a
    #   personal or business address.
    #   @return [String]
    #
    # @!attribute [rw] personal_email_address
    #   The customer’s personal email address.
    #   @return [String]
    #
    # @!attribute [rw] business_email_address
    #   The customer’s business email address.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   A generic address associated with the customer that is not mailing,
    #   shipping, or billing.
    #   @return [Types::Address]
    #
    # @!attribute [rw] shipping_address
    #   The customer’s shipping address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] mailing_address
    #   The customer’s mailing address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] billing_address
    #   The customer’s billing address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] attributes
    #   A key value pair of attributes of a customer profile.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Profile AWS API Documentation
    #
    class Profile < Struct.new(
      :profile_id,
      :account_number,
      :additional_information,
      :party_type,
      :business_name,
      :first_name,
      :middle_name,
      :last_name,
      :birth_date,
      :gender,
      :phone_number,
      :mobile_phone_number,
      :home_phone_number,
      :business_phone_number,
      :email_address,
      :personal_email_address,
      :business_email_address,
      :address,
      :shipping_address,
      :mailing_address,
      :billing_address,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         uri: "string1To255", # required
    #         object_type_name: "typeName", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI of the S3 bucket or any other type of data source.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutIntegrationRequest AWS API Documentation
    #
    class PutIntegrationRequest < Struct.new(
      :domain_name,
      :uri,
      :object_type_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI of the S3 bucket or any other type of data source.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutIntegrationResponse AWS API Documentation
    #
    class PutIntegrationResponse < Struct.new(
      :domain_name,
      :uri,
      :object_type_name,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutProfileObjectRequest
    #   data as a hash:
    #
    #       {
    #         object_type_name: "typeName", # required
    #         object: "stringifiedJson", # required
    #         domain_name: "name", # required
    #       }
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] object
    #   A string that is serialized from a JSON object.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutProfileObjectRequest AWS API Documentation
    #
    class PutProfileObjectRequest < Struct.new(
      :object_type_name,
      :object,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_object_unique_key
    #   The unique identifier of the profile object generated by the
    #   service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutProfileObjectResponse AWS API Documentation
    #
    class PutProfileObjectResponse < Struct.new(
      :profile_object_unique_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutProfileObjectTypeRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         object_type_name: "typeName", # required
    #         description: "text", # required
    #         template_id: "name",
    #         expiration_days: 1,
    #         encryption_key: "encryptionKey",
    #         allow_profile_creation: false,
    #         fields: {
    #           "name" => {
    #             source: "text",
    #             target: "text",
    #             content_type: "STRING", # accepts STRING, NUMBER, PHONE_NUMBER, EMAIL_ADDRESS, NAME
    #           },
    #         },
    #         keys: {
    #           "name" => [
    #             {
    #               standard_identifiers: ["PROFILE"], # accepts PROFILE, UNIQUE, SECONDARY, LOOKUP_ONLY, NEW_ONLY
    #               field_names: ["name"],
    #             },
    #           ],
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   A unique identifier for the object template.
    #   @return [String]
    #
    # @!attribute [rw] expiration_days
    #   The number of days until the data in the object expires.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key
    #   The customer-provided key to encrypt the profile object that will be
    #   created in this profile object type.
    #   @return [String]
    #
    # @!attribute [rw] allow_profile_creation
    #   Indicates whether a profile should be created when data is received
    #   if one doesn’t exist for an object of this type. The default is
    #   `FALSE`. If the AllowProfileCreation flag is set to `FALSE`, then
    #   the service tries to fetch a standard profile and associate this
    #   object with the profile. If it is set to `TRUE`, and if no match is
    #   found, then the service creates a new standard profile.
    #   @return [Boolean]
    #
    # @!attribute [rw] fields
    #   A map of the name and ObjectType field.
    #   @return [Hash<String,Types::ObjectTypeField>]
    #
    # @!attribute [rw] keys
    #   A list of unique keys that can be used to map data to the profile.
    #   @return [Hash<String,Array<Types::ObjectTypeKey>>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutProfileObjectTypeRequest AWS API Documentation
    #
    class PutProfileObjectTypeRequest < Struct.new(
      :domain_name,
      :object_type_name,
      :description,
      :template_id,
      :expiration_days,
      :encryption_key,
      :allow_profile_creation,
      :fields,
      :keys,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   A unique identifier for the object template.
    #   @return [String]
    #
    # @!attribute [rw] expiration_days
    #   The number of days until the data in the object expires.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key
    #   The customer-provided key to encrypt the profile object that will be
    #   created in this profile object type.
    #   @return [String]
    #
    # @!attribute [rw] allow_profile_creation
    #   Indicates whether a profile should be created when data is received
    #   if one doesn’t exist for an object of this type. The default is
    #   `FALSE`. If the AllowProfileCreation flag is set to `FALSE`, then
    #   the service tries to fetch a standard profile and associate this
    #   object with the profile. If it is set to `TRUE`, and if no match is
    #   found, then the service creates a new standard profile.
    #   @return [Boolean]
    #
    # @!attribute [rw] fields
    #   A map of the name and ObjectType field.
    #   @return [Hash<String,Types::ObjectTypeField>]
    #
    # @!attribute [rw] keys
    #   A list of unique keys that can be used to map data to the profile.
    #   @return [Hash<String,Array<Types::ObjectTypeKey>>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutProfileObjectTypeResponse AWS API Documentation
    #
    class PutProfileObjectTypeResponse < Struct.new(
      :object_type_name,
      :description,
      :template_id,
      :expiration_days,
      :encryption_key,
      :allow_profile_creation,
      :fields,
      :keys,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource does not exist, or access was denied.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchProfilesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "token",
    #         max_results: 1,
    #         domain_name: "name", # required
    #         key_name: "name", # required
    #         values: ["string1To255"], # required
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous SearchProfiles API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   A searchable identifier of a customer profile. The predefined keys
    #   you can use to search include: \_account, \_profileId, \_fullName,
    #   \_phone, \_email, \_ctrContactId, \_marketoLeadId,
    #   \_salesforceAccountId, \_salesforceContactId, \_zendeskUserId,
    #   \_zendeskExternalId, \_serviceNowSystemId.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of key values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/SearchProfilesRequest AWS API Documentation
    #
    class SearchProfilesRequest < Struct.new(
      :next_token,
      :max_results,
      :domain_name,
      :key_name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of SearchProfiles instances.
    #   @return [Array<Types::Profile>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous SearchProfiles API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/SearchProfilesResponse AWS API Documentation
    #
    class SearchProfilesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TagArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource that you're adding tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # You exceeded the maximum number of requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TagArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource from which you are removing tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Updates associated with the address properties of a customer profile.
    #
    # @note When making an API call, you may pass UpdateAddress
    #   data as a hash:
    #
    #       {
    #         address_1: "string0To255",
    #         address_2: "string0To255",
    #         address_3: "string0To255",
    #         address_4: "string0To255",
    #         city: "string0To255",
    #         county: "string0To255",
    #         state: "string0To255",
    #         province: "string0To255",
    #         country: "string0To255",
    #         postal_code: "string0To255",
    #       }
    #
    # @!attribute [rw] address_1
    #   The first line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] address_2
    #   The second line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] address_3
    #   The third line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] address_4
    #   The fourth line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] county
    #   The county in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] province
    #   The province in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code of a customer address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateAddress AWS API Documentation
    #
    class UpdateAddress < Struct.new(
      :address_1,
      :address_2,
      :address_3,
      :address_4,
      :city,
      :county,
      :state,
      :province,
      :country,
      :postal_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         default_expiration_days: 1,
    #         default_encryption_key: "encryptionKey",
    #         dead_letter_queue_url: "sqsQueueUrl",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The unique name for the domain.
    #   @return [String]
    #
    # @!attribute [rw] default_expiration_days
    #   The default number of days until the data within the domain expires.
    #   @return [Integer]
    #
    # @!attribute [rw] default_encryption_key
    #   The default encryption key, which is an AWS managed key, is used
    #   when no specific type of encryption key is specified. It is used to
    #   encrypt all data before it is placed in permanent or semi-permanent
    #   storage. If specified as an empty string, it will clear any existing
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_queue_url
    #   The URL of the SQS dead letter queue, which is used for reporting
    #   errors associated with ingesting data from third party applications.
    #   If specified as an empty string, it will clear any existing value.
    #   You must set up a policy on the DeadLetterQueue for the SendMessage
    #   operation to enable Amazon Connect Customer Profiles to send
    #   messages to the DeadLetterQueue.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateDomainRequest AWS API Documentation
    #
    class UpdateDomainRequest < Struct.new(
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name for the domain.
    #   @return [String]
    #
    # @!attribute [rw] default_expiration_days
    #   The default number of days until the data within the domain expires.
    #   @return [Integer]
    #
    # @!attribute [rw] default_encryption_key
    #   The default encryption key, which is an AWS managed key, is used
    #   when no specific type of encryption key is specified. It is used to
    #   encrypt all data before it is placed in permanent or semi-permanent
    #   storage.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_queue_url
    #   The URL of the SQS dead letter queue, which is used for reporting
    #   errors associated with ingesting data from third party applications.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateDomainResponse AWS API Documentation
    #
    class UpdateDomainResponse < Struct.new(
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateProfileRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         profile_id: "uuid", # required
    #         additional_information: "string0To1000",
    #         account_number: "string0To255",
    #         party_type: "INDIVIDUAL", # accepts INDIVIDUAL, BUSINESS, OTHER
    #         business_name: "string0To255",
    #         first_name: "string0To255",
    #         middle_name: "string0To255",
    #         last_name: "string0To255",
    #         birth_date: "string0To255",
    #         gender: "MALE", # accepts MALE, FEMALE, UNSPECIFIED
    #         phone_number: "string0To255",
    #         mobile_phone_number: "string0To255",
    #         home_phone_number: "string0To255",
    #         business_phone_number: "string0To255",
    #         email_address: "string0To255",
    #         personal_email_address: "string0To255",
    #         business_email_address: "string0To255",
    #         address: {
    #           address_1: "string0To255",
    #           address_2: "string0To255",
    #           address_3: "string0To255",
    #           address_4: "string0To255",
    #           city: "string0To255",
    #           county: "string0To255",
    #           state: "string0To255",
    #           province: "string0To255",
    #           country: "string0To255",
    #           postal_code: "string0To255",
    #         },
    #         shipping_address: {
    #           address_1: "string0To255",
    #           address_2: "string0To255",
    #           address_3: "string0To255",
    #           address_4: "string0To255",
    #           city: "string0To255",
    #           county: "string0To255",
    #           state: "string0To255",
    #           province: "string0To255",
    #           country: "string0To255",
    #           postal_code: "string0To255",
    #         },
    #         mailing_address: {
    #           address_1: "string0To255",
    #           address_2: "string0To255",
    #           address_3: "string0To255",
    #           address_4: "string0To255",
    #           city: "string0To255",
    #           county: "string0To255",
    #           state: "string0To255",
    #           province: "string0To255",
    #           country: "string0To255",
    #           postal_code: "string0To255",
    #         },
    #         billing_address: {
    #           address_1: "string0To255",
    #           address_2: "string0To255",
    #           address_3: "string0To255",
    #           address_4: "string0To255",
    #           city: "string0To255",
    #           county: "string0To255",
    #           state: "string0To255",
    #           province: "string0To255",
    #           country: "string0To255",
    #           postal_code: "string0To255",
    #         },
    #         attributes: {
    #           "string1To255" => "string0To255",
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] additional_information
    #   Any additional information relevant to the customer's profile.
    #   @return [String]
    #
    # @!attribute [rw] account_number
    #   A unique account number that you have given to the customer.
    #   @return [String]
    #
    # @!attribute [rw] party_type
    #   The type of profile used to describe the customer.
    #   @return [String]
    #
    # @!attribute [rw] business_name
    #   The name of the customer’s business.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The customer’s first name.
    #   @return [String]
    #
    # @!attribute [rw] middle_name
    #   The customer’s middle name.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The customer’s last name.
    #   @return [String]
    #
    # @!attribute [rw] birth_date
    #   The customer’s birth date.
    #   @return [String]
    #
    # @!attribute [rw] gender
    #   The gender with which the customer identifies.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The customer's phone number, which has not been specified as a
    #   mobile, home, or business number.
    #   @return [String]
    #
    # @!attribute [rw] mobile_phone_number
    #   The customer’s mobile phone number.
    #   @return [String]
    #
    # @!attribute [rw] home_phone_number
    #   The customer’s home phone number.
    #   @return [String]
    #
    # @!attribute [rw] business_phone_number
    #   The customer’s business phone number.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The customer's email address, which has not been specified as a
    #   personal or business address.
    #   @return [String]
    #
    # @!attribute [rw] personal_email_address
    #   The customer’s personal email address.
    #   @return [String]
    #
    # @!attribute [rw] business_email_address
    #   The customer’s business email address.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   A generic address associated with the customer that is not mailing,
    #   shipping, or billing.
    #   @return [Types::UpdateAddress]
    #
    # @!attribute [rw] shipping_address
    #   The customer’s shipping address.
    #   @return [Types::UpdateAddress]
    #
    # @!attribute [rw] mailing_address
    #   The customer’s mailing address.
    #   @return [Types::UpdateAddress]
    #
    # @!attribute [rw] billing_address
    #   The customer’s billing address.
    #   @return [Types::UpdateAddress]
    #
    # @!attribute [rw] attributes
    #   A key value pair of attributes of a customer profile.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateProfileRequest AWS API Documentation
    #
    class UpdateProfileRequest < Struct.new(
      :domain_name,
      :profile_id,
      :additional_information,
      :account_number,
      :party_type,
      :business_name,
      :first_name,
      :middle_name,
      :last_name,
      :birth_date,
      :gender,
      :phone_number,
      :mobile_phone_number,
      :home_phone_number,
      :business_phone_number,
      :email_address,
      :personal_email_address,
      :business_email_address,
      :address,
      :shipping_address,
      :mailing_address,
      :billing_address,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateProfileResponse AWS API Documentation
    #
    class UpdateProfileResponse < Struct.new(
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
