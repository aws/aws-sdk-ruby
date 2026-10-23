# frozen_string_literal: true

# This is generated code!

module Aws::Account
  # This module contains the types returned by client operations.
  module Types

    # @!attribute account_id
    #   <p>Specifies the 12-digit account ID number of the Amazon Web Services account that you want to access or modify with this operation. To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account. The specified account ID must be a member account in the same organization. The organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">trusted access</a> enabled for the Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#delegated-admin">delegated admin</a> account assigned.</p> <p>This operation can only be called from the management account or the delegated administrator account of an organization for a member account.</p> <note> <p>The management account can't specify its own <code>AccountId</code>.</p> </note>
    #   @return [String]
    # @!attribute primary_email
    #   <p>The new primary email address for use with the specified account. This must match the <code>PrimaryEmail</code> from the <code>StartPrimaryEmailUpdate</code> API call.</p>
    #   @return [String]
    # @!attribute otp
    #   <p>The OTP code sent to the <code>PrimaryEmail</code> specified on the <code>StartPrimaryEmailUpdate</code> API call.</p>
    #   @return [String]
    class AcceptPrimaryEmailUpdateRequest < Struct.new(
      nil,
      :account_id,
      :primary_email,
      :otp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>Retrieves the status of the accepted primary email update request.</p>
    #   @return [String]
    class AcceptPrimaryEmailUpdateResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because the calling identity doesn't have the minimum required permissions.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute error_type
    #   <p>The value populated to the <code>x-amzn-ErrorType</code> response header by API Gateway.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      :error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the details of an alternate contact associated with an Amazon Web Services account</p>
    # @!attribute name
    #   <p>The name associated with this alternate contact.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title associated with this alternate contact.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The email address associated with this alternate contact.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number associated with this alternate contact.</p>
    #   @return [String]
    # @!attribute alternate_contact_type
    #   <p>The type of alternate contact.</p>
    #   @return [String]
    class AlternateContact < Struct.new(
      nil,
      :name,
      :title,
      :email_address,
      :phone_number,
      :alternate_contact_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be processed because of a conflict in the current status of the resource. For example, this happens if you try to enable a Region that is currently being disabled (in a status of DISABLING) or if you try to change an account’s root user email to an email address which is already in use.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute error_type
    #   <p>The value populated to the <code>x-amzn-ErrorType</code> response header by API Gateway.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of the primary contact information associated with an Amazon Web Services account.</p>
    # @!attribute full_name
    #   <p>The full name of the primary contact address.</p>
    #   @return [String]
    # @!attribute address_line1
    #   <p>The first line of the primary contact address.</p>
    #   @return [String]
    # @!attribute address_line2
    #   <p>The second line of the primary contact address, if any.</p>
    #   @return [String]
    # @!attribute address_line3
    #   <p>The third line of the primary contact address, if any.</p>
    #   @return [String]
    # @!attribute city
    #   <p>The city of the primary contact address.</p>
    #   @return [String]
    # @!attribute state_or_region
    #   <p>The state or region of the primary contact address. If the mailing address is within the United States (US), the value in this field can be either a two character state code (for example, <code>NJ</code>) or the full state name (for example, <code>New Jersey</code>). This field is required in the following countries: <code>US</code>, <code>CA</code>, <code>GB</code>, <code>DE</code>, <code>JP</code>, <code>IN</code>, and <code>BR</code>.</p>
    #   @return [String]
    # @!attribute district_or_county
    #   <p>The district or county of the primary contact address, if any.</p>
    #   @return [String]
    # @!attribute postal_code
    #   <p>The postal code of the primary contact address.</p>
    #   @return [String]
    # @!attribute country_code
    #   <p>The ISO-3166 two-letter country code for the primary contact address.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number of the primary contact information. The number will be validated and, in some countries, checked for activation.</p>
    #   @return [String]
    # @!attribute company_name
    #   <p>The name of the company associated with the primary contact information, if any.</p>
    #   @return [String]
    # @!attribute website_url
    #   <p>The URL of the website associated with the primary contact information, if any.</p>
    #   @return [String]
    class ContactInformation < Struct.new(
      nil,
      :full_name,
      :address_line1,
      :address_line2,
      :address_line3,
      :city,
      :state_or_region,
      :district_or_county,
      :postal_code,
      :country_code,
      :phone_number,
      :company_name,
      :website_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alternate_contact_type
    #   <p>Specifies which of the alternate contacts to delete. </p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Specifies the 12 digit account ID number of the Amazon Web Services account that you want to access or modify with this operation.</p> <p>If you do not specify this parameter, it defaults to the Amazon Web Services account of the identity used to call the operation.</p> <p>To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account, and the specified account ID must be a member account in the same organization. The organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html">trusted access</a> enabled for the Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html">delegated admin</a> account assigned.</p> <note> <p>The management account can't specify its own <code>AccountId</code>; it must call the operation in standalone context by not including the <code>AccountId</code> parameter.</p> </note> <p>To call this operation on an account that is not a member of an organization, then don't specify this parameter, and call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.</p>
    #   @return [String]
    class DeleteAlternateContactRequest < Struct.new(
      nil,
      :alternate_contact_type,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Specifies the 12-digit account ID number of the Amazon Web Services account that you want to access or modify with this operation. If you don't specify this parameter, it defaults to the Amazon Web Services account of the identity used to call the operation. To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account. The specified account ID must be a member account in the same organization. The organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">trusted access</a> enabled for the Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#delegated-admin">delegated admin</a> account assigned.</p> <note> <p>The management account can't specify its own <code>AccountId</code>. It must call the operation in standalone context by not including the <code>AccountId</code> parameter.</p> </note> <p>To call this operation on an account that is not a member of an organization, don't specify this parameter. Instead, call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>Specifies the Region-code for a given Region name (for example, <code>af-south-1</code>). When you disable a Region, Amazon Web Services performs actions to deactivate that Region in your account, such as destroying IAM resources in the Region. This process takes a few minutes for most accounts, but this can take several hours. You cannot enable the Region until the disabling process is fully completed.</p>
    #   @return [String]
    class DisableRegionRequest < Struct.new(
      nil,
      :account_id,
      :region_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Specifies the 12-digit account ID number of the Amazon Web Services account that you want to access or modify with this operation. If you don't specify this parameter, it defaults to the Amazon Web Services account of the identity used to call the operation. To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account. The specified account ID must be a member account in the same organization. The organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">trusted access</a> enabled for the Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#delegated-admin">delegated admin</a> account assigned.</p> <note> <p>The management account can't specify its own <code>AccountId</code>. It must call the operation in standalone context by not including the <code>AccountId</code> parameter.</p> </note> <p>To call this operation on an account that is not a member of an organization, don't specify this parameter. Instead, call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>Specifies the Region-code for a given Region name (for example, <code>af-south-1</code>). When you enable a Region, Amazon Web Services performs actions to prepare your account in that Region, such as distributing your IAM resources to the Region. This process takes a few minutes for most accounts, but it can take several hours. You cannot use the Region until this process is complete. Furthermore, you cannot disable the Region until the enabling process is fully completed.</p>
    #   @return [String]
    class EnableRegionRequest < Struct.new(
      nil,
      :account_id,
      :region_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Specifies the 12 digit account ID number of the Amazon Web Services account that you want to access or modify with this operation.</p> <p>If you do not specify this parameter, it defaults to the Amazon Web Services account of the identity used to call the operation.</p> <p>To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account, and the specified account ID must be a member account in the same organization. The organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html">trusted access</a> enabled for the Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html">delegated admin</a> account assigned.</p> <note> <p>The management account can't specify its own <code>AccountId</code>; it must call the operation in standalone context by not including the <code>AccountId</code> parameter.</p> </note> <p>To call this operation on an account that is not a member of an organization, then don't specify this parameter, and call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.</p>
    #   @return [String]
    class GetAccountInformationRequest < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Specifies the 12-digit account ID number of the Amazon Web Services account that you want to access or modify with this operation. To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account. The specified account ID must be a member account in the same organization. The organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">trusted access</a> enabled for the Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#delegated-admin">delegated admin</a> account assigned.</p> <p>This operation can only be called from the management account or the delegated administrator account of an organization for a member account.</p> <note> <p>The management account can't specify its own <code>AccountId</code>.</p> </note>
    #   @return [String]
    # @!attribute account_name
    #   <p>The name of the account.</p>
    #   @return [String]
    # @!attribute account_created_date
    #   <p>The date and time the account was created.</p>
    #   @return [Time]
    class GetAccountInformationResponse < Struct.new(
      nil,
      :account_id,
      :account_name,
      :account_created_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alternate_contact_type
    #   <p>Specifies which alternate contact you want to retrieve.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Specifies the 12 digit account ID number of the Amazon Web Services account that you want to access or modify with this operation.</p> <p>If you do not specify this parameter, it defaults to the Amazon Web Services account of the identity used to call the operation.</p> <p>To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account, and the specified account ID must be a member account in the same organization. The organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html">trusted access</a> enabled for the Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html">delegated admin</a> account assigned.</p> <note> <p>The management account can't specify its own <code>AccountId</code>; it must call the operation in standalone context by not including the <code>AccountId</code> parameter.</p> </note> <p>To call this operation on an account that is not a member of an organization, then don't specify this parameter, and call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.</p>
    #   @return [String]
    class GetAlternateContactRequest < Struct.new(
      nil,
      :alternate_contact_type,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alternate_contact
    #   <p>A structure that contains the details for the specified alternate contact.</p>
    #   @return [Types::AlternateContact]
    class GetAlternateContactResponse < Struct.new(
      nil,
      :alternate_contact,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Specifies the 12-digit account ID number of the Amazon Web Services account that you want to access or modify with this operation. If you don't specify this parameter, it defaults to the Amazon Web Services account of the identity used to call the operation. To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account. The specified account ID must be a member account in the same organization. The organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">trusted access</a> enabled for the Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#delegated-admin">delegated admin</a> account assigned.</p> <note> <p>The management account can't specify its own <code>AccountId</code>. It must call the operation in standalone context by not including the <code>AccountId</code> parameter.</p> </note> <p>To call this operation on an account that is not a member of an organization, don't specify this parameter. Instead, call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.</p>
    #   @return [String]
    class GetContactInformationRequest < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_information
    #   <p>Contains the details of the primary contact information associated with an Amazon Web Services account.</p>
    #   @return [Types::ContactInformation]
    class GetContactInformationResponse < Struct.new(
      nil,
      :contact_information,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Specifies the 12-digit account ID number of the Amazon Web Services account that you want to access or modify with this operation. To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account. The specified account ID must be a member account in the same organization. The organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">trusted access</a> enabled for the Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#delegated-admin">delegated admin</a> account assigned.</p> <p>This operation can only be called from the management account or the delegated administrator account of an organization for a member account.</p> <note> <p>The management account can't specify its own <code>AccountId</code>.</p> </note>
    #   @return [String]
    class GetPrimaryEmailRequest < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute primary_email
    #   <p>Retrieves the primary email address associated with the specified account.</p>
    #   @return [String]
    class GetPrimaryEmailResponse < Struct.new(
      nil,
      :primary_email,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Specifies the 12-digit account ID number of the Amazon Web Services account that you want to access or modify with this operation. If you don't specify this parameter, it defaults to the Amazon Web Services account of the identity used to call the operation. To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account. The specified account ID must be a member account in the same organization. The organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">trusted access</a> enabled for the Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#delegated-admin">delegated admin</a> account assigned.</p> <note> <p>The management account can't specify its own <code>AccountId</code>. It must call the operation in standalone context by not including the <code>AccountId</code> parameter.</p> </note> <p>To call this operation on an account that is not a member of an organization, don't specify this parameter. Instead, call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>Specifies the Region-code for a given Region name (for example, <code>af-south-1</code>). This function will return the status of whatever Region you pass into this parameter. </p>
    #   @return [String]
    class GetRegionOptStatusRequest < Struct.new(
      nil,
      :account_id,
      :region_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute region_name
    #   <p>The Region code that was passed in.</p>
    #   @return [String]
    # @!attribute region_opt_status
    #   <p>One of the potential statuses a Region can undergo (Enabled, Enabling, Disabled, Disabling, Enabled_By_Default).</p>
    #   @return [String]
    class GetRegionOptStatusResponse < Struct.new(
      nil,
      :region_name,
      :region_opt_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because of an error internal to Amazon Web Services. Try your operation again later.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute error_type
    #   <p>The value populated to the <code>x-amzn-ErrorType</code> response header by API Gateway.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Specifies the 12-digit account ID number of the Amazon Web Services account that you want to access or modify with this operation. If you don't specify this parameter, it defaults to the Amazon Web Services account of the identity used to call the operation. To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account. The specified account ID must be a member account in the same organization. The organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">trusted access</a> enabled for the Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#delegated-admin">delegated admin</a> account assigned.</p> <note> <p>The management account can't specify its own <code>AccountId</code>. It must call the operation in standalone context by not including the <code>AccountId</code> parameter.</p> </note> <p>To call this operation on an account that is not a member of an organization, don't specify this parameter. Instead, call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of items to return in the command’s output. If the total number of items available is more than the value specified, a <code>NextToken</code> is provided in the command’s output. To resume pagination, provide the <code>NextToken</code> value in the <code>starting-token</code> argument of a subsequent command. Do not use the <code>NextToken</code> response element directly outside of the Amazon Web Services CLI. For usage examples, see <a href="http://docs.aws.amazon.com/cli/latest/userguide/pagination.html">Pagination</a> in the <i>Amazon Web Services Command Line Interface User Guide</i>. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used to specify where to start paginating. This is the <code>NextToken</code> from a previously truncated response. For usage examples, see <a href="http://docs.aws.amazon.com/cli/latest/userguide/pagination.html">Pagination</a> in the <i>Amazon Web Services Command Line Interface User Guide</i>.</p>
    #   @return [String]
    # @!attribute region_opt_status_contains
    #   <p>A list of Region statuses (Enabling, Enabled, Disabling, Disabled, Enabled_by_default) to use to filter the list of Regions for a given account. For example, passing in a value of ENABLING will only return a list of Regions with a Region status of ENABLING.</p>
    #   @return [Array<String>]
    class ListRegionsRequest < Struct.new(
      nil,
      :account_id,
      :max_results,
      :next_token,
      :region_opt_status_contains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there is more data to be returned, this will be populated. It should be passed into the <code>next-token</code> request parameter of <code>list-regions</code>.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>This is a list of Regions for a given account, or if the filtered parameter was used, a list of Regions that match the filter criteria set in the <code>filter</code> parameter.</p>
    #   @return [Array<Types::Region>]
    class ListRegionsResponse < Struct.new(
      nil,
      :next_token,
      :regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_name
    #   <p>The name of the account.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Specifies the 12 digit account ID number of the Amazon Web Services account that you want to access or modify with this operation.</p> <p>If you do not specify this parameter, it defaults to the Amazon Web Services account of the identity used to call the operation.</p> <p>To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account, and the specified account ID must be a member account in the same organization. The organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html">trusted access</a> enabled for the Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html">delegated admin</a> account assigned.</p> <note> <p>The management account can't specify its own <code>AccountId</code>; it must call the operation in standalone context by not including the <code>AccountId</code> parameter.</p> </note> <p>To call this operation on an account that is not a member of an organization, then don't specify this parameter, and call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.</p>
    #   @return [String]
    class PutAccountNameRequest < Struct.new(
      nil,
      :account_name,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Specifies a name for the alternate contact.</p>
    #   @return [String]
    # @!attribute title
    #   <p>Specifies a title for the alternate contact.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>Specifies an email address for the alternate contact. </p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>Specifies a phone number for the alternate contact.</p>
    #   @return [String]
    # @!attribute alternate_contact_type
    #   <p>Specifies which alternate contact you want to create or update.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Specifies the 12 digit account ID number of the Amazon Web Services account that you want to access or modify with this operation.</p> <p>If you do not specify this parameter, it defaults to the Amazon Web Services account of the identity used to call the operation.</p> <p>To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account, and the specified account ID must be a member account in the same organization. The organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html">trusted access</a> enabled for the Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html">delegated admin</a> account assigned.</p> <note> <p>The management account can't specify its own <code>AccountId</code>; it must call the operation in standalone context by not including the <code>AccountId</code> parameter.</p> </note> <p>To call this operation on an account that is not a member of an organization, then don't specify this parameter, and call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.</p>
    #   @return [String]
    class PutAlternateContactRequest < Struct.new(
      nil,
      :name,
      :title,
      :email_address,
      :phone_number,
      :alternate_contact_type,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_information
    #   <p>Contains the details of the primary contact information associated with an Amazon Web Services account.</p>
    #   @return [Types::ContactInformation]
    # @!attribute account_id
    #   <p>Specifies the 12-digit account ID number of the Amazon Web Services account that you want to access or modify with this operation. If you don't specify this parameter, it defaults to the Amazon Web Services account of the identity used to call the operation. To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account. The specified account ID must be a member account in the same organization. The organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">trusted access</a> enabled for the Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#delegated-admin">delegated admin</a> account assigned.</p> <note> <p>The management account can't specify its own <code>AccountId</code>. It must call the operation in standalone context by not including the <code>AccountId</code> parameter.</p> </note> <p>To call this operation on an account that is not a member of an organization, don't specify this parameter. Instead, call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.</p>
    #   @return [String]
    class PutContactInformationRequest < Struct.new(
      nil,
      :contact_information,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This is a structure that expresses the Region for a given account, consisting of a name and opt-in status.</p>
    # @!attribute region_name
    #   <p>The Region code of a given Region (for example, <code>us-east-1</code>).</p>
    #   @return [String]
    # @!attribute region_opt_status
    #   <p>One of potential statuses a Region can undergo (Enabled, Enabling, Disabled, Disabling, Enabled_By_Default).</p>
    #   @return [String]
    class Region < Struct.new(
      nil,
      :region_name,
      :region_opt_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because it specified a resource that can't be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute error_type
    #   <p>The value populated to the <code>x-amzn-ErrorType</code> response header by API Gateway.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Specifies the 12-digit account ID number of the Amazon Web Services account that you want to access or modify with this operation. To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account. The specified account ID must be a member account in the same organization. The organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">trusted access</a> enabled for the Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#delegated-admin">delegated admin</a> account assigned.</p> <p>This operation can only be called from the management account or the delegated administrator account of an organization for a member account.</p> <note> <p>The management account can't specify its own <code>AccountId</code>.</p> </note>
    #   @return [String]
    # @!attribute primary_email
    #   <p>The new primary email address (also known as the root user email address) to use in the specified account.</p>
    #   @return [String]
    class StartPrimaryEmailUpdateRequest < Struct.new(
      nil,
      :account_id,
      :primary_email,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the primary email update request.</p>
    #   @return [String]
    class StartPrimaryEmailUpdateResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because it was called too frequently and exceeded a throttle limit.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute error_type
    #   <p>The value populated to the <code>x-amzn-ErrorType</code> response header by API Gateway.</p>
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :message,
      :error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because one of the input parameters was invalid.</p>
    # @!attribute message
    #   <p>The message that informs you about what was invalid about the request.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason that validation failed.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The field where the invalid entry was detected.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input failed to meet the constraints specified by the Amazon Web Services service in a specified field.</p>
    # @!attribute name
    #   <p>The field name where the invalid entry was detected.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message about the validation exception.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
