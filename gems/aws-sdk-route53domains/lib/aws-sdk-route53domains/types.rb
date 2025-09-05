# frozen_string_literal: true

# This is generated code!

module Aws::Route53Domains
  # This module contains the types returned by client operations.
  module Types

    # <p>The AcceptDomainTransferFromAnotherAwsAccount request includes the following
    # 			elements.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that was specified when another Amazon Web Services account
    #   			submitted a <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a> request. </p>
    #   @return [String]
    # @!attribute password
    #   <p>The password that was returned by the <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a> request. </p>
    #   @return [String]
    class AcceptDomainTransferFromAnotherAwsAccountRequest < Struct.new(
      :domain_name,
      :password,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The AcceptDomainTransferFromAnotherAwsAccount response includes the following
    # 			element.</p>
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status,
    #   			use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #   @return [String]
    class AcceptDomainTransferFromAnotherAwsAccountResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute signing_attributes
    #   <p>The information about a key, including the algorithm, public key-value, and
    #   			flags.</p>
    #   @return [Types::DnssecSigningAttributes]
    class AssociateDelegationSignerToDomainRequest < Struct.new(
      :domain_name,
      :signing_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The identifier for tracking the progress of the request. To query the operation
    #   			status, use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #   @return [String]
    class AssociateDelegationSignerToDomainResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information for one billing record.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that the billing record applies to. If the domain name contains
    #   			characters other than a-z, 0-9, and - (hyphen), such as an internationalized domain
    #   			name, then this value is in Punycode. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html">DNS
    #   				Domain Name Format</a> in the <i>Amazon Route 53 Developer
    #   				Guide</i>.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The operation that you were charged for.</p>
    #   @return [String]
    # @!attribute invoice_id
    #   <p>Deprecated property. This field is retained in report structure for backwards compatibility, but will appear blank.</p>
    #   @return [String]
    # @!attribute bill_date
    #   <p>The date that the operation was billed, in Unix format.</p>
    #   @return [Time]
    # @!attribute price
    #   <p>The price that you were charged for the operation, in US dollars.</p>
    #            <p>Example value: 12.0</p>
    #   @return [Float]
    class BillingRecord < Struct.new(
      :domain_name,
      :operation,
      :invoice_id,
      :bill_date,
      :price,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:price] = 0 unless options.key?(:price)
        super
      end
    end

    # <p>The CancelDomainTransferToAnotherAwsAccount request includes the following
    # 			element.</p>
    # @!attribute domain_name
    #   <p>The name of the domain for which you want to cancel the transfer to another Amazon Web Services account.</p>
    #   @return [String]
    class CancelDomainTransferToAnotherAwsAccountRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>CancelDomainTransferToAnotherAwsAccount</code> response includes the
    # 			following element.</p>
    # @!attribute operation_id
    #   <p>The identifier that <code>TransferDomainToAnotherAwsAccount</code> returned to track
    #   			the progress of the request. Because the transfer request was canceled, the value is no
    #   			longer valid, and you can't use <code>GetOperationDetail</code> to query the operation
    #   			status.</p>
    #   @return [String]
    class CancelDomainTransferToAnotherAwsAccountResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CheckDomainAvailability request contains the following elements.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want to get availability for. The top-level domain
    #   			(TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs,
    #   			see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer
    #   				Guide</i>.</p>
    #            <p>The domain name can contain only the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label.
    #   				</p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in
    #   						<code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Internationalized domain names are not supported for some top-level domains. To
    #   			determine whether the TLD that you want to use supports internationalized domain names,
    #   			see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a>. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns">Formatting Internationalized Domain Names</a>. </p>
    #   @return [String]
    # @!attribute idn_lang_code
    #   <p>Reserved for future use.</p>
    #   @return [String]
    class CheckDomainAvailabilityRequest < Struct.new(
      :domain_name,
      :idn_lang_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CheckDomainAvailability response includes the following elements.</p>
    # @!attribute availability
    #   <p>Whether the domain name is available for registering.</p>
    #            <note>
    #               <p>You can register only domains designated as <code>AVAILABLE</code>.</p>
    #            </note>
    #            <p>Valid values:</p>
    #            <dl>
    #               <dt>AVAILABLE</dt>
    #               <dd>
    #                  <p>The domain name is available.</p>
    #               </dd>
    #               <dt>AVAILABLE_RESERVED</dt>
    #               <dd>
    #                  <p>The domain name is reserved under specific conditions.</p>
    #               </dd>
    #               <dt>AVAILABLE_PREORDER</dt>
    #               <dd>
    #                  <p>The domain name is available and can be preordered.</p>
    #               </dd>
    #               <dt>DONT_KNOW</dt>
    #               <dd>
    #                  <p>The TLD registry didn't reply with a definitive answer about whether the
    #   						domain name is available. Route 53 can return this response for a variety of
    #   						reasons, for example, the registry is performing maintenance. Try again
    #   						later.</p>
    #               </dd>
    #               <dt>INVALID_NAME_FOR_TLD</dt>
    #               <dd>
    #                  <p>The TLD isn't valid. For example, it can contain characters that aren't allowed.</p>
    #               </dd>
    #               <dt>PENDING</dt>
    #               <dd>
    #                  <p>The TLD registry didn't return a response in the expected amount of time.
    #   						When the response is delayed, it usually takes just a few extra seconds. You
    #   						can resubmit the request immediately.</p>
    #               </dd>
    #               <dt>RESERVED</dt>
    #               <dd>
    #                  <p>The domain name has been reserved for another person or
    #   						organization.</p>
    #               </dd>
    #               <dt>UNAVAILABLE</dt>
    #               <dd>
    #                  <p>The domain name is not available.</p>
    #               </dd>
    #               <dt>UNAVAILABLE_PREMIUM</dt>
    #               <dd>
    #                  <p>The domain name is not available.</p>
    #               </dd>
    #               <dt>UNAVAILABLE_RESTRICTED</dt>
    #               <dd>
    #                  <p>The domain name is forbidden.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class CheckDomainAvailabilityResponse < Struct.new(
      :availability,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CheckDomainTransferability request contains the following elements.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want to transfer to Route 53. The top-level domain
    #   			(TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs,
    #   			see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer
    #   				Guide</i>.</p>
    #            <p>The domain name can contain only the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label.
    #   				</p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in
    #   						<code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute auth_code
    #   <p>If the registrar for the top-level domain (TLD) requires an authorization code to
    #   			transfer the domain, the code that you got from the current registrar for the
    #   			domain.</p>
    #   @return [String]
    class CheckDomainTransferabilityRequest < Struct.new(
      :domain_name,
      :auth_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CheckDomainTransferability response includes the following elements.</p>
    # @!attribute transferability
    #   <p>A complex type that contains information about whether the specified domain can be
    #   			transferred to Route 53.</p>
    #   @return [Types::DomainTransferability]
    # @!attribute message
    #   <p>Provides an explanation for when a domain can't be transferred.</p>
    #   @return [String]
    class CheckDomainTransferabilityResponse < Struct.new(
      :transferability,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Customer's consent for the owner change request. </p>
    # @!attribute max_price
    #   <p> Maximum amount the customer agreed to accept. </p>
    #   @return [Float]
    # @!attribute currency
    #   <p> Currency for the <code>MaxPrice</code>. </p>
    #   @return [String]
    class Consent < Struct.new(
      :max_price,
      :currency,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_price] = 0 unless options.key?(:max_price)
        super
      end
    end

    # <p>ContactDetail includes the following elements.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute first_name
    #   <p>First name of contact.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>Last name of contact.</p>
    #   @return [String]
    # @!attribute contact_type
    #   <p>Indicates whether the contact is a person, company, association, or public
    #   			organization. Note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>If you specify a value other than <code>PERSON</code>, you must also specify a
    #   					value for <code>OrganizationName</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For some TLDs, the privacy protection available depends on the value that you
    #   					specify for <code>Contact Type</code>. For the privacy protection settings for
    #   					your TLD, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You
    #   						Can Register with Amazon Route 53</a> in the <i>Amazon Route 53
    #   						Developer Guide</i>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For .es domains, the value of <code>ContactType</code> must be
    #   						<code>PERSON</code> for all three contacts.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute organization_name
    #   <p>Name of the organization for contact types other than <code>PERSON</code>.</p>
    #   @return [String]
    # @!attribute address_line1
    #   <p>First line of the contact's address.</p>
    #   @return [String]
    # @!attribute address_line2
    #   <p>Second line of contact's address, if any.</p>
    #   @return [String]
    # @!attribute city
    #   <p>The city of the contact's address.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state or province of the contact's city.</p>
    #   @return [String]
    # @!attribute country_code
    #   <p>Code for the country of the contact's address.</p>
    #   @return [String]
    # @!attribute zip_code
    #   <p>The zip or postal code of the contact's address.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number of the contact.</p>
    #            <p>Constraints: Phone number must be specified in the format "+[country dialing
    #   			code].[number including any area code>]". For example, a US phone number might appear
    #   			as <code>"+1.1234567890"</code>.</p>
    #   @return [String]
    # @!attribute email
    #   <p>Email address of the contact.</p>
    #   @return [String]
    # @!attribute fax
    #   <p>Fax number of the contact.</p>
    #            <p>Constraints: Phone number must be specified in the format "+[country dialing
    #   			code].[number including any area code]". For example, a US phone number might appear as
    #   				<code>"+1.1234567890"</code>.</p>
    #   @return [String]
    # @!attribute extra_params
    #   <p>A list of name-value pairs for parameters required by certain top-level
    #   			domains.</p>
    #   @return [Array<Types::ExtraParam>]
    class ContactDetail < Struct.new(
      :first_name,
      :last_name,
      :contact_type,
      :organization_name,
      :address_line1,
      :address_line2,
      :city,
      :state,
      :country_code,
      :zip_code,
      :phone_number,
      :email,
      :fax,
      :extra_params,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>Name of the domain to be deleted.</p>
    #   @return [String]
    class DeleteDomainRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status,
    #   			use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #   @return [String]
    class DeleteDomainResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The DeleteTagsForDomainRequest includes the following elements.</p>
    # @!attribute domain_name
    #   <p>The domain for which you want to delete one or more tags.</p>
    #   @return [String]
    # @!attribute tags_to_delete
    #   <p>A list of tag keys to delete.</p>
    #   @return [Array<String>]
    class DeleteTagsForDomainRequest < Struct.new(
      :domain_name,
      :tags_to_delete,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteTagsForDomainResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain that you want to disable automatic renewal for.</p>
    #   @return [String]
    class DisableDomainAutoRenewRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisableDomainAutoRenewResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The DisableDomainTransferLock request includes the following element.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want to remove the transfer lock for.</p>
    #   @return [String]
    class DisableDomainTransferLockRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The DisableDomainTransferLock response includes the following element.</p>
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status,
    #   			use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #   @return [String]
    class DisableDomainTransferLockResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>Name of the domain.</p>
    #   @return [String]
    # @!attribute id
    #   <p>An internal identification number assigned to each DS record after it’s created. You
    #   			can retrieve it as part of DNSSEC information returned by <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetDomainDetail.html">GetDomainDetail</a>.</p>
    #   @return [String]
    class DisassociateDelegationSignerFromDomainRequest < Struct.new(
      :domain_name,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status,
    #   			use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #   @return [String]
    class DisassociateDelegationSignerFromDomainResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the DNSSEC key.</p>
    #          <p>You get this from your DNS provider and then give it to Route 53 (by using
    # 				<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AssociateDelegationSignerToDomain.html">AssociateDelegationSignerToDomain</a>) to pass it to the registry to establish
    # 			the chain of trust.</p>
    # @!attribute algorithm
    #   <p>The number of the public key’s cryptographic algorithm according to an <a href="https://www.iana.org/assignments/dns-sec-alg-numbers/dns-sec-alg-numbers.xml">IANA</a> assignment. </p>
    #            <p>If Route 53 is your DNS service, set this to 13.</p>
    #            <p>For more information about enabling DNSSEC signing, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec-enable-signing.html">Enabling DNSSEC signing and establishing a chain of trust</a>.</p>
    #   @return [Integer]
    # @!attribute flags
    #   <p>Defines the type of key. It can be either a KSK (key-signing-key, value 257) or ZSK
    #   			(zone-signing-key, value 256). Using KSK is always encouraged. Only use ZSK if your DNS
    #   			provider isn't Route 53 and you don’t have KSK available.</p>
    #            <p>If you have KSK and ZSK keys, always use KSK to create a delegations signer (DS)
    #   			record. If you have ZSK keys only – use ZSK to create a DS record.</p>
    #   @return [Integer]
    # @!attribute public_key
    #   <p>The base64-encoded public key part of the key pair that is passed to the registry
    #   			.</p>
    #   @return [String]
    # @!attribute digest_type
    #   <p> The number of the DS digest algorithm according to an IANA assignment.</p>
    #            <p>For more information, see <a href="https://www.iana.org/assignments/ds-rr-types/ds-rr-types.xhtml">IANA</a>
    #   			for DNSSEC Delegation Signer (DS) Resource Record (RR) Type Digest Algorithms. </p>
    #   @return [Integer]
    # @!attribute digest
    #   <p> The delegation signer digest.</p>
    #            <p>Digest is calculated from the public key provided using specified digest algorithm and
    #   			this digest is the actual value returned from the registry nameservers as the value of
    #   			DS records. </p>
    #   @return [String]
    # @!attribute key_tag
    #   <p> A numeric identification of the DNSKEY record referred to by this DS record. </p>
    #   @return [Integer]
    # @!attribute id
    #   <p> An ID assigned to each DS record created by <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AssociateDelegationSignerToDomain.html">AssociateDelegationSignerToDomain</a>. </p>
    #   @return [String]
    class DnssecKey < Struct.new(
      :algorithm,
      :flags,
      :public_key,
      :digest_type,
      :digest,
      :key_tag,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> This error is returned if you call <code>AssociateDelegationSignerToDomain</code>
    # 			when the specified domain has reached the maximum number of DS records. You can't add
    # 			any additional DS records unless you delete an existing one first. </p>
    # @!attribute message
    #   @return [String]
    class DnssecLimitExceeded < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a delegation signer (DS) record that was created in the registry by
    # 				<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AssociateDelegationSignerToDomain.html">AssociateDelegationSignerToDomain</a>. </p>
    # @!attribute algorithm
    #   <p> Algorithm which was used to generate the digest from the public key. </p>
    #   @return [Integer]
    # @!attribute flags
    #   <p>Defines the type of key. It can be either a KSK (key-signing-key, value 257) or ZSK
    #   			(zone-signing-key, value 256). Using KSK is always encouraged. Only use ZSK if your DNS
    #   			provider isn't Route 53 and you don’t have KSK available.</p>
    #            <p>If you have KSK and ZSK keys, always use KSK to create a delegations signer (DS)
    #   			record. If you have ZSK keys only – use ZSK to create a DS record.</p>
    #   @return [Integer]
    # @!attribute public_key
    #   <p> The base64-encoded public key part of the key pair that is passed to the registry.
    #   		</p>
    #   @return [String]
    class DnssecSigningAttributes < Struct.new(
      :algorithm,
      :flags,
      :public_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of domains has exceeded the allowed threshold for the account.</p>
    # @!attribute message
    #   <p>The number of domains has exceeded the allowed threshold for the account.</p>
    #   @return [String]
    class DomainLimitExceeded < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the domain price associated with a TLD.</p>
    # @!attribute name
    #   <p>The name of the TLD for which the prices apply.</p>
    #   @return [String]
    # @!attribute registration_price
    #   <p>The price for domain registration with Route 53.</p>
    #   @return [Types::PriceWithCurrency]
    # @!attribute transfer_price
    #   <p>The price for transferring the domain registration to Route 53.</p>
    #   @return [Types::PriceWithCurrency]
    # @!attribute renewal_price
    #   <p>The price for renewing domain registration with Route 53.</p>
    #   @return [Types::PriceWithCurrency]
    # @!attribute change_ownership_price
    #   <p>The price for changing domain ownership.</p>
    #   @return [Types::PriceWithCurrency]
    # @!attribute restoration_price
    #   <p>The price for restoring the domain with Route 53.</p>
    #   @return [Types::PriceWithCurrency]
    class DomainPrice < Struct.new(
      :name,
      :registration_price,
      :transfer_price,
      :renewal_price,
      :change_ownership_price,
      :restoration_price,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about one suggested domain name.</p>
    # @!attribute domain_name
    #   <p>A suggested domain name.</p>
    #   @return [String]
    # @!attribute availability
    #   <p>Whether the domain name is available for registering.</p>
    #            <note>
    #               <p>You can register only the domains that are designated as
    #   				<code>AVAILABLE</code>.</p>
    #            </note>
    #            <p>Valid values:</p>
    #            <dl>
    #               <dt>AVAILABLE</dt>
    #               <dd>
    #                  <p>The domain name is available.</p>
    #               </dd>
    #               <dt>AVAILABLE_RESERVED</dt>
    #               <dd>
    #                  <p>The domain name is reserved under specific conditions.</p>
    #               </dd>
    #               <dt>AVAILABLE_PREORDER</dt>
    #               <dd>
    #                  <p>The domain name is available and can be preordered.</p>
    #               </dd>
    #               <dt>DONT_KNOW</dt>
    #               <dd>
    #                  <p>The TLD registry didn't reply with a definitive answer about whether the
    #   						domain name is available. Route 53 can return this response for a variety of
    #   						reasons, for example, the registry is performing maintenance. Try again
    #   						later.</p>
    #               </dd>
    #               <dt>PENDING</dt>
    #               <dd>
    #                  <p>The TLD registry didn't return a response in the expected amount of time.
    #   						When the response is delayed, it usually takes just a few extra seconds. You
    #   						can resubmit the request immediately.</p>
    #               </dd>
    #               <dt>RESERVED</dt>
    #               <dd>
    #                  <p>The domain name has been reserved for another person or
    #   						organization.</p>
    #               </dd>
    #               <dt>UNAVAILABLE</dt>
    #               <dd>
    #                  <p>The domain name is not available.</p>
    #               </dd>
    #               <dt>UNAVAILABLE_PREMIUM</dt>
    #               <dd>
    #                  <p>The domain name is not available.</p>
    #               </dd>
    #               <dt>UNAVAILABLE_RESTRICTED</dt>
    #               <dd>
    #                  <p>The domain name is forbidden.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class DomainSuggestion < Struct.new(
      :domain_name,
      :availability,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about one domain.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that the summary information applies to.</p>
    #   @return [String]
    # @!attribute auto_renew
    #   <p>Indicates whether the domain is automatically renewed upon expiration.</p>
    #   @return [Boolean]
    # @!attribute transfer_lock
    #   <p>Indicates whether a domain is locked from unauthorized transfer to another
    #   			party.</p>
    #   @return [Boolean]
    # @!attribute expiry
    #   <p>Expiration date of the domain in Unix time format and Coordinated Universal Time
    #   			(UTC).</p>
    #   @return [Time]
    class DomainSummary < Struct.new(
      :domain_name,
      :auto_renew,
      :transfer_lock,
      :expiry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about whether the specified domain can be
    # 			transferred to Route 53.</p>
    # @!attribute transferable
    #   <p>Whether the domain name can be transferred to Route 53.</p>
    #            <note>
    #               <p>You can transfer only domains that have a value of <code>TRANSFERABLE</code> or
    #   					<code>Transferable</code>.</p>
    #            </note>
    #            <p>Valid values:</p>
    #            <dl>
    #               <dt>TRANSFERABLE</dt>
    #               <dd>
    #                  <p>The domain name can be transferred to Route 53.</p>
    #               </dd>
    #               <dt>UNTRANSFERRABLE</dt>
    #               <dd>
    #                  <p>The domain name can't be transferred to Route 53.</p>
    #               </dd>
    #               <dt>DONT_KNOW</dt>
    #               <dd>
    #                  <p>Reserved for future use.</p>
    #               </dd>
    #               <dt>DOMAIN_IN_OWN_ACCOUNT</dt>
    #               <dd>
    #                  <p>The domain already exists in the current Amazon Web Services account.</p>
    #               </dd>
    #               <dt>DOMAIN_IN_ANOTHER_ACCOUNT</dt>
    #               <dd>
    #                  <p> The domain exists in another Amazon Web Services account.</p>
    #               </dd>
    #               <dt>PREMIUM_DOMAIN</dt>
    #               <dd>
    #                  <p>Premium domain transfer is not supported.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class DomainTransferability < Struct.new(
      :transferable,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request is already in progress for the domain.</p>
    # @!attribute request_id
    #   <p>ID of the request operation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The request is already in progress for the domain.</p>
    #   @return [String]
    class DuplicateRequest < Struct.new(
      :request_id,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain that you want to enable automatic renewal for.</p>
    #   @return [String]
    class EnableDomainAutoRenewRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class EnableDomainAutoRenewResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A request to set the transfer lock for the specified domain.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want to set the transfer lock for.</p>
    #   @return [String]
    class EnableDomainTransferLockRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The EnableDomainTransferLock response includes the following elements.</p>
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To use this ID to query the
    #   			operation status, use GetOperationDetail.</p>
    #   @return [String]
    class EnableDomainTransferLockResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>ExtraParam includes the following elements.</p>
    # @!attribute name
    #   <p>The name of an additional parameter that is required by a top-level domain. Here are
    #   			the top-level domains that require additional parameters and the names of the parameters
    #   			that they require:</p>
    #            <dl>
    #               <dt>.com.au and .net.au</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>AU_ID_NUMBER</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AU_ID_TYPE</code>
    #                        </p>
    #                        <p>Valid values include the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>ABN</code> (Australian business number)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ACN</code> (Australian company number)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TM</code> (Trademark number)</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>.ca</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>BRAND_NUMBER</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>CA_BUSINESS_ENTITY_TYPE</code>
    #                        </p>
    #                        <p>Valid values include the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>BANK</code> (Bank)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COMMERCIAL_COMPANY</code> (Commercial
    #   										company)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COMPANY</code> (Company)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COOPERATION</code> (Cooperation)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COOPERATIVE</code> (Cooperative)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COOPRIX</code> (Cooprix)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CORP</code> (Corporation)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CREDIT_UNION</code> (Credit union)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>FOMIA</code> (Federation of mutual insurance
    #   										associations)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INC</code> (Incorporated)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LTD</code> (Limited)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LTEE</code> (Limitée)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LLC</code> (Limited liability corporation)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LLP</code> (Limited liability partnership)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LTE</code> (Lte.)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>MBA</code> (Mutual benefit association)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>MIC</code> (Mutual insurance company)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>NFP</code> (Not-for-profit corporation)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SA</code> (S.A.)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SAVINGS_COMPANY</code> (Savings company)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SAVINGS_UNION</code> (Savings union)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SARL</code> (Société à responsabilité
    #   										limitée)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TRUST</code> (Trust)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ULC</code> (Unlimited liability corporation)</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>CA_LEGAL_TYPE</code>
    #                        </p>
    #                        <p>When <code>ContactType</code> is <code>PERSON</code>, valid values
    #   								include the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>ABO</code> (Aboriginal Peoples indigenous to
    #   										Canada)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CCT</code> (Canadian citizen)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LGR</code> (Legal Representative of a Canadian
    #   										Citizen or Permanent Resident)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>RES</code> (Permanent resident of Canada)</p>
    #                           </li>
    #                        </ul>
    #                        <p>When <code>ContactType</code> is a value other than
    #   									<code>PERSON</code>, valid values include the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>ASS</code> (Canadian unincorporated
    #   										association)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CCO</code> (Canadian corporation)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>EDU</code> (Canadian educational institution)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>GOV</code> (Government or government entity in
    #   										Canada)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>HOP</code> (Canadian Hospital)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INB</code> (Indian Band recognized by the Indian Act
    #   										of Canada)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LAM</code> (Canadian Library, Archive, or
    #   										Museum)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>MAJ</code> (Her/His Majesty the Queen/King)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>OMK</code> (Official mark registered in
    #   										Canada)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PLT</code> (Canadian Political Party)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PRT</code> (Partnership Registered in Canada)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TDM</code> (Trademark registered in Canada)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TRD</code> (Canadian Trade Union)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TRS</code> (Trust established in Canada)</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>.es</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ES_IDENTIFICATION</code>
    #                        </p>
    #                        <p>The value of <code>ES_IDENTIFICATION</code> depends on the
    #   								following values:</p>
    #                        <ul>
    #                           <li>
    #                              <p>The value of <code>ES_LEGAL_FORM</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>The value of <code>ES_IDENTIFICATION_TYPE</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                        <p>
    #                           <b>If <code>ES_LEGAL_FORM</code> is any value
    #   									other than <code>INDIVIDUAL</code>:</b>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify 1 letter + 8 numbers (CIF [Certificado de
    #   										Identificación Fiscal])</p>
    #                           </li>
    #                           <li>
    #                              <p>Example: B12345678</p>
    #                           </li>
    #                        </ul>
    #                        <p>
    #                           <b>If <code>ES_LEGAL_FORM</code> is
    #   										<code>INDIVIDUAL</code>, the value that you specify for
    #   										<code>ES_IDENTIFICATION</code> depends on the value of
    #   										<code>ES_IDENTIFICATION_TYPE</code>:</b>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>If <code>ES_IDENTIFICATION_TYPE</code> is
    #   											<code>DNI_AND_NIF</code> (for Spanish contacts):</p>
    #                              <ul>
    #                                 <li>
    #                                    <p>Specify 8 numbers + 1 letter (DNI [Documento
    #   												Nacional de Identidad], NIF [Número de
    #   												Identificación Fiscal])</p>
    #                                 </li>
    #                                 <li>
    #                                    <p>Example: 12345678M</p>
    #                                 </li>
    #                              </ul>
    #                           </li>
    #                           <li>
    #                              <p>If <code>ES_IDENTIFICATION_TYPE</code> is <code>NIE</code>
    #   										(for foreigners with legal residence):</p>
    #                              <ul>
    #                                 <li>
    #                                    <p>Specify 1 letter + 7 numbers + 1 letter ( NIE
    #   												[Número de Identidad de Extranjero])</p>
    #                                 </li>
    #                                 <li>
    #                                    <p>Example: Y1234567X</p>
    #                                 </li>
    #                              </ul>
    #                           </li>
    #                           <li>
    #                              <p>If <code>ES_IDENTIFICATION_TYPE</code> is
    #   											<code>OTHER</code> (for contacts outside of
    #   										Spain):</p>
    #                              <ul>
    #                                 <li>
    #                                    <p>Specify a passport number, drivers license number,
    #   												or national identity card number</p>
    #                                 </li>
    #                              </ul>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ES_IDENTIFICATION_TYPE</code>
    #                        </p>
    #                        <p>Valid values include the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>DNI_AND_NIF</code> (For Spanish contacts)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>NIE</code> (For foreigners with legal
    #   										residence)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>OTHER</code> (For contacts outside of Spain)</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ES_LEGAL_FORM</code>
    #                        </p>
    #                        <p>Valid values include the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>ASSOCIATION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CENTRAL_GOVERNMENT_BODY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CIVIL_SOCIETY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COMMUNITY_OF_OWNERS</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COMMUNITY_PROPERTY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CONSULATE</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COOPERATIVE</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>DESIGNATION_OF_ORIGIN_SUPERVISORY_COUNCIL</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ECONOMIC_INTEREST_GROUP</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>EMBASSY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ENTITY_MANAGING_NATURAL_AREAS</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>FARM_PARTNERSHIP</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>FOUNDATION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>GENERAL_AND_LIMITED_PARTNERSHIP</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>GENERAL_PARTNERSHIP</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INDIVIDUAL</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LIMITED_COMPANY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LOCAL_AUTHORITY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LOCAL_PUBLIC_ENTITY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>MUTUAL_INSURANCE_COMPANY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>NATIONAL_PUBLIC_ENTITY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ORDER_OR_RELIGIOUS_INSTITUTION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>OTHERS (Only for contacts outside of
    #   										Spain)</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>POLITICAL_PARTY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PROFESSIONAL_ASSOCIATION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PUBLIC_LAW_ASSOCIATION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PUBLIC_LIMITED_COMPANY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>REGIONAL_GOVERNMENT_BODY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>REGIONAL_PUBLIC_ENTITY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SAVINGS_BANK</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SPANISH_OFFICE</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SPORTS_ASSOCIATION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SPORTS_FEDERATION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SPORTS_LIMITED_COMPANY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TEMPORARY_ALLIANCE_OF_ENTERPRISES</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TRADE_UNION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>WORKER_OWNED_COMPANY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>WORKER_OWNED_LIMITED_COMPANY</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>.eu</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code> EU_COUNTRY_OF_CITIZENSHIP</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>.fi</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>BIRTH_DATE_IN_YYYY_MM_DD</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FI_BUSINESS_NUMBER</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FI_ID_NUMBER</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FI_NATIONALITY</code>
    #                        </p>
    #                        <p>Valid values include the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>FINNISH</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>NOT_FINNISH</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FI_ORGANIZATION_TYPE</code>
    #                        </p>
    #                        <p>Valid values include the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>COMPANY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CORPORATION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>GOVERNMENT</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INSTITUTION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>POLITICAL_PARTY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PUBLIC_COMMUNITY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TOWNSHIP</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>.it</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>IT_NATIONALITY</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IT_PIN</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IT_REGISTRANT_ENTITY_TYPE</code>
    #                        </p>
    #                        <p>Valid values include the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>FOREIGNERS</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>FREELANCE_WORKERS</code> (Freelance workers and
    #   										professionals)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ITALIAN_COMPANIES</code> (Italian companies and
    #   										one-person companies)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>NON_PROFIT_ORGANIZATIONS</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>OTHER_SUBJECTS</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PUBLIC_ORGANIZATIONS</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>.ru</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>BIRTH_DATE_IN_YYYY_MM_DD</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RU_PASSPORT_DATA</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>.se</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>BIRTH_COUNTRY</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>SE_ID_NUMBER</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>.sg</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>SG_ID_NUMBER</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>.uk, .co.uk, .me.uk, and .org.uk</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>UK_CONTACT_TYPE</code>
    #                        </p>
    #                        <p>Valid values include the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>CRC</code> (UK Corporation by Royal Charter)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>FCORP</code> (Non-UK Corporation)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>FIND</code> (Non-UK Individual, representing
    #   										self)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>FOTHER</code> (Non-UK Entity that does not fit into
    #   										any other category)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>GOV</code> (UK Government Body)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>IND</code> (UK Individual (representing
    #   										self))</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>IP</code> (UK Industrial/Provident Registered
    #   										Company)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LLP</code> (UK Limited Liability Partnership)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LTD</code> (UK Limited Company)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>OTHER</code> (UK Entity that does not fit into any
    #   										other category)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PLC</code> (UK Public Limited Company)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PTNR</code> (UK Partnership)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>RCHAR</code> (UK Registered Charity)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SCH</code> (UK School)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>STAT</code> (UK Statutory Body)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>STRA</code> (UK Sole Trader)</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>UK_COMPANY_NUMBER</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #            </dl>
    #            <p>In addition, many TLDs require a <code>VAT_NUMBER</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that corresponds with the name of an extra parameter.</p>
    #   @return [String]
    class ExtraParam < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information for the filtering of a list of domains returned by <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains__ListDomains.html">ListDomains</a>.</p>
    # @!attribute name
    #   <p>Name of the field which should be used for filtering the list of domains.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The operator values for filtering domain names. The values can be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LE</code>: Less than, or equal to</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GE</code>: Greater than, or equal to</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BEGINS_WITH</code>: Begins with</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute values
    #   <p> An array of strings presenting values to compare. Only 1 item in the list is
    #   			currently supported.</p>
    #   @return [Array<String>]
    class FilterCondition < Struct.new(
      :name,
      :operator,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain for which you want to know whether the registrant contact has
    #   			confirmed that the email address is valid.</p>
    #   @return [String]
    class GetContactReachabilityStatusRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name for which you requested the reachability status.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Whether the registrant contact has responded. Values include the following:</p>
    #            <dl>
    #               <dt>PENDING</dt>
    #               <dd>
    #                  <p>We sent the confirmation email and haven't received a response yet.</p>
    #               </dd>
    #               <dt>DONE</dt>
    #               <dd>
    #                  <p>We sent the email and got confirmation from the registrant contact.</p>
    #               </dd>
    #               <dt>EXPIRED</dt>
    #               <dd>
    #                  <p>The time limit expired before the registrant contact responded.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class GetContactReachabilityStatusResponse < Struct.new(
      :domain_name,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The GetDomainDetail request includes the following element.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want to get detailed information about.</p>
    #   @return [String]
    class GetDomainDetailRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The GetDomainDetail response includes the following elements.</p>
    # @!attribute domain_name
    #   <p>The name of a domain.</p>
    #   @return [String]
    # @!attribute nameservers
    #   <p>The name servers of the domain.</p>
    #   @return [Array<Types::Nameserver>]
    # @!attribute auto_renew
    #   <p>Specifies whether the domain registration is set to renew automatically.</p>
    #   @return [Boolean]
    # @!attribute admin_contact
    #   <p>Provides details about the domain administrative contact.</p>
    #   @return [Types::ContactDetail]
    # @!attribute registrant_contact
    #   <p>Provides details about the domain registrant.</p>
    #   @return [Types::ContactDetail]
    # @!attribute tech_contact
    #   <p>Provides details about the domain technical contact.</p>
    #   @return [Types::ContactDetail]
    # @!attribute admin_privacy
    #   <p>Specifies whether contact information is concealed from WHOIS queries. If the value is
    #   				<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If the value is <code>false</code>, WHOIS queries return the
    #   			information that you entered for the admin contact.</p>
    #   @return [Boolean]
    # @!attribute registrant_privacy
    #   <p>Specifies whether contact information is concealed from WHOIS queries. If the value is
    #   				<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If the value is <code>false</code>, WHOIS queries return the
    #   			information that you entered for the registrant contact (domain owner).</p>
    #   @return [Boolean]
    # @!attribute tech_privacy
    #   <p>Specifies whether contact information is concealed from WHOIS queries. If the value is
    #   				<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If the value is <code>false</code>, WHOIS queries return the
    #   			information that you entered for the technical contact.</p>
    #   @return [Boolean]
    # @!attribute registrar_name
    #   <p>Name of the registrar of the domain as identified in the registry. </p>
    #   @return [String]
    # @!attribute who_is_server
    #   <p>The fully qualified name of the WHOIS server that can answer the WHOIS query for the
    #   			domain.</p>
    #   @return [String]
    # @!attribute registrar_url
    #   <p>Web address of the registrar.</p>
    #   @return [String]
    # @!attribute abuse_contact_email
    #   <p>Email address to contact to report incorrect contact information for a domain, to
    #   			report that the domain is being used to send spam, to report that someone is
    #   			cybersquatting on a domain name, or report some other type of abuse.</p>
    #   @return [String]
    # @!attribute abuse_contact_phone
    #   <p>Phone number for reporting abuse.</p>
    #   @return [String]
    # @!attribute registry_domain_id
    #   <p>Reserved for future use.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date when the domain was created as found in the response to a WHOIS query. The
    #   			date and time is in Unix time format and Coordinated Universal time (UTC).</p>
    #   @return [Time]
    # @!attribute updated_date
    #   <p>The last updated date of the domain as found in the response to a WHOIS query. The
    #   			date and time is in Unix time format and Coordinated Universal time (UTC).</p>
    #   @return [Time]
    # @!attribute expiration_date
    #   <p>The date when the registration for the domain is set to expire. The date and time is
    #   			in Unix time format and Coordinated Universal time (UTC).</p>
    #   @return [Time]
    # @!attribute reseller
    #   <p>Reseller of the domain. Domains registered or transferred using Route 53 domains will
    #   			have <code>"Amazon"</code> as the reseller. </p>
    #   @return [String]
    # @!attribute dns_sec
    #   <p>Deprecated.</p>
    #   @return [String]
    # @!attribute status_list
    #   <p>An array of domain name status codes, also known as Extensible Provisioning Protocol
    #   			(EPP) status codes.</p>
    #            <p>ICANN, the organization that maintains a central database of domain names, has
    #   			developed a set of domain name status codes that tell you the status of a variety of
    #   			operations on a domain name, for example, registering a domain name, transferring a
    #   			domain name to another registrar, renewing the registration for a domain name, and so
    #   			on. All registrars use this same set of status codes.</p>
    #            <p>For a current list of domain name status codes and an explanation of what each code
    #   			means, go to the <a href="https://www.icann.org/">ICANN website</a> and search
    #   			for <code>epp status codes</code>. (Search on the ICANN website; web searches sometimes
    #   			return an old version of the document.)</p>
    #   @return [Array<String>]
    # @!attribute dnssec_keys
    #   <p>A complex type that contains information about the DNSSEC configuration.</p>
    #   @return [Array<Types::DnssecKey>]
    # @!attribute billing_contact
    #   <p>Provides details about the domain billing contact.</p>
    #   @return [Types::ContactDetail]
    # @!attribute billing_privacy
    #   <p>Specifies whether contact information is concealed from WHOIS queries. If the value is
    #   		<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   		Amazon Registrar or for our registrar associate,
    #   		Gandi. If the value is <code>false</code>, WHOIS queries return the
    #   		information that you entered for the billing contact.</p>
    #   @return [Boolean]
    class GetDomainDetailResponse < Struct.new(
      :domain_name,
      :nameservers,
      :auto_renew,
      :admin_contact,
      :registrant_contact,
      :tech_contact,
      :admin_privacy,
      :registrant_privacy,
      :tech_privacy,
      :registrar_name,
      :who_is_server,
      :registrar_url,
      :abuse_contact_email,
      :abuse_contact_phone,
      :registry_domain_id,
      :creation_date,
      :updated_date,
      :expiration_date,
      :reseller,
      :dns_sec,
      :status_list,
      :dnssec_keys,
      :billing_contact,
      :billing_privacy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>A domain name that you want to use as the basis for a list of possible domain names.
    #   			The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. For a
    #   			list of supported TLDs, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer
    #   				Guide</i>.</p>
    #            <p>The domain name can contain only the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label.
    #   				</p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in
    #   						<code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Internationalized domain names are not supported for some top-level domains. To
    #   			determine whether the TLD that you want to use supports internationalized domain names,
    #   			see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a>. </p>
    #   @return [String]
    # @!attribute suggestion_count
    #   <p>The number of suggested domain names that you want Route 53 to return. Specify a value
    #   			between 1 and 50.</p>
    #   @return [Integer]
    # @!attribute only_available
    #   <p>If <code>OnlyAvailable</code> is <code>true</code>, Route 53 returns only domain names
    #   			that are available. If <code>OnlyAvailable</code> is <code>false</code>, Route 53
    #   			returns domain names without checking whether they're available to be registered. To
    #   			determine whether the domain is available, you can call
    #   				<code>checkDomainAvailability</code> for each suggestion.</p>
    #   @return [Boolean]
    class GetDomainSuggestionsRequest < Struct.new(
      :domain_name,
      :suggestion_count,
      :only_available,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suggestions_list
    #   <p>A list of possible domain names. If you specified <code>true</code> for
    #   				<code>OnlyAvailable</code> in the request, the list contains only domains that are
    #   			available for registration.</p>
    #   @return [Array<Types::DomainSuggestion>]
    class GetDomainSuggestionsResponse < Struct.new(
      :suggestions_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a> request includes the following element.</p>
    # @!attribute operation_id
    #   <p>The identifier for the operation for which you want to get the status. Route 53
    #   			returned the identifier in the response to the original request.</p>
    #   @return [String]
    class GetOperationDetailRequest < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The GetOperationDetail response includes the following elements.</p>
    # @!attribute operation_id
    #   <p>The identifier for the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the requested operation in the system.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Detailed information on the status including possible errors.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The name of a domain.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of operation that was requested.</p>
    #   @return [String]
    # @!attribute submitted_date
    #   <p>The date when the request was submitted.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p> The date when the operation was last updated. </p>
    #   @return [Time]
    # @!attribute status_flag
    #   <p> Lists any outstanding operations that require customer action. Valid values
    #   			are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING_ACCEPTANCE</code>: The operation is waiting for acceptance from
    #   					the account that is receiving the domain.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_CUSTOMER_ACTION</code>: The operation is waiting for customer
    #   					action, for example, returning an email.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_AUTHORIZATION</code>: The operation is waiting for the form of
    #   					authorization. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ResendOperationAuthorization.html">ResendOperationAuthorization</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_PAYMENT_VERIFICATION</code>: The operation is waiting for the
    #   					payment method to validate.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_SUPPORT_CASE</code>: The operation includes a support case and
    #   					is waiting for its resolution.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GetOperationDetailResponse < Struct.new(
      :operation_id,
      :status,
      :message,
      :domain_name,
      :type,
      :submitted_date,
      :last_updated_date,
      :status_flag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested item is not acceptable. For example, for APIs that accept a domain name,
    # 			the request might specify a domain name that doesn't belong to the account that
    # 			submitted the request. For <code>AcceptDomainTransferFromAnotherAwsAccount</code>, the
    # 			password might be invalid.</p>
    # @!attribute message
    #   <p>The requested item is not acceptable. For example, for an OperationId it might refer
    #   			to the ID of an operation that is already completed. For a domain name, it might not be
    #   			a valid domain name or belong to the requester account.</p>
    #   @return [String]
    class InvalidInput < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The ListDomains request includes the following elements.</p>
    # @!attribute filter_conditions
    #   <p>A complex type that contains information about the filters applied during the
    #   				<code>ListDomains</code> request. The filter conditions can include domain name and
    #   			domain expiration.</p>
    #   @return [Array<Types::FilterCondition>]
    # @!attribute sort_condition
    #   <p>A complex type that contains information about the requested ordering of domains in
    #   			the returned list.</p>
    #   @return [Types::SortCondition]
    # @!attribute marker
    #   <p>For an initial request for a list of domains, omit this element. If the number of
    #   			domains that are associated with the current Amazon Web Services account is greater than
    #   			the value that you specified for <code>MaxItems</code>, you can use <code>Marker</code>
    #   			to return additional domains. Get the value of <code>NextPageMarker</code> from the
    #   			previous response, and submit another request that includes the value of
    #   				<code>NextPageMarker</code> in the <code>Marker</code> element.</p>
    #            <p>Constraints: The marker must match the value specified in the previous request.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Number of domains to be returned.</p>
    #            <p>Default: 20</p>
    #   @return [Integer]
    class ListDomainsRequest < Struct.new(
      :filter_conditions,
      :sort_condition,
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The ListDomains response includes the following elements.</p>
    # @!attribute domains
    #   <p>A list of domains.</p>
    #   @return [Array<Types::DomainSummary>]
    # @!attribute next_page_marker
    #   <p>If there are more domains than you specified for <code>MaxItems</code> in the request,
    #   			submit another request and include the value of <code>NextPageMarker</code> in the value
    #   			of <code>Marker</code>.</p>
    #   @return [String]
    class ListDomainsResponse < Struct.new(
      :domains,
      :next_page_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The ListOperations request includes the following elements.</p>
    # @!attribute submitted_since
    #   <p>An optional parameter that lets you get information about all the operations that you
    #   			submitted after a specified date and time. Specify the date and time in Unix time format
    #   			and Coordinated Universal time (UTC).</p>
    #   @return [Time]
    # @!attribute marker
    #   <p>For an initial request for a list of operations, omit this element. If the number of
    #   			operations that are not yet complete is greater than the value that you specified for
    #   				<code>MaxItems</code>, you can use <code>Marker</code> to return additional
    #   			operations. Get the value of <code>NextPageMarker</code> from the previous response, and
    #   			submit another request that includes the value of <code>NextPageMarker</code> in the
    #   				<code>Marker</code> element.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Number of domains to be returned.</p>
    #            <p>Default: 20</p>
    #   @return [Integer]
    # @!attribute status
    #   <p> The status of the operations. </p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p> An arrays of the domains operation types. </p>
    #   @return [Array<String>]
    # @!attribute sort_by
    #   <p> The sort type for returned values. </p>
    #   @return [String]
    # @!attribute sort_order
    #   <p> The sort order for returned values, either ascending or descending. </p>
    #   @return [String]
    class ListOperationsRequest < Struct.new(
      :submitted_since,
      :marker,
      :max_items,
      :status,
      :type,
      :sort_by,
      :sort_order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The ListOperations response includes the following elements.</p>
    # @!attribute operations
    #   <p>Lists summaries of the operations.</p>
    #   @return [Array<Types::OperationSummary>]
    # @!attribute next_page_marker
    #   <p>If there are more operations than you specified for <code>MaxItems</code> in the
    #   			request, submit another request and include the value of <code>NextPageMarker</code> in
    #   			the value of <code>Marker</code>.</p>
    #   @return [String]
    class ListOperationsResponse < Struct.new(
      :operations,
      :next_page_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tld
    #   <p>The TLD for which you want to receive the pricing information. For example.
    #   				<code>.net</code>.</p>
    #            <p>If a <code>Tld</code> value is not provided, a list of prices for all TLDs supported
    #   			by Route 53 is returned.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>For an initial request for a list of prices, omit this element. If the number of
    #   			prices that are not yet complete is greater than the value that you specified for
    #   				<code>MaxItems</code>, you can use <code>Marker</code> to return additional prices.
    #   			Get the value of <code>NextPageMarker</code> from the previous response, and submit
    #   			another request that includes the value of <code>NextPageMarker</code> in the
    #   				<code>Marker</code> element. </p>
    #            <p>Used only for all TLDs. If you specify a TLD, don't specify a
    #   			<code>Marker</code>.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Number of <code>Prices</code> to be returned.</p>
    #            <p>Used only for all TLDs. If you specify a TLD, don't specify a
    #   			<code>MaxItems</code>.</p>
    #   @return [Integer]
    class ListPricesRequest < Struct.new(
      :tld,
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute prices
    #   <p>A complex type that includes all the pricing information. If you specify a TLD, this
    #   			array contains only the pricing for that TLD.</p>
    #   @return [Array<Types::DomainPrice>]
    # @!attribute next_page_marker
    #   <p>If there are more prices than you specified for <code>MaxItems</code> in the request,
    #   			submit another request and include the value of <code>NextPageMarker</code> in the value
    #   			of <code>Marker</code>. </p>
    #            <p>Used only for all TLDs. If you specify a TLD, don't specify a
    #   				<code>NextPageMarker</code>.</p>
    #   @return [String]
    class ListPricesResponse < Struct.new(
      :prices,
      :next_page_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The ListTagsForDomainRequest includes the following elements.</p>
    # @!attribute domain_name
    #   <p>The domain for which you want to get a list of tags.</p>
    #   @return [String]
    class ListTagsForDomainRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The ListTagsForDomain response includes the following elements.</p>
    # @!attribute tag_list
    #   <p>A list of the tags that are associated with the specified domain.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForDomainResponse < Struct.new(
      :tag_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Name server includes the following elements.</p>
    # @!attribute name
    #   <p>The fully qualified host name of the name server.</p>
    #            <p>Constraint: Maximum 255 characters</p>
    #   @return [String]
    # @!attribute glue_ips
    #   <p>Glue IP address of a name server entry. Glue IP addresses are required only when the
    #   			name of the name server is a subdomain of the domain. For example, if your domain is
    #   			example.com and the name server for the domain is ns.example.com, you need to specify
    #   			the IP address for ns.example.com.</p>
    #            <p>Constraints: The list can contain only one IPv4 and one IPv6 address.</p>
    #   @return [Array<String>]
    class Nameserver < Struct.new(
      :name,
      :glue_ips,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of operations or jobs running exceeded the allowed threshold for the
    # 			account.</p>
    # @!attribute message
    #   <p>The number of operations or jobs running exceeded the allowed threshold for the
    #   			account.</p>
    #   @return [String]
    class OperationLimitExceeded < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>OperationSummary includes the following elements.</p>
    # @!attribute operation_id
    #   <p>Identifier returned to track the requested action.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the requested operation in the system.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the action requested.</p>
    #   @return [String]
    # @!attribute submitted_date
    #   <p>The date when the request was submitted.</p>
    #   @return [Time]
    # @!attribute domain_name
    #   <p> Name of the domain. </p>
    #   @return [String]
    # @!attribute message
    #   <p> Message about the operation. </p>
    #   @return [String]
    # @!attribute status_flag
    #   <p> Automatically checks whether there are no outstanding operations on domains that need
    #   			customer attention. </p>
    #            <p> Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING_ACCEPTANCE</code>: The operation is waiting for acceptance from
    #   					the account that is receiving the domain.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_CUSTOMER_ACTION</code>: The operation is waiting for customer
    #   					action, for example, returning an email.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_AUTHORIZATION</code>: The operation is waiting for the form of
    #   					authorization. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ResendOperationAuthorization.html">ResendOperationAuthorization</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_PAYMENT_VERIFICATION</code>: The operation is waiting for the
    #   					payment method to validate.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_SUPPORT_CASE</code>: The operation includes a support case and
    #   					is waiting for its resolution.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_updated_date
    #   <p> The date when the last change was made in Unix time format and Coordinated Universal
    #   			Time (UTC). </p>
    #   @return [Time]
    class OperationSummary < Struct.new(
      :operation_id,
      :status,
      :type,
      :submitted_date,
      :domain_name,
      :message,
      :status_flag,
      :last_updated_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Currency-specific price information.</p>
    # @!attribute price
    #   <p>The price of a domain, in a specific currency.</p>
    #   @return [Float]
    # @!attribute currency
    #   <p>The currency specifier.</p>
    #   @return [String]
    class PriceWithCurrency < Struct.new(
      :price,
      :currency,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:price] = 0 unless options.key?(:price)
        super
      end
    end

    # @!attribute domain_name
    #   <p> Name of the domain. </p>
    #   @return [String]
    # @!attribute target
    #   <p> New IPS tag for the domain. </p>
    #   @return [String]
    class PushDomainRequest < Struct.new(
      :domain_name,
      :target,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The RegisterDomain request includes the following elements.</p>
    # @!attribute domain_name
    #   <p>The domain name that you want to register. The top-level domain (TLD), such as .com,
    #   			must be a TLD that Route 53 supports. For a list of supported TLDs, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the <i>Amazon
    #   				Route 53 Developer Guide</i>.</p>
    #            <p>The domain name can contain only the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label.
    #   				</p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in
    #   						<code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Internationalized domain names are not supported for some top-level domains. To
    #   			determine whether the TLD that you want to use supports internationalized domain names,
    #   			see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a>. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns">Formatting Internationalized Domain Names</a>. </p>
    #   @return [String]
    # @!attribute idn_lang_code
    #   <p>Reserved for future use.</p>
    #   @return [String]
    # @!attribute duration_in_years
    #   <p>The number of years that you want to register the domain for. Domains are registered
    #   			for a minimum of one year. The maximum period depends on the top-level domain. For the
    #   			range of valid values for your domain, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer
    #   				Guide</i>.</p>
    #            <p>Default: 1</p>
    #   @return [Integer]
    # @!attribute auto_renew
    #   <p>Indicates whether the domain will be automatically renewed (<code>true</code>) or not
    #   				(<code>false</code>). Auto renewal only takes effect after the account is
    #   			charged.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute admin_contact
    #   <p>Provides detailed contact information. For information about the values that you
    #   			specify for each element, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p>
    #   @return [Types::ContactDetail]
    # @!attribute registrant_contact
    #   <p>Provides detailed contact information. For information about the values that you
    #   			specify for each element, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p>
    #   @return [Types::ContactDetail]
    # @!attribute tech_contact
    #   <p>Provides detailed contact information. For information about the values that you
    #   			specify for each element, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p>
    #   @return [Types::ContactDetail]
    # @!attribute privacy_protect_admin_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   				<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the admin contact.</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #            <p>Default: <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute privacy_protect_registrant_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   				<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the registrant contact (the domain owner).</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #            <p>Default: <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute privacy_protect_tech_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   				<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the technical contact.</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #            <p>Default: <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute billing_contact
    #   <p>Provides detailed contact information. For information about the values that you
    #   			specify for each element, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p>
    #   @return [Types::ContactDetail]
    # @!attribute privacy_protect_billing_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   			<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the billing contact.</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #   @return [Boolean]
    class RegisterDomainRequest < Struct.new(
      :domain_name,
      :idn_lang_code,
      :duration_in_years,
      :auto_renew,
      :admin_contact,
      :registrant_contact,
      :tech_contact,
      :privacy_protect_admin_contact,
      :privacy_protect_registrant_contact,
      :privacy_protect_tech_contact,
      :billing_contact,
      :privacy_protect_billing_contact,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The RegisterDomain response includes the following element.</p>
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status,
    #   			use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #   @return [String]
    class RegisterDomainResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The RejectDomainTransferFromAnotherAwsAccount request includes the following
    # 			element.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that was specified when another Amazon Web Services account
    #   			submitted a <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a> request. </p>
    #   @return [String]
    class RejectDomainTransferFromAnotherAwsAccountRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The RejectDomainTransferFromAnotherAwsAccount response includes the following
    # 			element.</p>
    # @!attribute operation_id
    #   <p>The identifier that <code>TransferDomainToAnotherAwsAccount</code> returned to track
    #   			the progress of the request. Because the transfer request was rejected, the value is no
    #   			longer valid, and you can't use <code>GetOperationDetail</code> to query the operation
    #   			status.</p>
    #   @return [String]
    class RejectDomainTransferFromAnotherAwsAccountResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A <code>RenewDomain</code> request includes the number of years that you want to renew
    # 			for and the current expiration year.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want to renew.</p>
    #   @return [String]
    # @!attribute duration_in_years
    #   <p>The number of years that you want to renew the domain for. The maximum number of years
    #   			depends on the top-level domain. For the range of valid values for your domain, see
    #   				<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer
    #   				Guide</i>.</p>
    #            <p>Default: 1</p>
    #   @return [Integer]
    # @!attribute current_expiry_year
    #   <p>The year when the registration for the domain is set to expire. This value must match
    #   			the current expiration date for the domain.</p>
    #   @return [Integer]
    class RenewDomainRequest < Struct.new(
      :domain_name,
      :duration_in_years,
      :current_expiry_year,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status,
    #   			use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #   @return [String]
    class RenewDomainResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain for which you want Route 53 to resend a confirmation email to
    #   			the registrant contact.</p>
    #   @return [String]
    class ResendContactReachabilityEmailRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name for which you requested a confirmation email.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The email address for the registrant contact at the time that we sent the verification
    #   			email.</p>
    #   @return [String]
    # @!attribute is_already_verified
    #   <p>
    #               <code>True</code> if the email address for the registrant contact has already been
    #   			verified, and <code>false</code> otherwise. If the email address has already been
    #   			verified, we don't send another confirmation email.</p>
    #   @return [Boolean]
    class ResendContactReachabilityEmailResponse < Struct.new(
      :domain_name,
      :email_address,
      :is_already_verified,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p> Operation ID. </p>
    #   @return [String]
    class ResendOperationAuthorizationRequest < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A request for the authorization code for the specified domain. To transfer a domain to
    # 			another registrar, you provide this value to the new registrar.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want to get an authorization code for.</p>
    #   @return [String]
    class RetrieveDomainAuthCodeRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The RetrieveDomainAuthCode response includes the following element.</p>
    # @!attribute auth_code
    #   <p>The authorization code for the domain.</p>
    #   @return [String]
    class RetrieveDomainAuthCodeResponse < Struct.new(
      :auth_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information for sorting a list of domains.</p>
    # @!attribute name
    #   <p>Field to be used for sorting the list of domains. It can be either the name or the
    #   			expiration for a domain. Note that if <code>filterCondition</code> is used in the same
    #   				<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains__ListDomains.html">ListDomains</a>
    #   			call, the field used for sorting has to be the same as the field used for
    #   			filtering.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order for a list of domains. Either ascending (ASC) or descending
    #   			(DES).</p>
    #   @return [String]
    class SortCondition < Struct.new(
      :name,
      :sort_order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The top-level domain does not support this operation.</p>
    # @!attribute message
    #   <p>The top-level domain does not support this operation.</p>
    #   @return [String]
    class TLDRulesViolation < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Each tag includes the following elements.</p>
    # @!attribute key
    #   <p>The key (name) of a tag.</p>
    #            <p>Valid values: A-Z, a-z, 0-9, space, ".:/=+\-@"</p>
    #            <p>Constraints: Each key can be 1-128 characters long.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of a tag.</p>
    #            <p>Valid values: A-Z, a-z, 0-9, space, ".:/=+\-@"</p>
    #            <p>Constraints: Each value can be 0-256 characters long.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The TransferDomain request includes the following elements.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want to transfer to Route 53. The top-level domain
    #   			(TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs,
    #   			see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer
    #   				Guide</i>.</p>
    #            <p>The domain name can contain only the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label.
    #   				</p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in
    #   						<code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute idn_lang_code
    #   <p>Reserved for future use.</p>
    #   @return [String]
    # @!attribute duration_in_years
    #   <p>The number of years that you want to register the domain for. Domains are registered
    #   			for a minimum of one year. The maximum period depends on the top-level domain.</p>
    #            <p>Default: 1</p>
    #   @return [Integer]
    # @!attribute nameservers
    #   <p>Contains details for the host and glue IP addresses.</p>
    #   @return [Array<Types::Nameserver>]
    # @!attribute auth_code
    #   <p>The authorization code for the domain. You get this value from the current
    #   			registrar.</p>
    #   @return [String]
    # @!attribute auto_renew
    #   <p>Indicates whether the domain will be automatically renewed (true) or not (false). Auto
    #   			renewal only takes effect after the account is charged.</p>
    #            <p>Default: true</p>
    #   @return [Boolean]
    # @!attribute admin_contact
    #   <p>Provides detailed contact information.</p>
    #   @return [Types::ContactDetail]
    # @!attribute registrant_contact
    #   <p>Provides detailed contact information.</p>
    #   @return [Types::ContactDetail]
    # @!attribute tech_contact
    #   <p>Provides detailed contact information.</p>
    #   @return [Types::ContactDetail]
    # @!attribute privacy_protect_admin_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   				<code>true</code>, WHOIS ("who is") queries return contact information for the
    #   			registrar, the phrase "REDACTED FOR PRIVACY", or "On behalf of <domain name>
    #   			owner.".</p>
    #            <note>
    #               <p>While some domains may allow different privacy settings per contact, we recommend
    #   				specifying the same privacy setting for all contacts.</p>
    #            </note>
    #            <p>Default: <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute privacy_protect_registrant_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   				<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the registrant contact (domain owner).</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #            <p>Default: <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute privacy_protect_tech_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   				<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the technical contact.</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #            <p>Default: <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute billing_contact
    #   <p>Provides detailed contact information.</p>
    #   @return [Types::ContactDetail]
    # @!attribute privacy_protect_billing_contact
    #   <p>
    #   			Whether you want to conceal contact information from WHOIS queries. If you specify
    #   			<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the billing contact.
    #   		</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #   @return [Boolean]
    class TransferDomainRequest < Struct.new(
      :domain_name,
      :idn_lang_code,
      :duration_in_years,
      :nameservers,
      :auth_code,
      :auto_renew,
      :admin_contact,
      :registrant_contact,
      :tech_contact,
      :privacy_protect_admin_contact,
      :privacy_protect_registrant_contact,
      :privacy_protect_tech_contact,
      :billing_contact,
      :privacy_protect_billing_contact,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The TransferDomain response includes the following element.</p>
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status,
    #   			use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #   @return [String]
    class TransferDomainResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The TransferDomainToAnotherAwsAccount request includes the following elements.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want to transfer from the current Amazon Web Services account to another account.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID of the Amazon Web Services account that you want to transfer the domain
    #   			to, for example, <code>111122223333</code>.</p>
    #   @return [String]
    class TransferDomainToAnotherAwsAccountRequest < Struct.new(
      :domain_name,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>TransferDomainToAnotherAwsAccount</code> response includes the following
    # 			elements.</p>
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status,
    #   			use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #   @return [String]
    # @!attribute password
    #   <p>To finish transferring a domain to another Amazon Web Services account, the account
    #   			that the domain is being transferred to must submit an <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html">AcceptDomainTransferFromAnotherAwsAccount</a> request. The request must include
    #   			the value of the <code>Password</code> element that was returned in the
    #   				<code>TransferDomainToAnotherAwsAccount</code> response.</p>
    #   @return [String]
    class TransferDomainToAnotherAwsAccountResponse < Struct.new(
      :operation_id,
      :password,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Route 53 does not support this top-level domain (TLD).</p>
    # @!attribute message
    #   <p>Amazon Route 53 does not support this top-level domain (TLD).</p>
    #   @return [String]
    class UnsupportedTLD < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The UpdateDomainContactPrivacy request includes the following elements.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want to update the privacy setting for.</p>
    #   @return [String]
    # @!attribute admin_privacy
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   			<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the admin contact.</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute registrant_privacy
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   			<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the registrant contact (domain owner).</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute tech_privacy
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   				<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the technical contact.</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute billing_privacy
    #   <p>
    #   			Whether you want to conceal contact information from WHOIS queries. If you specify
    #   			<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the billing contact.
    #   		</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #   @return [Boolean]
    class UpdateDomainContactPrivacyRequest < Struct.new(
      :domain_name,
      :admin_privacy,
      :registrant_privacy,
      :tech_privacy,
      :billing_privacy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The UpdateDomainContactPrivacy response includes the following element.</p>
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To use this ID to query the
    #   			operation status, use GetOperationDetail.</p>
    #   @return [String]
    class UpdateDomainContactPrivacyResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The UpdateDomainContact request includes the following elements.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want to update contact information for.</p>
    #   @return [String]
    # @!attribute admin_contact
    #   <p>Provides detailed contact information.</p>
    #   @return [Types::ContactDetail]
    # @!attribute registrant_contact
    #   <p>Provides detailed contact information.</p>
    #   @return [Types::ContactDetail]
    # @!attribute tech_contact
    #   <p>Provides detailed contact information.</p>
    #   @return [Types::ContactDetail]
    # @!attribute consent
    #   <p> Customer's consent for the owner change request. Required if the domain is not free (consent price is more than $0.00).</p>
    #   @return [Types::Consent]
    # @!attribute billing_contact
    #   <p>Provides detailed contact information.</p>
    #   @return [Types::ContactDetail]
    class UpdateDomainContactRequest < Struct.new(
      :domain_name,
      :admin_contact,
      :registrant_contact,
      :tech_contact,
      :consent,
      :billing_contact,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The UpdateDomainContact response includes the following element.</p>
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status,
    #   			use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #   @return [String]
    class UpdateDomainContactResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Replaces the current set of name servers for the domain with the specified set of name
    # 			servers. If you use Amazon Route 53 as your DNS service, specify the four name servers
    # 			in the delegation set for the hosted zone for the domain.</p>
    #          <p>If successful, this operation returns an operation ID that you can use to track the
    # 			progress and completion of the action. If the request is not completed successfully, the
    # 			domain registrant will be notified by email. </p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want to change name servers for.</p>
    #   @return [String]
    # @!attribute fi_auth_key
    #   <p>The authorization key for .fi domains</p>
    #   @deprecated
    #   @return [String]
    # @!attribute nameservers
    #   <p>A list of new name servers for the domain.</p>
    #   @return [Array<Types::Nameserver>]
    class UpdateDomainNameserversRequest < Struct.new(
      :domain_name,
      :fi_auth_key,
      :nameservers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The UpdateDomainNameservers response includes the following element.</p>
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status,
    #   			use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #   @return [String]
    class UpdateDomainNameserversResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The UpdateTagsForDomainRequest includes the following elements.</p>
    # @!attribute domain_name
    #   <p>The domain for which you want to add or update tags.</p>
    #   @return [String]
    # @!attribute tags_to_update
    #   <p>A list of the tag keys and values that you want to add or update. If you specify a key
    #   			that already exists, the corresponding value will be replaced.</p>
    #   @return [Array<Types::Tag>]
    class UpdateTagsForDomainRequest < Struct.new(
      :domain_name,
      :tags_to_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateTagsForDomainResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The ViewBilling request includes the following elements.</p>
    # @!attribute start
    #   <p>The beginning date and time for the time period for which you want a list of billing
    #   			records. Specify the date and time in Unix time format and Coordinated Universal time
    #   			(UTC).</p>
    #   @return [Time]
    # @!attribute end
    #   <p>The end date and time for the time period for which you want a list of billing
    #   			records. Specify the date and time in Unix time format and Coordinated Universal time
    #   			(UTC).</p>
    #   @return [Time]
    # @!attribute marker
    #   <p>For an initial request for a list of billing records, omit this element. If the number
    #   			of billing records that are associated with the current Amazon Web Services account
    #   			during the specified period is greater than the value that you specified for
    #   				<code>MaxItems</code>, you can use <code>Marker</code> to return additional billing
    #   			records. Get the value of <code>NextPageMarker</code> from the previous response, and
    #   			submit another request that includes the value of <code>NextPageMarker</code> in the
    #   				<code>Marker</code> element. </p>
    #            <p>Constraints: The marker must match the value of <code>NextPageMarker</code> that was
    #   			returned in the previous response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The number of billing records to be returned.</p>
    #            <p>Default: 20</p>
    #   @return [Integer]
    class ViewBillingRequest < Struct.new(
      :start,
      :end,
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The ViewBilling response includes the following elements.</p>
    # @!attribute next_page_marker
    #   <p>If there are more billing records than you specified for <code>MaxItems</code> in the
    #   			request, submit another request and include the value of <code>NextPageMarker</code> in
    #   			the value of <code>Marker</code>.</p>
    #   @return [String]
    # @!attribute billing_records
    #   <p>A summary of billing records.</p>
    #   @return [Array<Types::BillingRecord>]
    class ViewBillingResponse < Struct.new(
      :next_page_marker,
      :billing_records,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
