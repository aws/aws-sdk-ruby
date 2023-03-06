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

    # The request could not be processed because of a conflict in the
    # current status of the resource. For example, this happens if you try
    # to enable a Region that is currently being disabled (in a status of
    # DISABLING).
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
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
    # @!attribute [rw] region_name
    #   Specifies the Region-code for a given Region name (for example,
    #   `af-south-1`). When you disable a Region, Amazon Web Services
    #   performs actions to deactivate that Region in your account, such as
    #   destroying IAM resources in the Region. This process takes a few
    #   minutes for most accounts, but this can take several hours. You
    #   cannot enable the Region until the disabling process is fully
    #   completed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/DisableRegionRequest AWS API Documentation
    #
    class DisableRegionRequest < Struct.new(
      :account_id,
      :region_name)
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
    # @!attribute [rw] region_name
    #   Specifies the Region-code for a given Region name (for example,
    #   `af-south-1`). When you enable a Region, Amazon Web Services
    #   performs actions to prepare your account in that Region, such as
    #   distributing your IAM resources to the Region. This process takes a
    #   few minutes for most accounts, but it can take several hours. You
    #   cannot use the Region until this process is complete. Furthermore,
    #   you cannot disable the Region until the enabling process is fully
    #   completed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/EnableRegionRequest AWS API Documentation
    #
    class EnableRegionRequest < Struct.new(
      :account_id,
      :region_name)
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
    # @!attribute [rw] region_name
    #   Specifies the Region-code for a given Region name (for example,
    #   `af-south-1`). This function will return the status of whatever
    #   Region you pass into this parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/GetRegionOptStatusRequest AWS API Documentation
    #
    class GetRegionOptStatusRequest < Struct.new(
      :account_id,
      :region_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] region_name
    #   The Region code that was passed in.
    #   @return [String]
    #
    # @!attribute [rw] region_opt_status
    #   One of the potential statuses a Region can undergo (Enabled,
    #   Enabling, Disabled, Disabling, Enabled\_By\_Default).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/GetRegionOptStatusResponse AWS API Documentation
    #
    class GetRegionOptStatusResponse < Struct.new(
      :region_name,
      :region_opt_status)
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
    # @!attribute [rw] max_results
    #   The total number of items to return in the command’s output. If the
    #   total number of items available is more than the value specified, a
    #   `NextToken` is provided in the command’s output. To resume
    #   pagination, provide the `NextToken` value in the `starting-token`
    #   argument of a subsequent command. Do not use the `NextToken`
    #   response element directly outside of the Amazon Web Services CLI.
    #   For usage examples, see [Pagination][1] in the *Amazon Web Services
    #   Command Line Interface User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/pagination.html
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used to specify where to start paginating. This is the
    #   `NextToken` from a previously truncated response. For usage
    #   examples, see [Pagination][1] in the *Amazon Web Services Command
    #   Line Interface User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/pagination.html
    #   @return [String]
    #
    # @!attribute [rw] region_opt_status_contains
    #   A list of Region statuses (Enabling, Enabled, Disabling, Disabled,
    #   Enabled\_by\_default) to use to filter the list of Regions for a
    #   given account. For example, passing in a value of ENABLING will only
    #   return a list of Regions with a Region status of ENABLING.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/ListRegionsRequest AWS API Documentation
    #
    class ListRegionsRequest < Struct.new(
      :account_id,
      :max_results,
      :next_token,
      :region_opt_status_contains)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there is more data to be returned, this will be populated. It
    #   should be passed into the `next-token` request parameter of
    #   `list-regions`.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   This is a list of Regions for a given account, or if the filtered
    #   parameter was used, a list of Regions that match the filter criteria
    #   set in the `filter` parameter.
    #   @return [Array<Types::Region>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/ListRegionsResponse AWS API Documentation
    #
    class ListRegionsResponse < Struct.new(
      :next_token,
      :regions)
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

    # This is a structure that expresses the Region for a given account,
    # consisting of a name and opt-in status.
    #
    # @!attribute [rw] region_name
    #   The Region code of a given Region (for example, `us-east-1`).
    #   @return [String]
    #
    # @!attribute [rw] region_opt_status
    #   One of potential statuses a Region can undergo (Enabled, Enabling,
    #   Disabled, Disabling, Enabled\_By\_Default).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/Region AWS API Documentation
    #
    class Region < Struct.new(
      :region_name,
      :region_opt_status)
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
    # @!attribute [rw] field_list
    #   The field where the invalid entry was detected.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   The message that informs you about what was invalid about the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that validation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message,
      :reason)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # The input failed to meet the constraints specified by the Amazon Web
    # Services service in a specified field.
    #
    # @!attribute [rw] message
    #   A message about the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The field name where the invalid entry was detected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = [:message]
      include Aws::Structure
    end

  end
end
