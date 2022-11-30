# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Account
  module Types

    # The operation failed because the calling identity doesn't have the
    # minimum required permissions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the details of an alternate contact
    # associated with an Amazon Web Services account
    #
    # @!attribute [rw] alternate_contact_type
    #   The type of alternate contact.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address associated with this alternate contact.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name associated with this alternate contact.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number associated with this alternate contact.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title associated with this alternate contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/AlternateContact AWS API Documentation
    #
    class AlternateContact < Struct.new(
      :alternate_contact_type,
      :email_address,
      :name,
      :phone_number,
      :title)
      SENSITIVE = [:email_address, :name, :phone_number, :title]
      include Aws::Structure
    end

    # Contains the details of the primary contact information associated
    # with an Amazon Web Services account.
    #
    # @!attribute [rw] address_line_1
    #   The first line of the primary contact address.
    #   @return [String]
    #
    # @!attribute [rw] address_line_2
    #   The second line of the primary contact address, if any.
    #   @return [String]
    #
    # @!attribute [rw] address_line_3
    #   The third line of the primary contact address, if any.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city of the primary contact address.
    #   @return [String]
    #
    # @!attribute [rw] company_name
    #   The name of the company associated with the primary contact
    #   information, if any.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   The ISO-3166 two-letter country code for the primary contact
    #   address.
    #   @return [String]
    #
    # @!attribute [rw] district_or_county
    #   The district or county of the primary contact address, if any.
    #   @return [String]
    #
    # @!attribute [rw] full_name
    #   The full name of the primary contact address.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number of the primary contact information. The number will
    #   be validated and, in some countries, checked for activation.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code of the primary contact address.
    #   @return [String]
    #
    # @!attribute [rw] state_or_region
    #   The state or region of the primary contact address. This field is
    #   required in selected countries.
    #   @return [String]
    #
    # @!attribute [rw] website_url
    #   The URL of the website associated with the primary contact
    #   information, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/ContactInformation AWS API Documentation
    #
    class ContactInformation < Struct.new(
      :address_line_1,
      :address_line_2,
      :address_line_3,
      :city,
      :company_name,
      :country_code,
      :district_or_county,
      :full_name,
      :phone_number,
      :postal_code,
      :state_or_region,
      :website_url)
      SENSITIVE = [:address_line_1, :address_line_2, :address_line_3, :city, :company_name, :country_code, :district_or_county, :full_name, :phone_number, :postal_code, :state_or_region, :website_url]
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Specifies the 12 digit account ID number of the Amazon Web Services
    #   account that you want to access or modify with this operation.
    #
    #   If you do not specify this parameter, it defaults to the Amazon Web
    #   Services account of the identity used to call the operation.
    #
    #   To use this parameter, the caller must be an identity in the
    #   [organization's management account][1] or a delegated administrator
    #   account, and the specified account ID must be a member account in
    #   the same organization. The organization must have [all features
    #   enabled][2], and the organization must have [trusted access][3]
    #   enabled for the Account Management service, and optionally a
    #   [delegated admin][4] account assigned.
    #
    #   <note markdown="1"> The management account can't specify its own `AccountId`; it must
    #   call the operation in standalone context by not including the
    #   `AccountId` parameter.
    #
    #    </note>
    #
    #   To call this operation on an account that is not a member of an
    #   organization, then don't specify this parameter, and call the
    #   operation using an identity belonging to the account whose contacts
    #   you wish to retrieve or modify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html
    #   [4]: https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html
    #   @return [String]
    #
    # @!attribute [rw] alternate_contact_type
    #   Specifies which of the alternate contacts to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/DeleteAlternateContactRequest AWS API Documentation
    #
    class DeleteAlternateContactRequest < Struct.new(
      :account_id,
      :alternate_contact_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Specifies the 12 digit account ID number of the Amazon Web Services
    #   account that you want to access or modify with this operation.
    #
    #   If you do not specify this parameter, it defaults to the Amazon Web
    #   Services account of the identity used to call the operation.
    #
    #   To use this parameter, the caller must be an identity in the
    #   [organization's management account][1] or a delegated administrator
    #   account, and the specified account ID must be a member account in
    #   the same organization. The organization must have [all features
    #   enabled][2], and the organization must have [trusted access][3]
    #   enabled for the Account Management service, and optionally a
    #   [delegated admin][4] account assigned.
    #
    #   <note markdown="1"> The management account can't specify its own `AccountId`; it must
    #   call the operation in standalone context by not including the
    #   `AccountId` parameter.
    #
    #    </note>
    #
    #   To call this operation on an account that is not a member of an
    #   organization, then don't specify this parameter, and call the
    #   operation using an identity belonging to the account whose contacts
    #   you wish to retrieve or modify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html
    #   [4]: https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html
    #   @return [String]
    #
    # @!attribute [rw] alternate_contact_type
    #   Specifies which alternate contact you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/GetAlternateContactRequest AWS API Documentation
    #
    class GetAlternateContactRequest < Struct.new(
      :account_id,
      :alternate_contact_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alternate_contact
    #   A structure that contains the details for the specified alternate
    #   contact.
    #   @return [Types::AlternateContact]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/GetAlternateContactResponse AWS API Documentation
    #
    class GetAlternateContactResponse < Struct.new(
      :alternate_contact)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Specifies the 12-digit account ID number of the Amazon Web Services
    #   account that you want to access or modify with this operation. If
    #   you don't specify this parameter, it defaults to the Amazon Web
    #   Services account of the identity used to call the operation. To use
    #   this parameter, the caller must be an identity in the
    #   [organization's management account][1] or a delegated administrator
    #   account. The specified account ID must also be a member account in
    #   the same organization. The organization must have [all features
    #   enabled][2], and the organization must have [trusted access][3]
    #   enabled for the Account Management service, and optionally a
    #   [delegated admin][4] account assigned.
    #
    #   <note markdown="1"> The management account can't specify its own `AccountId`. It must
    #   call the operation in standalone context by not including the
    #   `AccountId` parameter.
    #
    #    </note>
    #
    #   To call this operation on an account that is not a member of an
    #   organization, don't specify this parameter. Instead, call the
    #   operation using an identity belonging to the account whose contacts
    #   you wish to retrieve or modify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html
    #   [4]: https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/GetContactInformationRequest AWS API Documentation
    #
    class GetContactInformationRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_information
    #   Contains the details of the primary contact information associated
    #   with an Amazon Web Services account.
    #   @return [Types::ContactInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/GetContactInformationResponse AWS API Documentation
    #
    class GetContactInformationResponse < Struct.new(
      :contact_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because of an error internal to Amazon Web
    # Services. Try your operation again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Specifies the 12 digit account ID number of the Amazon Web Services
    #   account that you want to access or modify with this operation.
    #
    #   If you do not specify this parameter, it defaults to the Amazon Web
    #   Services account of the identity used to call the operation.
    #
    #   To use this parameter, the caller must be an identity in the
    #   [organization's management account][1] or a delegated administrator
    #   account, and the specified account ID must be a member account in
    #   the same organization. The organization must have [all features
    #   enabled][2], and the organization must have [trusted access][3]
    #   enabled for the Account Management service, and optionally a
    #   [delegated admin][4] account assigned.
    #
    #   <note markdown="1"> The management account can't specify its own `AccountId`; it must
    #   call the operation in standalone context by not including the
    #   `AccountId` parameter.
    #
    #    </note>
    #
    #   To call this operation on an account that is not a member of an
    #   organization, then don't specify this parameter, and call the
    #   operation using an identity belonging to the account whose contacts
    #   you wish to retrieve or modify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html
    #   [4]: https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html
    #   @return [String]
    #
    # @!attribute [rw] alternate_contact_type
    #   Specifies which alternate contact you want to create or update.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   Specifies an email address for the alternate contact.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies a name for the alternate contact.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   Specifies a phone number for the alternate contact.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Specifies a title for the alternate contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/PutAlternateContactRequest AWS API Documentation
    #
    class PutAlternateContactRequest < Struct.new(
      :account_id,
      :alternate_contact_type,
      :email_address,
      :name,
      :phone_number,
      :title)
      SENSITIVE = [:email_address, :name, :phone_number, :title]
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Specifies the 12-digit account ID number of the Amazon Web Services
    #   account that you want to access or modify with this operation. If
    #   you don't specify this parameter, it defaults to the Amazon Web
    #   Services account of the identity used to call the operation. To use
    #   this parameter, the caller must be an identity in the
    #   [organization's management account][1] or a delegated administrator
    #   account. The specified account ID must also be a member account in
    #   the same organization. The organization must have [all features
    #   enabled][2], and the organization must have [trusted access][3]
    #   enabled for the Account Management service, and optionally a
    #   [delegated admin][4] account assigned.
    #
    #   <note markdown="1"> The management account can't specify its own `AccountId`. It must
    #   call the operation in standalone context by not including the
    #   `AccountId` parameter.
    #
    #    </note>
    #
    #   To call this operation on an account that is not a member of an
    #   organization, don't specify this parameter. Instead, call the
    #   operation using an identity belonging to the account whose contacts
    #   you wish to retrieve or modify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html
    #   [4]: https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html
    #   @return [String]
    #
    # @!attribute [rw] contact_information
    #   Contains the details of the primary contact information associated
    #   with an Amazon Web Services account.
    #   @return [Types::ContactInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/PutContactInformationRequest AWS API Documentation
    #
    class PutContactInformationRequest < Struct.new(
      :account_id,
      :contact_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because it specified a resource that can't be
    # found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because it was called too frequently and exceeded
    # a throttle limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because one of the input parameters was invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
