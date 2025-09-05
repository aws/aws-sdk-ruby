# frozen_string_literal: true

# This is generated code!

module Aws::DirectoryService
  # This module contains the types returned by client operations.
  module Types

    # <p>A directory assessment is automatically created when you create a hybrid directory.
    #             There are two types of assessments: <code>CUSTOMER</code> and <code>SYSTEM</code>. Your
    #             Amazon Web Services account has a limit of 100 <code>CUSTOMER</code> directory assessments.</p>
    #          <p>If you attempt to create a hybrid directory; and you already have 100
    #                 <code>CUSTOMER</code> directory assessments;, you will encounter an error. Delete
    #             assessments to free up capacity before trying again.</p>
    #          <p>You can request an increase to your <code>CUSTOMER</code> directory assessment quota
    #             by contacting customer support or delete existing CUSTOMER directory assessments; to
    #             free up capacity.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class ADAssessmentLimitExceededException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute shared_directory_id
    #   <p>Identifier of the shared directory in the directory consumer account. This identifier is
    #         different for each directory owner account. </p>
    #   @return [String]
    class AcceptSharedDirectoryRequest < Struct.new(
      :shared_directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute shared_directory
    #   <p>The shared directory in the directory consumer account.</p>
    #   @return [Types::SharedDirectory]
    class AcceptSharedDirectoryResult < Struct.new(
      :shared_directory,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>Identifier (ID) of the directory to which to add the address block.</p>
    #   @return [String]
    # @!attribute ip_routes
    #   <p>IP address blocks, using CIDR format, of the traffic to route. This is often the IP
    #            address block of the DNS server used for your self-managed domain.</p>
    #   @return [Array<Types::IpRoute>]
    # @!attribute update_security_group_for_directory_controllers
    #   <p>If set to true, updates the inbound and outbound rules of the security group that has
    #            the description: "Amazon Web Services created security group for <i>directory ID</i>
    #            directory controllers." Following are the new rules: </p>
    #            <p>Inbound:</p>
    #            <ul>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 88, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 123, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 138, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 389, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 464, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 445, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 88, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 135, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 445, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 464, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 636, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 1024-65535, Source:
    #                  Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 3268-33269, Source:
    #                  Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: DNS (UDP), Protocol: UDP, Range: 53, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: DNS (TCP), Protocol: TCP, Range: 53, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: LDAP, Protocol: TCP, Range: 389, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: All ICMP, Protocol: All, Range: N/A, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #            </ul>
    #            <p></p>
    #            <p>Outbound:</p>
    #            <ul>
    #               <li>
    #                  <p>Type: All traffic, Protocol: All, Range: All, Destination: 0.0.0.0/0</p>
    #               </li>
    #            </ul>
    #            <p>These security rules impact an internal network interface that is not exposed
    #            publicly.</p>
    #   @return [Boolean]
    class AddIpRoutesRequest < Struct.new(
      :directory_id,
      :ip_routes,
      :update_security_group_for_directory_controllers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AddIpRoutesResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory to which you want to add Region replication.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The name of the Region where you want to add domain controllers for replication. For
    #         example, <code>us-east-1</code>.</p>
    #   @return [String]
    # @!attribute vpc_settings
    #   <p>Contains VPC information for the <a>CreateDirectory</a>, <a>CreateMicrosoftAD</a>, or <a>CreateHybridAD</a> operation.</p>
    #   @return [Types::DirectoryVpcSettings]
    class AddRegionRequest < Struct.new(
      :directory_id,
      :region_name,
      :vpc_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AddRegionResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>Identifier (ID) for the directory to which to add the tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the directory.</p>
    #   @return [Array<Types::Tag>]
    class AddTagsToResourceRequest < Struct.new(
      :resource_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AddTagsToResourceResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about a directory assessment, including configuration
    #             parameters, status, and validation results.</p>
    # @!attribute assessment_id
    #   <p>The unique identifier of the directory assessment.</p>
    #   @return [String]
    # @!attribute directory_id
    #   <p>The identifier of the directory associated with this assessment.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The fully qualified domain name (FQDN) of the Active Directory domain being
    #               assessed.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time when the assessment was initiated.</p>
    #   @return [Time]
    # @!attribute last_update_date_time
    #   <p>The date and time when the assessment status was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the assessment. Valid values include <code>SUCCESS</code>,
    #                   <code>FAILED</code>, <code>PENDING</code>, and <code>IN_PROGRESS</code>.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>A detailed status code providing additional information about the assessment
    #               state.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A human-readable description of the current assessment status, including any error
    #               details or progress information.</p>
    #   @return [String]
    # @!attribute customer_dns_ips
    #   <p>The IP addresses of the DNS servers or domain controllers in your self-managed AD
    #               environment.</p>
    #   @return [Array<String>]
    # @!attribute vpc_id
    #   <p>Contains Amazon VPC information for the <code>StartADAssessment</code> operation. </p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>A list of subnet identifiers in the Amazon VPC in which the hybrid directory is
    #               created.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The security groups identifiers attached to the network interfaces.</p>
    #   @return [Array<String>]
    # @!attribute self_managed_instance_ids
    #   <p>The identifiers of the self-managed AD instances used to perform the
    #               assessment.</p>
    #   @return [Array<String>]
    # @!attribute report_type
    #   <p>The type of assessment report generated. Valid values are <code>CUSTOMER</code> and
    #                   <code>SYSTEM</code>.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the assessment framework used to evaluate your self-managed AD
    #               environment.</p>
    #   @return [String]
    class Assessment < Struct.new(
      :assessment_id,
      :directory_id,
      :dns_name,
      :start_time,
      :last_update_date_time,
      :status,
      :status_code,
      :status_reason,
      :customer_dns_ips,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :self_managed_instance_ids,
      :report_type,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration parameters required to perform a directory assessment.</p>
    # @!attribute customer_dns_ips
    #   <p>A list of IP addresses for the DNS servers or domain controllers in your self-managed
    #               AD that are tested during the assessment.</p>
    #   @return [Array<String>]
    # @!attribute dns_name
    #   <p>The fully qualified domain name (FQDN) of the self-managed AD domain to assess.</p>
    #   @return [String]
    # @!attribute vpc_settings
    #   <p>Contains VPC information for the <a>CreateDirectory</a>, <a>CreateMicrosoftAD</a>, or <a>CreateHybridAD</a> operation.</p>
    #   @return [Types::DirectoryVpcSettings]
    # @!attribute instance_ids
    #   <p>The identifiers of the self-managed instances with SSM that are used to perform
    #               connectivity and validation tests.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>By default, the service attaches a security group to allow network access to the
    #               self-managed nodes in your Amazon VPC. You can optionally supply your own security group that
    #               allows network traffic to and from your self-managed domain controllers outside of your
    #               Amazon VPC. </p>
    #   @return [Array<String>]
    class AssessmentConfiguration < Struct.new(
      :customer_dns_ips,
      :dns_name,
      :vpc_settings,
      :instance_ids,
      :security_group_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of validation tests performed against a specific domain
    #             controller during a directory assessment.</p>
    # @!attribute domain_controller_ip
    #   <p>The IP address of the domain controller that was tested during the assessment.</p>
    #   @return [String]
    # @!attribute validations
    #   <p>A list of validation results for different test categories performed against this
    #               domain controller.</p>
    #   @return [Array<Types::AssessmentValidation>]
    class AssessmentReport < Struct.new(
      :domain_controller_ip,
      :validations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a directory assessment, providing a high-level
    #             overview without detailed validation results.</p>
    # @!attribute assessment_id
    #   <p>The unique identifier of the directory assessment.</p>
    #   @return [String]
    # @!attribute directory_id
    #   <p>The identifier of the directory associated with this assessment.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The fully qualified domain name (FQDN) of the Active Directory domain being
    #               assessed.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time when the assessment was initiated.</p>
    #   @return [Time]
    # @!attribute last_update_date_time
    #   <p>The date and time when the assessment status was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the assessment. Valid values include <code>SUCCESS</code>,
    #                   <code>FAILED</code>, <code>PENDING</code>, and <code>IN_PROGRESS</code>.</p>
    #   @return [String]
    # @!attribute customer_dns_ips
    #   <p>The IP addresses of the DNS servers or domain controllers in your self-managed AD
    #               environment.</p>
    #   @return [Array<String>]
    # @!attribute report_type
    #   <p>The type of assessment report generated. Valid values include <code>CUSTOMER</code>
    #               and <code>SYSTEM</code>.</p>
    #   @return [String]
    class AssessmentSummary < Struct.new(
      :assessment_id,
      :directory_id,
      :dns_name,
      :start_time,
      :last_update_date_time,
      :status,
      :customer_dns_ips,
      :report_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a specific validation test performed during a directory
    #             assessment.</p>
    # @!attribute category
    #   <p>The category of the validation test.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the specific validation test performed within the category.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The result status of the validation test. Valid values include <code>SUCCESS</code>,
    #                   <code>FAILED</code>, <code>PENDING</code>, and <code>IN_PROGRESS</code>.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>A detailed status code providing additional information about the validation
    #               result.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A human-readable description of the validation result, including any error details or
    #               recommendations.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time when the validation test was started.</p>
    #   @return [Time]
    # @!attribute last_update_date_time
    #   <p>The date and time when the validation test was completed or last updated.</p>
    #   @return [Time]
    class AssessmentValidation < Struct.new(
      :category,
      :name,
      :status,
      :status_code,
      :status_reason,
      :start_time,
      :last_update_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a named directory attribute.</p>
    # @!attribute name
    #   <p>The name of the attribute.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the attribute.</p>
    #   @return [String]
    class Attribute < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An authentication error occurred.</p>
    # @!attribute message
    #   <p>The textual message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The identifier of the request that caused the exception.</p>
    #   @return [String]
    class AuthenticationFailedException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory whose schema extension will be canceled.</p>
    #   @return [String]
    # @!attribute schema_extension_id
    #   <p>The identifier of the schema extension that will be canceled.</p>
    #   @return [String]
    class CancelSchemaExtensionRequest < Struct.new(
      :directory_id,
      :schema_extension_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CancelSchemaExtensionResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the certificate.</p>
    # @!attribute certificate_id
    #   <p>The identifier of the certificate.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the certificate.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>Describes a state change for the certificate.</p>
    #   @return [String]
    # @!attribute common_name
    #   <p>The common name for the certificate.</p>
    #   @return [String]
    # @!attribute registered_date_time
    #   <p>The date and time that the certificate was registered.</p>
    #   @return [Time]
    # @!attribute expiry_date_time
    #   <p>The date and time when the certificate will expire.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>The function that the registered certificate performs. Valid values include
    #           <code>ClientLDAPS</code> or <code>ClientCertAuth</code>. The default value is
    #           <code>ClientLDAPS</code>.</p>
    #   @return [String]
    # @!attribute client_cert_auth_settings
    #   <p>A <code>ClientCertAuthSettings</code> object that contains client certificate
    #         authentication settings.</p>
    #   @return [Types::ClientCertAuthSettings]
    class Certificate < Struct.new(
      :certificate_id,
      :state,
      :state_reason,
      :common_name,
      :registered_date_time,
      :expiry_date_time,
      :type,
      :client_cert_auth_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The certificate has already been registered into the system.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class CertificateAlreadyExistsException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The certificate is not present in the system for describe or deregister activities.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class CertificateDoesNotExistException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The certificate is being used for the LDAP security connection and cannot be removed
    #       without disabling LDAP security.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class CertificateInUseException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains general information about a certificate.</p>
    # @!attribute certificate_id
    #   <p>The identifier of the certificate.</p>
    #   @return [String]
    # @!attribute common_name
    #   <p>The common name for the certificate.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the certificate.</p>
    #   @return [String]
    # @!attribute expiry_date_time
    #   <p>The date and time when the certificate will expire.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>The function that the registered certificate performs. Valid values include
    #           <code>ClientLDAPS</code> or <code>ClientCertAuth</code>. The default value is
    #           <code>ClientLDAPS</code>.</p>
    #   @return [String]
    class CertificateInfo < Struct.new(
      :certificate_id,
      :common_name,
      :state,
      :expiry_date_time,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The certificate could not be added because the certificate limit has been reached.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class CertificateLimitExceededException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a client authentication method for a directory.</p>
    # @!attribute type
    #   <p>The type of client authentication for the specified directory. If no type is specified, a
    #         list of all client authentication types that are supported for the directory is retrieved.
    #       </p>
    #   @return [String]
    # @!attribute status
    #   <p>Whether the client authentication type is enabled or disabled for the specified
    #         directory.</p>
    #   @return [String]
    # @!attribute last_updated_date_time
    #   <p>The date and time when the status of the client authentication type was last
    #         updated.</p>
    #   @return [Time]
    class ClientAuthenticationSettingInfo < Struct.new(
      :type,
      :status,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the client certificate authentication settings for the
    #         <code>RegisterCertificate</code> and <code>DescribeCertificate</code> operations. </p>
    # @!attribute ocsp_url
    #   <p>Specifies the URL of the default OCSP server used to check for revocation status. A
    #         secondary value to any OCSP address found in the AIA extension of the user certificate.</p>
    #   @return [String]
    class ClientCertAuthSettings < Struct.new(
      :ocsp_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A client exception has occurred.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class ClientException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a computer account in a directory.</p>
    # @!attribute computer_id
    #   <p>The identifier of the computer.</p>
    #   @return [String]
    # @!attribute computer_name
    #   <p>The computer name.</p>
    #   @return [String]
    # @!attribute computer_attributes
    #   <p>An array of <a>Attribute</a> objects containing the LDAP attributes that belong to the
    #               computer account.</p>
    #   @return [Array<Types::Attribute>]
    class Computer < Struct.new(
      :computer_id,
      :computer_name,
      :computer_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Points to a remote domain with which you are setting up a trust relationship.
    #       Conditional forwarders are required in order to set up a trust relationship with another
    #       domain.</p>
    # @!attribute remote_domain_name
    #   <p>The fully qualified domain name (FQDN) of the remote domains pointed to by the
    #         conditional forwarder.</p>
    #   @return [String]
    # @!attribute dns_ip_addrs
    #   <p>The IP addresses of the remote DNS server associated with RemoteDomainName. This is the
    #         IP address of the DNS server that your conditional forwarder points to.</p>
    #   @return [Array<String>]
    # @!attribute replication_scope
    #   <p>The replication scope of the conditional forwarder. The only allowed value is
    #           <code>Domain</code>, which will replicate the conditional forwarder to all of the domain
    #         controllers for your Amazon Web Services directory.</p>
    #   @return [String]
    class ConditionalForwarder < Struct.new(
      :remote_domain_name,
      :dns_ip_addrs,
      :replication_scope,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>ConnectDirectory</a> operation.</p>
    # @!attribute name
    #   <p>The fully qualified name of your self-managed directory, such as
    #           <code>corp.example.com</code>.</p>
    #   @return [String]
    # @!attribute short_name
    #   <p>The NetBIOS name of your self-managed directory, such as <code>CORP</code>.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password for your self-managed user account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the directory.</p>
    #   @return [String]
    # @!attribute size
    #   <p>The size of the directory.</p>
    #   @return [String]
    # @!attribute connect_settings
    #   <p>A <a>DirectoryConnectSettings</a> object that contains additional information
    #         for the operation.</p>
    #   @return [Types::DirectoryConnectSettings]
    # @!attribute tags
    #   <p>The tags to be assigned to AD Connector.</p>
    #   @return [Array<Types::Tag>]
    class ConnectDirectoryRequest < Struct.new(
      :name,
      :short_name,
      :password,
      :description,
      :size,
      :connect_settings,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>ConnectDirectory</a> operation.</p>
    # @!attribute directory_id
    #   <p>The identifier of the new directory.</p>
    #   @return [String]
    class ConnectDirectoryResult < Struct.new(
      :directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>CreateAlias</a> operation.</p>
    # @!attribute directory_id
    #   <p>The identifier of the directory for which to create the alias.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The requested alias.</p>
    #            <p>The alias must be unique amongst all aliases in Amazon Web Services. This operation throws an
    #               <code>EntityAlreadyExistsException</code> error if the alias already exists.</p>
    #   @return [String]
    class CreateAliasRequest < Struct.new(
      :directory_id,
      :alias,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>CreateAlias</a> operation.</p>
    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias for the directory.</p>
    #   @return [String]
    class CreateAliasResult < Struct.new(
      :directory_id,
      :alias,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>CreateComputer</a> operation.</p>
    # @!attribute directory_id
    #   <p>The identifier of the directory in which to create the computer account.</p>
    #   @return [String]
    # @!attribute computer_name
    #   <p>The name of the computer account.</p>
    #   @return [String]
    # @!attribute password
    #   <p>A one-time password that is used to join the computer to the directory. You should generate a random, strong password to use for this parameter.</p>
    #   @return [String]
    # @!attribute organizational_unit_distinguished_name
    #   <p>The fully-qualified distinguished name of the organizational unit to place the computer account in.</p>
    #   @return [String]
    # @!attribute computer_attributes
    #   <p>An array of <a>Attribute</a> objects that contain any LDAP attributes to apply to the
    #               computer account.</p>
    #   @return [Array<Types::Attribute>]
    class CreateComputerRequest < Struct.new(
      :directory_id,
      :computer_name,
      :password,
      :organizational_unit_distinguished_name,
      :computer_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results for the <a>CreateComputer</a> operation.</p>
    # @!attribute computer
    #   <p>A <a>Computer</a> object that represents the computer account.</p>
    #   @return [Types::Computer]
    class CreateComputerResult < Struct.new(
      :computer,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Initiates the creation of a conditional forwarder for your Directory Service for Microsoft Active
    #       Directory. Conditional forwarders are required in order to set up a trust relationship with
    #       another domain.</p>
    # @!attribute directory_id
    #   <p>The directory ID of the Amazon Web Services directory for which you are creating the conditional
    #         forwarder.</p>
    #   @return [String]
    # @!attribute remote_domain_name
    #   <p>The fully qualified domain name (FQDN) of the remote domain with which you will set up
    #         a trust relationship.</p>
    #   @return [String]
    # @!attribute dns_ip_addrs
    #   <p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>
    #   @return [Array<String>]
    class CreateConditionalForwarderRequest < Struct.new(
      :directory_id,
      :remote_domain_name,
      :dns_ip_addrs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a CreateConditinalForwarder request.</p>
    class CreateConditionalForwarderResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>CreateDirectory</a> operation. </p>
    # @!attribute name
    #   <p>The fully qualified name for the directory, such as <code>corp.example.com</code>.</p>
    #   @return [String]
    # @!attribute short_name
    #   <p>The NetBIOS name of the directory, such as <code>CORP</code>.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password for the directory administrator. The directory creation process creates a
    #         directory administrator account with the user name <code>Administrator</code> and this
    #         password.</p>
    #            <p>If you need to change the password for the administrator account, you can use the <a>ResetUserPassword</a> API call.</p>
    #            <p>The regex pattern for this string is made up of the following conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>Length (?=^.{8,64}$) – Must be between 8 and 64 characters</p>
    #               </li>
    #            </ul>
    #            <p>AND any 3 of the following password complexity rules required by Active Directory:</p>
    #            <ul>
    #               <li>
    #                  <p>Numbers and upper case and lowercase (?=.*\d)(?=.*[A-Z])(?=.*[a-z])</p>
    #               </li>
    #               <li>
    #                  <p>Numbers and special characters and lower case
    #             (?=.*\d)(?=.*[^A-Za-z0-9\s])(?=.*[a-z])</p>
    #               </li>
    #               <li>
    #                  <p>Special characters and upper case and lower case
    #             (?=.*[^A-Za-z0-9\s])(?=.*[A-Z])(?=.*[a-z])</p>
    #               </li>
    #               <li>
    #                  <p>Numbers and upper case and special characters
    #             (?=.*\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9\s])</p>
    #               </li>
    #            </ul>
    #            <p>For additional information about how Active Directory passwords are enforced, see <a href="https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/password-must-meet-complexity-requirements">Password must meet complexity requirements</a> on the Microsoft website.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the directory.</p>
    #   @return [String]
    # @!attribute size
    #   <p>The size of the directory.</p>
    #   @return [String]
    # @!attribute vpc_settings
    #   <p>A <a>DirectoryVpcSettings</a> object that contains additional information for
    #         the operation.</p>
    #   @return [Types::DirectoryVpcSettings]
    # @!attribute tags
    #   <p>The tags to be assigned to the Simple AD directory.</p>
    #   @return [Array<Types::Tag>]
    class CreateDirectoryRequest < Struct.new(
      :name,
      :short_name,
      :password,
      :description,
      :size,
      :vpc_settings,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>CreateDirectory</a> operation.</p>
    # @!attribute directory_id
    #   <p>The identifier of the directory that was created.</p>
    #   @return [String]
    class CreateDirectoryResult < Struct.new(
      :directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Secrets Manager secret that contains the
    #               credentials for the service account used to join hybrid domain controllers to your
    #               self-managed AD domain. This secret is used once and not stored.</p>
    #            <p>The secret must contain key-value pairs with keys matching
    #                   <code>customerAdAdminDomainUsername</code> and
    #                   <code>customerAdAdminDomainPassword</code>. For example:
    #                   <code>{"customerAdAdminDomainUsername":"carlos_salazar","customerAdAdminDomainPassword":"ExamplePassword123!"}</code>.</p>
    #   @return [String]
    # @!attribute assessment_id
    #   <p>The unique identifier of the successful directory assessment that validates your
    #               self-managed AD environment. You must have a successful directory assessment before you
    #               create a hybrid directory.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the directory. Each tag consists of a key and value pair.
    #               You can specify multiple tags as a list.</p>
    #   @return [Array<Types::Tag>]
    class CreateHybridADRequest < Struct.new(
      :secret_arn,
      :assessment_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The unique identifier of the newly created hybrid directory.</p>
    #   @return [String]
    class CreateHybridADResult < Struct.new(
      :directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>Identifier of the directory to which you want to subscribe and receive real-time logs to
    #         your specified CloudWatch log group.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>The name of the CloudWatch log group where the real-time domain controller logs are
    #         forwarded.</p>
    #   @return [String]
    class CreateLogSubscriptionRequest < Struct.new(
      :directory_id,
      :log_group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CreateLogSubscriptionResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Creates an Managed Microsoft AD directory.</p>
    # @!attribute name
    #   <p>The fully qualified domain name for the Managed Microsoft AD directory, such as
    #           <code>corp.example.com</code>. This name will resolve inside your VPC only. It does not need
    #         to be publicly resolvable.</p>
    #   @return [String]
    # @!attribute short_name
    #   <p>The NetBIOS name for your domain, such as <code>CORP</code>. If you don't specify a
    #         NetBIOS name, it will default to the first part of your directory DNS. For example,
    #           <code>CORP</code> for the directory DNS <code>corp.example.com</code>. </p>
    #   @return [String]
    # @!attribute password
    #   <p>The password for the default administrative user named <code>Admin</code>.</p>
    #            <p>If you need to change the password for the administrator account, you can use the <a>ResetUserPassword</a> API call.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the directory. This label will appear on the Amazon Web Services console
    #           <code>Directory Details</code> page after the directory is created.</p>
    #   @return [String]
    # @!attribute vpc_settings
    #   <p>Contains VPC information for the <a>CreateDirectory</a> or <a>CreateMicrosoftAD</a> operation.</p>
    #   @return [Types::DirectoryVpcSettings]
    # @!attribute edition
    #   <p>Managed Microsoft AD is available in two editions: <code>Standard</code> and
    #           <code>Enterprise</code>. <code>Enterprise</code> is the default.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the Managed Microsoft AD directory.</p>
    #   @return [Array<Types::Tag>]
    class CreateMicrosoftADRequest < Struct.new(
      :name,
      :short_name,
      :password,
      :description,
      :vpc_settings,
      :edition,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Result of a CreateMicrosoftAD request.</p>
    # @!attribute directory_id
    #   <p>The identifier of the directory that was created.</p>
    #   @return [String]
    class CreateMicrosoftADResult < Struct.new(
      :directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>CreateSnapshot</a> operation.</p>
    # @!attribute directory_id
    #   <p>The identifier of the directory of which to take a snapshot.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The descriptive name to apply to the snapshot.</p>
    #   @return [String]
    class CreateSnapshotRequest < Struct.new(
      :directory_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>CreateSnapshot</a> operation.</p>
    # @!attribute snapshot_id
    #   <p>The identifier of the snapshot that was created.</p>
    #   @return [String]
    class CreateSnapshotResult < Struct.new(
      :snapshot_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Directory Service for Microsoft Active Directory allows you to configure trust relationships. For
    #       example, you can establish a trust between your Managed Microsoft AD directory, and your existing
    #       self-managed Microsoft Active Directory. This would allow you to provide users and groups
    #       access to resources in either domain, with a single set of credentials.</p>
    #          <p>This action initiates the creation of the Amazon Web Services side of a trust relationship between an
    #       Managed Microsoft AD directory and an external domain.</p>
    # @!attribute directory_id
    #   <p>The Directory ID of the Managed Microsoft AD directory for which to establish the trust
    #         relationship.</p>
    #   @return [String]
    # @!attribute remote_domain_name
    #   <p>The Fully Qualified Domain Name (FQDN) of the external domain for which to create the
    #         trust relationship.</p>
    #   @return [String]
    # @!attribute trust_password
    #   <p>The trust password. The trust password must be the same password that was used when creating the trust
    #         relationship on the external domain.</p>
    #   @return [String]
    # @!attribute trust_direction
    #   <p>The direction of the trust relationship.</p>
    #   @return [String]
    # @!attribute trust_type
    #   <p>The trust relationship type. <code>Forest</code> is the default.</p>
    #   @return [String]
    # @!attribute conditional_forwarder_ip_addrs
    #   <p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>
    #   @return [Array<String>]
    # @!attribute selective_auth
    #   <p>Optional parameter to enable selective authentication for the trust.</p>
    #   @return [String]
    class CreateTrustRequest < Struct.new(
      :directory_id,
      :remote_domain_name,
      :trust_password,
      :trust_direction,
      :trust_type,
      :conditional_forwarder_ip_addrs,
      :selective_auth,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a CreateTrust request.</p>
    # @!attribute trust_id
    #   <p>A unique identifier for the trust relationship that was created.</p>
    #   @return [String]
    class CreateTrustResult < Struct.new(
      :trust_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p>The unique identifier of the directory assessment to delete.</p>
    #   @return [String]
    class DeleteADAssessmentRequest < Struct.new(
      :assessment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p>The unique identifier of the deleted directory assessment.</p>
    #   @return [String]
    class DeleteADAssessmentResult < Struct.new(
      :assessment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Deletes a conditional forwarder.</p>
    # @!attribute directory_id
    #   <p>The directory ID for which you are deleting the conditional forwarder.</p>
    #   @return [String]
    # @!attribute remote_domain_name
    #   <p>The fully qualified domain name (FQDN) of the remote domain with which you are deleting
    #         the conditional forwarder.</p>
    #   @return [String]
    class DeleteConditionalForwarderRequest < Struct.new(
      :directory_id,
      :remote_domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a DeleteConditionalForwarder request.</p>
    class DeleteConditionalForwarderResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>DeleteDirectory</a> operation.</p>
    # @!attribute directory_id
    #   <p>The identifier of the directory to delete.</p>
    #   @return [String]
    class DeleteDirectoryRequest < Struct.new(
      :directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>DeleteDirectory</a> operation.</p>
    # @!attribute directory_id
    #   <p>The directory identifier.</p>
    #   @return [String]
    class DeleteDirectoryResult < Struct.new(
      :directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>Identifier of the directory whose log subscription you want to delete.</p>
    #   @return [String]
    class DeleteLogSubscriptionRequest < Struct.new(
      :directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteLogSubscriptionResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>DeleteSnapshot</a> operation.</p>
    # @!attribute snapshot_id
    #   <p>The identifier of the directory snapshot to be deleted.</p>
    #   @return [String]
    class DeleteSnapshotRequest < Struct.new(
      :snapshot_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>DeleteSnapshot</a> operation.</p>
    # @!attribute snapshot_id
    #   <p>The identifier of the directory snapshot that was deleted.</p>
    #   @return [String]
    class DeleteSnapshotResult < Struct.new(
      :snapshot_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Deletes the local side of an existing trust relationship between the Managed Microsoft AD
    #       directory and the external domain.</p>
    # @!attribute trust_id
    #   <p>The Trust ID of the trust relationship to be deleted.</p>
    #   @return [String]
    # @!attribute delete_associated_conditional_forwarder
    #   <p>Delete a conditional forwarder as part of a DeleteTrustRequest.</p>
    #   @return [Boolean]
    class DeleteTrustRequest < Struct.new(
      :trust_id,
      :delete_associated_conditional_forwarder,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a DeleteTrust request.</p>
    # @!attribute trust_id
    #   <p>The Trust ID of the trust relationship that was deleted.</p>
    #   @return [String]
    class DeleteTrustResult < Struct.new(
      :trust_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The identifier of the certificate.</p>
    #   @return [String]
    class DeregisterCertificateRequest < Struct.new(
      :directory_id,
      :certificate_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeregisterCertificateResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Removes the specified directory as a publisher to the specified Amazon SNS topic.</p>
    # @!attribute directory_id
    #   <p>The Directory ID to remove as a publisher. This directory will no longer send messages
    #         to the specified Amazon SNS topic.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>The name of the Amazon SNS topic from which to remove the directory as a
    #         publisher.</p>
    #   @return [String]
    class DeregisterEventTopicRequest < Struct.new(
      :directory_id,
      :topic_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a DeregisterEventTopic request.</p>
    class DeregisterEventTopicResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p>The identifier of the directory assessment to describe.</p>
    #   @return [String]
    class DescribeADAssessmentRequest < Struct.new(
      :assessment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment
    #   <p>Detailed information about the self-managed instance settings (IDs and DNS
    #               IPs).</p>
    #   @return [Types::Assessment]
    # @!attribute assessment_reports
    #   <p>A list of assessment reports containing validation results for each domain controller
    #               and test category. Each report includes specific validation details and outcomes.</p>
    #   @return [Array<Types::AssessmentReport>]
    class DescribeADAssessmentResult < Struct.new(
      :assessment,
      :assessment_reports,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The identifier of the certificate.</p>
    #   @return [String]
    class DescribeCertificateRequest < Struct.new(
      :directory_id,
      :certificate_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate
    #   <p>Information about the certificate, including registered date time, certificate state, the
    #         reason for the state, expiration date time, and certificate common name.</p>
    #   @return [Types::Certificate]
    class DescribeCertificateResult < Struct.new(
      :certificate,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory for which to retrieve information.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of client authentication for which to retrieve information. If no type is
    #         specified, a list of all client authentication types that are supported for the specified
    #         directory is retrieved.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <i>DescribeClientAuthenticationSettingsResult.NextToken</i> value from a
    #         previous call to <a>DescribeClientAuthenticationSettings</a>. Pass null if this is
    #         the first call.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of items to return. If this value is zero, the maximum number of items
    #         is specified by the limitations of the operation. </p>
    #   @return [Integer]
    class DescribeClientAuthenticationSettingsRequest < Struct.new(
      :directory_id,
      :type,
      :next_token,
      :limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_authentication_settings_info
    #   <p>Information about the type of client authentication for the specified directory. The
    #         following information is retrieved: The date and time when the status of the client
    #         authentication type was last updated, whether the client authentication type is enabled or
    #         disabled, and the type of client authentication.</p>
    #   @return [Array<Types::ClientAuthenticationSettingInfo>]
    # @!attribute next_token
    #   <p>The next token used to retrieve the client authentication settings if the number of
    #         setting types exceeds page limit and there is another page.</p>
    #   @return [String]
    class DescribeClientAuthenticationSettingsResult < Struct.new(
      :client_authentication_settings_info,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a conditional forwarder.</p>
    # @!attribute directory_id
    #   <p>The directory ID for which to get the list of associated conditional
    #         forwarders.</p>
    #   @return [String]
    # @!attribute remote_domain_names
    #   <p>The fully qualified domain names (FQDN) of the remote domains for which to get the list
    #         of associated conditional forwarders. If this member is null, all conditional forwarders are
    #         returned.</p>
    #   @return [Array<String>]
    class DescribeConditionalForwardersRequest < Struct.new(
      :directory_id,
      :remote_domain_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a DescribeConditionalForwarder request.</p>
    # @!attribute conditional_forwarders
    #   <p>The list of conditional forwarders that have been created.</p>
    #   @return [Array<Types::ConditionalForwarder>]
    class DescribeConditionalForwardersResult < Struct.new(
      :conditional_forwarders,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>DescribeDirectories</a> operation.</p>
    # @!attribute directory_ids
    #   <p>A list of identifiers of the directories for which to obtain the information. If this
    #         member is null, all directories that belong to the current account are returned.</p>
    #            <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>DescribeDirectoriesResult.NextToken</code> value from a previous call to <a>DescribeDirectories</a>. Pass null if this is the first call.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of items to return. If this value is zero, the maximum number of items
    #         is specified by the limitations of the operation.</p>
    #   @return [Integer]
    class DescribeDirectoriesRequest < Struct.new(
      :directory_ids,
      :next_token,
      :limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>DescribeDirectories</a> operation.</p>
    # @!attribute directory_descriptions
    #   <p>The list of available <a>DirectoryDescription</a> objects that were retrieved.</p>
    #            <p>It is possible that this list contains less than the number of items specified in the
    #           <code>Limit</code> member of the request. This occurs if there are less than the requested
    #         number of items left to retrieve, or if the limitations of the operation have been
    #         exceeded.</p>
    #   @return [Array<Types::DirectoryDescription>]
    # @!attribute next_token
    #   <p>If not null, more results are available. Pass this value for the <code>NextToken</code>
    #         parameter in a subsequent call to <a>DescribeDirectories</a> to retrieve the next
    #         set of items.</p>
    #   @return [String]
    class DescribeDirectoriesResult < Struct.new(
      :directory_descriptions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The directory identifier.</p>
    #   @return [String]
    class DescribeDirectoryDataAccessRequest < Struct.new(
      :directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_access_status
    #   <p>The current status of data access through the Directory Service Data API.</p>
    #   @return [String]
    class DescribeDirectoryDataAccessResult < Struct.new(
      :data_access_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>Identifier of the directory for which to retrieve the domain controller
    #         information.</p>
    #   @return [String]
    # @!attribute domain_controller_ids
    #   <p>A list of identifiers for the domain controllers whose information will be
    #         provided.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <i>DescribeDomainControllers.NextToken</i> value from a previous call
    #         to <a>DescribeDomainControllers</a>. Pass null if this is the first call.
    #       </p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    class DescribeDomainControllersRequest < Struct.new(
      :directory_id,
      :domain_controller_ids,
      :next_token,
      :limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_controllers
    #   <p>List of the <a>DomainController</a> objects that were retrieved.</p>
    #   @return [Array<Types::DomainController>]
    # @!attribute next_token
    #   <p>If not null, more results are available. Pass this value for the <code>NextToken</code>
    #         parameter in a subsequent call to <a>DescribeDomainControllers</a> retrieve the
    #         next set of items.</p>
    #   @return [String]
    class DescribeDomainControllersResult < Struct.new(
      :domain_controllers,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes event topics.</p>
    # @!attribute directory_id
    #   <p>The Directory ID for which to get the list of associated Amazon SNS topics. If this member
    #         is null, associations for all Directory IDs are returned.</p>
    #   @return [String]
    # @!attribute topic_names
    #   <p>A list of Amazon SNS topic names for which to obtain the information. If this member is
    #         null, all associations for the specified Directory ID are returned.</p>
    #            <p>An empty list results in an <code>InvalidParameterException</code> being
    #         thrown.</p>
    #   @return [Array<String>]
    class DescribeEventTopicsRequest < Struct.new(
      :directory_id,
      :topic_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a DescribeEventTopic request.</p>
    # @!attribute event_topics
    #   <p>A list of Amazon SNS topic names that receive status messages from the specified Directory
    #         ID.</p>
    #   @return [Array<Types::EventTopic>]
    class DescribeEventTopicsResult < Struct.new(
      :event_topics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the hybrid directory for which to retrieve update
    #               information.</p>
    #   @return [String]
    # @!attribute update_type
    #   <p>The type of update activities to retrieve. Valid values include
    #                   <code>SelfManagedInstances</code> and
    #               <code>HybridAdministratorAccount</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from a previous request to <a>DescribeHybridADUpdate</a>. Pass null if this is the first request.</p>
    #   @return [String]
    class DescribeHybridADUpdateRequest < Struct.new(
      :directory_id,
      :update_type,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_activities
    #   <p>Information about update activities for the hybrid directory, organized by update
    #               type.</p>
    #   @return [Types::HybridUpdateActivities]
    # @!attribute next_token
    #   <p>If not null, more results are available. Pass this value for the
    #                   <code>NextToken</code> parameter in a subsequent request to retrieve the next set of
    #               items.</p>
    #   @return [String]
    class DescribeHybridADUpdateResult < Struct.new(
      :update_activities,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of LDAP security to enable. Currently only the value <code>Client</code> is
    #         supported.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The type of next token used for pagination.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Specifies the number of items that should be displayed on one page.</p>
    #   @return [Integer]
    class DescribeLDAPSSettingsRequest < Struct.new(
      :directory_id,
      :type,
      :next_token,
      :limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ldaps_settings_info
    #   <p>Information about LDAP security for the specified directory, including status of
    #         enablement, state last updated date time, and the reason for the state.</p>
    #   @return [Array<Types::LDAPSSettingInfo>]
    # @!attribute next_token
    #   <p>The next token used to retrieve the LDAPS settings if the number of setting types exceeds
    #         page limit and there is another page.</p>
    #   @return [String]
    class DescribeLDAPSSettingsResult < Struct.new(
      :ldaps_settings_info,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The name of the Region. For example, <code>us-east-1</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>DescribeRegionsResult.NextToken</code> value from a previous call to <a>DescribeRegions</a>. Pass null if this is the first call.</p>
    #   @return [String]
    class DescribeRegionsRequest < Struct.new(
      :directory_id,
      :region_name,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute regions_description
    #   <p>List of Region information related to the directory for each replicated Region.</p>
    #   @return [Array<Types::RegionDescription>]
    # @!attribute next_token
    #   <p>If not null, more results are available. Pass this value for the <code>NextToken</code>
    #         parameter in a subsequent call to <a>DescribeRegions</a> to retrieve the next set
    #         of items.</p>
    #   @return [String]
    class DescribeRegionsResult < Struct.new(
      :regions_description,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory for which to retrieve information.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the directory settings for which to retrieve information.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>DescribeSettingsResult.NextToken</code> value from a previous call to <a>DescribeSettings</a>. Pass null if this is the first call.</p>
    #   @return [String]
    class DescribeSettingsRequest < Struct.new(
      :directory_id,
      :status,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute setting_entries
    #   <p>The list of <a>SettingEntry</a> objects that were retrieved.</p>
    #            <p>It is possible that this list contains less than the number of items specified in the
    #           <code>Limit</code> member of the request. This occurs if there are less than the requested
    #         number of items left to retrieve, or if the limitations of the operation have been
    #         exceeded.</p>
    #   @return [Array<Types::SettingEntry>]
    # @!attribute next_token
    #   <p>If not null, token that indicates that more results are available. Pass this value for the
    #           <code>NextToken</code> parameter in a subsequent call to <code>DescribeSettings</code> to
    #         retrieve the next set of items. </p>
    #   @return [String]
    class DescribeSettingsResult < Struct.new(
      :directory_id,
      :setting_entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner_directory_id
    #   <p>Returns the identifier of the directory in the directory owner account. </p>
    #   @return [String]
    # @!attribute shared_directory_ids
    #   <p>A list of identifiers of all shared directories in your account. </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>DescribeSharedDirectoriesResult.NextToken</code> value from a previous call to
    #           <a>DescribeSharedDirectories</a>. Pass null if this is the first call. </p>
    #   @return [String]
    # @!attribute limit
    #   <p>The number of shared directories to return in the response object.</p>
    #   @return [Integer]
    class DescribeSharedDirectoriesRequest < Struct.new(
      :owner_directory_id,
      :shared_directory_ids,
      :next_token,
      :limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute shared_directories
    #   <p>A list of all shared directories in your account.</p>
    #   @return [Array<Types::SharedDirectory>]
    # @!attribute next_token
    #   <p>If not null, token that indicates that more results are available. Pass this value for the
    #           <code>NextToken</code> parameter in a subsequent call to <a>DescribeSharedDirectories</a> to retrieve the next set of items.</p>
    #   @return [String]
    class DescribeSharedDirectoriesResult < Struct.new(
      :shared_directories,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>DescribeSnapshots</a> operation.</p>
    # @!attribute directory_id
    #   <p>The identifier of the directory for which to retrieve snapshot information.</p>
    #   @return [String]
    # @!attribute snapshot_ids
    #   <p>A list of identifiers of the snapshots to obtain the information for. If this member is
    #            null or empty, all snapshots are returned using the <i>Limit</i> and <i>NextToken</i>
    #            members.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <i>DescribeSnapshotsResult.NextToken</i> value from a previous call to
    #               <a>DescribeSnapshots</a>. Pass null if this is the first call.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of objects to return.</p>
    #   @return [Integer]
    class DescribeSnapshotsRequest < Struct.new(
      :directory_id,
      :snapshot_ids,
      :next_token,
      :limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>DescribeSnapshots</a> operation.</p>
    # @!attribute snapshots
    #   <p>The list of <a>Snapshot</a> objects that were retrieved.</p>
    #            <p>It is possible that this list contains less than the number of items specified in the
    #               <i>Limit</i> member of the request. This occurs if there are less than the requested
    #            number of items left to retrieve, or if the limitations of the operation have been
    #            exceeded.</p>
    #   @return [Array<Types::Snapshot>]
    # @!attribute next_token
    #   <p>If not null, more results are available. Pass this value in the <i>NextToken</i> member of
    #            a subsequent call to <a>DescribeSnapshots</a>.</p>
    #   @return [String]
    class DescribeSnapshotsResult < Struct.new(
      :snapshots,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the trust relationships for a particular Managed Microsoft AD directory. If no input
    #       parameters are provided, such as directory ID or trust ID, this request describes all the
    #       trust relationships.</p>
    # @!attribute directory_id
    #   <p>The Directory ID of the Amazon Web Services directory that is a part of the requested trust
    #         relationship.</p>
    #   @return [String]
    # @!attribute trust_ids
    #   <p>A list of identifiers of the trust relationships for which to obtain the information. If
    #         this member is null, all trust relationships that belong to the current account are
    #         returned.</p>
    #            <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <i>DescribeTrustsResult.NextToken</i> value from a previous call to
    #           <a>DescribeTrusts</a>. Pass null if this is the first call.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of objects to return.</p>
    #   @return [Integer]
    class DescribeTrustsRequest < Struct.new(
      :directory_id,
      :trust_ids,
      :next_token,
      :limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a DescribeTrust request.</p>
    # @!attribute trusts
    #   <p>The list of Trust objects that were retrieved.</p>
    #            <p>It is possible that this list contains less than the number of items specified in the
    #           <i>Limit</i> member of the request. This occurs if there are less than the
    #         requested number of items left to retrieve, or if the limitations of the operation have been
    #         exceeded.</p>
    #   @return [Array<Types::Trust>]
    # @!attribute next_token
    #   <p>If not null, more results are available. Pass this value for the
    #           <i>NextToken</i> parameter in a subsequent call to <a>DescribeTrusts</a> to retrieve the next set of items.</p>
    #   @return [String]
    class DescribeTrustsResult < Struct.new(
      :trusts,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The unique identifier of the directory. </p>
    #   @return [String]
    # @!attribute update_type
    #   <p> The type of updates you want to describe for the directory. </p>
    #   @return [String]
    # @!attribute region_name
    #   <p> The name of the Region. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> The <code>DescribeUpdateDirectoryResult</code>. NextToken value from a previous call to
    #           <a>DescribeUpdateDirectory</a>. Pass null if this is the first call. </p>
    #   @return [String]
    class DescribeUpdateDirectoryRequest < Struct.new(
      :directory_id,
      :update_type,
      :region_name,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_activities
    #   <p> The list of update activities on a directory for the requested update type. </p>
    #   @return [Array<Types::UpdateInfoEntry>]
    # @!attribute next_token
    #   <p> If not null, more results are available. Pass this value for the <code>NextToken</code>
    #         parameter. </p>
    #   @return [String]
    class DescribeUpdateDirectoryResult < Struct.new(
      :update_activities,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Region you specified is the same Region where the Managed Microsoft AD directory was created.
    #       Specify a different Region and try again.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class DirectoryAlreadyInRegionException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified directory has already been shared with this Amazon Web Services account.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class DirectoryAlreadySharedException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for the <a>ConnectDirectory</a> operation when an AD
    #       Connector directory is being created.</p>
    # @!attribute vpc_id
    #   <p>The identifier of the VPC in which the AD Connector is created.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>A list of subnet identifiers in the VPC in which the AD Connector is created.</p>
    #   @return [Array<String>]
    # @!attribute customer_dns_ips
    #   <p>A list of one or more IP addresses of DNS servers or domain controllers in your
    #         self-managed directory.</p>
    #   @return [Array<String>]
    # @!attribute customer_user_name
    #   <p>The user name of an account in your self-managed directory that is used to connect to the
    #         directory. This account must have the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>Read users and groups</p>
    #               </li>
    #               <li>
    #                  <p>Create computer objects</p>
    #               </li>
    #               <li>
    #                  <p>Join computers to the domain</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DirectoryConnectSettings < Struct.new(
      :vpc_id,
      :subnet_ids,
      :customer_dns_ips,
      :customer_user_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an AD Connector directory.</p>
    # @!attribute vpc_id
    #   <p>The identifier of the VPC that the AD Connector is in.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>A list of subnet identifiers in the VPC that the AD Connector is in.</p>
    #   @return [Array<String>]
    # @!attribute customer_user_name
    #   <p>The user name of the service account in your self-managed directory.</p>
    #   @return [String]
    # @!attribute security_group_id
    #   <p>The security group identifier for the AD Connector directory.</p>
    #   @return [String]
    # @!attribute availability_zones
    #   <p>A list of the Availability Zones that the directory is in.</p>
    #   @return [Array<String>]
    # @!attribute connect_ips
    #   <p>The IP addresses of the AD Connector servers.</p>
    #   @return [Array<String>]
    class DirectoryConnectSettingsDescription < Struct.new(
      :vpc_id,
      :subnet_ids,
      :customer_user_name,
      :security_group_id,
      :availability_zones,
      :connect_ips,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an Directory Service directory.</p>
    # @!attribute directory_id
    #   <p>The directory identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The fully qualified name of the directory.</p>
    #   @return [String]
    # @!attribute short_name
    #   <p>The short name of the directory.</p>
    #   @return [String]
    # @!attribute size
    #   <p>The directory size.</p>
    #   @return [String]
    # @!attribute edition
    #   <p>The edition associated with this directory.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias for the directory. If no alias has been created for the directory, the alias is
    #         the directory identifier, such as <code>d-XXXXXXXXXX</code>.</p>
    #   @return [String]
    # @!attribute access_url
    #   <p>The access URL for the directory, such as
    #           <code>http://<alias>.awsapps.com</code>. If no alias has been created for the
    #         directory, <code><alias></code> is the directory identifier, such as
    #           <code>d-XXXXXXXXXX</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the directory.</p>
    #   @return [String]
    # @!attribute dns_ip_addrs
    #   <p>The IP addresses of the DNS servers for the directory. For a Simple AD or Microsoft AD
    #         directory, these are the IP addresses of the Simple AD or Microsoft AD directory servers.
    #         For an AD Connector directory, these are the IP addresses of the DNS servers or domain
    #         controllers in your self-managed directory to which the AD Connector is connected.</p>
    #   @return [Array<String>]
    # @!attribute stage
    #   <p>The current stage of the directory.</p>
    #   @return [String]
    # @!attribute share_status
    #   <p>Current directory status of the shared Managed Microsoft AD directory.</p>
    #   @return [String]
    # @!attribute share_method
    #   <p>The method used when sharing a directory to determine whether the directory should be
    #         shared within your Amazon Web Services organization (<code>ORGANIZATIONS</code>) or with any Amazon Web Services account
    #         by sending a shared directory request (<code>HANDSHAKE</code>).</p>
    #   @return [String]
    # @!attribute share_notes
    #   <p>A directory share request that is sent by the directory owner to the directory consumer.
    #         The request includes a typed message to help the directory consumer administrator determine
    #         whether to approve or reject the share invitation.</p>
    #   @return [String]
    # @!attribute launch_time
    #   <p>Specifies when the directory was created.</p>
    #   @return [Time]
    # @!attribute stage_last_updated_date_time
    #   <p>The date and time that the stage was last updated.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>The directory type.</p>
    #   @return [String]
    # @!attribute vpc_settings
    #   <p>A <a>DirectoryVpcSettingsDescription</a> object that contains additional
    #         information about a directory. This member is only present if the directory is a Simple AD
    #         or Managed Microsoft AD directory.</p>
    #   @return [Types::DirectoryVpcSettingsDescription]
    # @!attribute connect_settings
    #   <p>A <a>DirectoryConnectSettingsDescription</a> object that contains additional
    #         information about an AD Connector directory. This member is only present if the directory is
    #         an AD Connector directory.</p>
    #   @return [Types::DirectoryConnectSettingsDescription]
    # @!attribute radius_settings
    #   <p>A <a>RadiusSettings</a> object that contains information about the RADIUS
    #         server configured for this directory.</p>
    #   @return [Types::RadiusSettings]
    # @!attribute radius_status
    #   <p>The status of the RADIUS MFA server connection.</p>
    #   @return [String]
    # @!attribute stage_reason
    #   <p>Additional information about the directory stage.</p>
    #   @return [String]
    # @!attribute sso_enabled
    #   <p>Indicates if single sign-on is enabled for the directory. For more information, see <a>EnableSso</a> and <a>DisableSso</a>.</p>
    #   @return [Boolean]
    # @!attribute desired_number_of_domain_controllers
    #   <p>The desired number of domain controllers in the directory if the directory is Microsoft
    #         AD.</p>
    #   @return [Integer]
    # @!attribute owner_directory_description
    #   <p>Describes the Managed Microsoft AD directory in the directory owner account.</p>
    #   @return [Types::OwnerDirectoryDescription]
    # @!attribute regions_info
    #   <p>Lists the Regions where the directory has replicated.</p>
    #   @return [Types::RegionsInfo]
    # @!attribute os_version
    #   <p>The operating system (OS) version of the directory.</p>
    #   @return [String]
    # @!attribute hybrid_settings
    #   <p>Contains information about the hybrid directory configuration for the directory,
    #               including Amazon Web Services System Manager managed node identifiers and DNS IPs.</p>
    #   @return [Types::HybridSettingsDescription]
    class DirectoryDescription < Struct.new(
      :directory_id,
      :name,
      :short_name,
      :size,
      :edition,
      :alias,
      :access_url,
      :description,
      :dns_ip_addrs,
      :stage,
      :share_status,
      :share_method,
      :share_notes,
      :launch_time,
      :stage_last_updated_date_time,
      :type,
      :vpc_settings,
      :connect_settings,
      :radius_settings,
      :radius_status,
      :stage_reason,
      :sso_enabled,
      :desired_number_of_domain_controllers,
      :owner_directory_description,
      :regions_info,
      :os_version,
      :hybrid_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:sso_enabled] = false unless options.key?(:sso_enabled)
        super
      end
    end

    # <p>The specified directory does not exist in the system.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class DirectoryDoesNotExistException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The directory is already updated to desired update type settings. </p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class DirectoryInDesiredStateException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of directories in the region has been reached. You can use the
    #                 <a>GetDirectoryLimits</a> operation to determine your directory limits in
    #             the region.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class DirectoryLimitExceededException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains directory limit information for a Region.</p>
    # @!attribute cloud_only_directories_limit
    #   <p>The maximum number of cloud directories allowed in the Region.</p>
    #   @return [Integer]
    # @!attribute cloud_only_directories_current_count
    #   <p>The current number of cloud directories in the Region.</p>
    #   @return [Integer]
    # @!attribute cloud_only_directories_limit_reached
    #   <p>Indicates if the cloud directory limit has been reached.</p>
    #   @return [Boolean]
    # @!attribute cloud_only_microsoft_ad_limit
    #   <p>The maximum number of Managed Microsoft AD directories allowed in the region.</p>
    #   @return [Integer]
    # @!attribute cloud_only_microsoft_ad_current_count
    #   <p>The current number of Managed Microsoft AD directories in the region.</p>
    #   @return [Integer]
    # @!attribute cloud_only_microsoft_ad_limit_reached
    #   <p>Indicates if the Managed Microsoft AD directory limit has been reached.</p>
    #   @return [Boolean]
    # @!attribute connected_directories_limit
    #   <p>The maximum number of connected directories allowed in the Region.</p>
    #   @return [Integer]
    # @!attribute connected_directories_current_count
    #   <p>The current number of connected directories in the Region.</p>
    #   @return [Integer]
    # @!attribute connected_directories_limit_reached
    #   <p>Indicates if the connected directory limit has been reached.</p>
    #   @return [Boolean]
    class DirectoryLimits < Struct.new(
      :cloud_only_directories_limit,
      :cloud_only_directories_current_count,
      :cloud_only_directories_limit_reached,
      :cloud_only_microsoft_ad_limit,
      :cloud_only_microsoft_ad_current_count,
      :cloud_only_microsoft_ad_limit_reached,
      :connected_directories_limit,
      :connected_directories_current_count,
      :connected_directories_limit_reached,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cloud_only_directories_limit_reached] = false unless options.key?(:cloud_only_directories_limit_reached)
        options[:cloud_only_microsoft_ad_limit_reached] = false unless options.key?(:cloud_only_microsoft_ad_limit_reached)
        options[:connected_directories_limit_reached] = false unless options.key?(:connected_directories_limit_reached)
        super
      end
    end

    # <p>The specified directory has not been shared with this Amazon Web Services account.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class DirectoryNotSharedException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified directory is unavailable.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class DirectoryUnavailableException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains VPC information for the <a>CreateDirectory</a>, <a>CreateMicrosoftAD</a>, or <a>CreateHybridAD</a> operation.</p>
    # @!attribute vpc_id
    #   <p>The identifier of the VPC in which to create the directory.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The identifiers of the subnets for the directory servers. The two subnets must be in
    #         different Availability Zones. Directory Service creates a directory server and a DNS server in each of
    #         these subnets.</p>
    #   @return [Array<String>]
    class DirectoryVpcSettings < Struct.new(
      :vpc_id,
      :subnet_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the directory.</p>
    # @!attribute vpc_id
    #   <p>The identifier of the VPC that the directory is in.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The identifiers of the subnets for the directory servers.</p>
    #   @return [Array<String>]
    # @!attribute security_group_id
    #   <p>The domain controller security group identifier for the directory.</p>
    #   @return [String]
    # @!attribute availability_zones
    #   <p>The list of Availability Zones that the directory is in.</p>
    #   @return [Array<String>]
    class DirectoryVpcSettingsDescription < Struct.new(
      :vpc_id,
      :subnet_ids,
      :security_group_id,
      :availability_zones,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory </p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of client authentication to disable. Currently the only parameter
    #           <code>"SmartCard"</code> is supported.</p>
    #   @return [String]
    class DisableClientAuthenticationRequest < Struct.new(
      :directory_id,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisableClientAuthenticationResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The directory identifier.</p>
    #   @return [String]
    class DisableDirectoryDataAccessRequest < Struct.new(
      :directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisableDirectoryDataAccessResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of LDAP security to enable. Currently only the value <code>Client</code> is
    #         supported.</p>
    #   @return [String]
    class DisableLDAPSRequest < Struct.new(
      :directory_id,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisableLDAPSResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>DisableRadius</a> operation.</p>
    # @!attribute directory_id
    #   <p>The identifier of the directory for which to disable MFA.</p>
    #   @return [String]
    class DisableRadiusRequest < Struct.new(
      :directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>DisableRadius</a> operation.</p>
    class DisableRadiusResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>DisableSso</a> operation.</p>
    # @!attribute directory_id
    #   <p>The identifier of the directory for which to disable single-sign on.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The username of an alternate account to use to disable single-sign on. This is only used
    #         for AD Connector directories. This account must have privileges to remove a service
    #         principal name.</p>
    #            <p>If the AD Connector service account does not have privileges to remove a service
    #         principal name, you can specify an alternate account with the <i>UserName</i>
    #         and <i>Password</i> parameters. These credentials are only used to disable
    #         single sign-on and are not stored by the service. The AD Connector service account is not
    #         changed.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password of an alternate account to use to disable single-sign on. This is only used
    #         for AD Connector directories. For more information, see the <i>UserName</i>
    #         parameter.</p>
    #   @return [String]
    class DisableSsoRequest < Struct.new(
      :directory_id,
      :user_name,
      :password,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>DisableSso</a> operation.</p>
    class DisableSsoResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the domain controllers for a specified directory.</p>
    # @!attribute directory_id
    #   <p>Identifier of the directory where the domain controller resides.</p>
    #   @return [String]
    # @!attribute domain_controller_id
    #   <p>Identifies a specific domain controller in the directory.</p>
    #   @return [String]
    # @!attribute dns_ip_addr
    #   <p>The IP address of the domain controller.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The identifier of the VPC that contains the domain controller.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>Identifier of the subnet in the VPC that contains the domain controller.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone where the domain controller is located.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the domain controller.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A description of the domain controller state.</p>
    #   @return [String]
    # @!attribute launch_time
    #   <p>Specifies when the domain controller was created.</p>
    #   @return [Time]
    # @!attribute status_last_updated_date_time
    #   <p>The date and time that the status was last updated.</p>
    #   @return [Time]
    class DomainController < Struct.new(
      :directory_id,
      :domain_controller_id,
      :dns_ip_addr,
      :vpc_id,
      :subnet_id,
      :availability_zone,
      :status,
      :status_reason,
      :launch_time,
      :status_last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum allowed number of domain controllers per directory was exceeded. The
    #       default limit per directory is 20 domain controllers.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class DomainControllerLimitExceededException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the specified directory. </p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of client authentication to enable. Currently only the value
    #           <code>SmartCard</code> is supported. Smart card authentication in AD Connector requires
    #         that you enable Kerberos Constrained Delegation for the Service User to the LDAP service in
    #         your self-managed AD. </p>
    #   @return [String]
    class EnableClientAuthenticationRequest < Struct.new(
      :directory_id,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class EnableClientAuthenticationResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The directory identifier.</p>
    #   @return [String]
    class EnableDirectoryDataAccessRequest < Struct.new(
      :directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class EnableDirectoryDataAccessResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of LDAP security to enable. Currently only the value <code>Client</code> is
    #         supported.</p>
    #   @return [String]
    class EnableLDAPSRequest < Struct.new(
      :directory_id,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class EnableLDAPSResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>EnableRadius</a> operation.</p>
    # @!attribute directory_id
    #   <p>The identifier of the directory for which to enable MFA.</p>
    #   @return [String]
    # @!attribute radius_settings
    #   <p>A <a>RadiusSettings</a> object that contains information about the RADIUS
    #            server.</p>
    #   @return [Types::RadiusSettings]
    class EnableRadiusRequest < Struct.new(
      :directory_id,
      :radius_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>EnableRadius</a> operation.</p>
    class EnableRadiusResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>EnableSso</a> operation.</p>
    # @!attribute directory_id
    #   <p>The identifier of the directory for which to enable single-sign on.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The username of an alternate account to use to enable single-sign on. This is only used
    #         for AD Connector directories. This account must have privileges to add a service principal
    #         name.</p>
    #            <p>If the AD Connector service account does not have privileges to add a service principal
    #         name, you can specify an alternate account with the <i>UserName</i> and
    #           <i>Password</i> parameters. These credentials are only used to enable single
    #         sign-on and are not stored by the service. The AD Connector service account is not
    #         changed.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password of an alternate account to use to enable single-sign on. This is only used
    #         for AD Connector directories. For more information, see the <i>UserName</i>
    #         parameter.</p>
    #   @return [String]
    class EnableSsoRequest < Struct.new(
      :directory_id,
      :user_name,
      :password,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>EnableSso</a> operation.</p>
    class EnableSsoResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified entity already exists.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class EntityAlreadyExistsException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified entity could not be found.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class EntityDoesNotExistException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about Amazon SNS topic and Directory Service directory associations.</p>
    # @!attribute directory_id
    #   <p>The Directory ID of an Directory Service directory that will publish status messages to an Amazon SNS
    #         topic.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>The name of an Amazon SNS topic the receives status messages from the directory.</p>
    #   @return [String]
    # @!attribute topic_arn
    #   <p>The Amazon SNS topic ARN (Amazon Resource Name).</p>
    #   @return [String]
    # @!attribute created_date_time
    #   <p>The date and time of when you associated your directory with the Amazon SNS topic.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The topic registration status.</p>
    #   @return [String]
    class EventTopic < Struct.new(
      :directory_id,
      :topic_name,
      :topic_arn,
      :created_date_time,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>GetDirectoryLimits</a> operation.</p>
    class GetDirectoryLimitsRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>GetDirectoryLimits</a> operation.</p>
    # @!attribute directory_limits
    #   <p>A <a>DirectoryLimits</a> object that contains the directory limits for the
    #         current Region.</p>
    #   @return [Types::DirectoryLimits]
    class GetDirectoryLimitsResult < Struct.new(
      :directory_limits,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>GetSnapshotLimits</a> operation.</p>
    # @!attribute directory_id
    #   <p>Contains the identifier of the directory to obtain the limits for.</p>
    #   @return [String]
    class GetSnapshotLimitsRequest < Struct.new(
      :directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>GetSnapshotLimits</a> operation.</p>
    # @!attribute snapshot_limits
    #   <p>A <a>SnapshotLimits</a> object that contains the manual snapshot limits for the specified
    #            directory.</p>
    #   @return [Types::SnapshotLimits]
    class GetSnapshotLimitsResult < Struct.new(
      :snapshot_limits,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Use to recover to the hybrid directory administrator account credentials.</p>
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Secrets Manager secret that contains the
    #               credentials for the AD administrator user, and enables hybrid domain controllers to
    #               join the managed AD domain. For example:</p>
    #            <p>
    #               <code>
    #                   {"customerAdAdminDomainUsername":"carlos_salazar","customerAdAdminDomainPassword":"ExamplePassword123!"}.
    #               </code>
    #            </p>
    #   @return [String]
    class HybridAdministratorAccountUpdate < Struct.new(
      :secret_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration settings for self-managed instances with SSM used in hybrid
    #             directory operations.</p>
    # @!attribute customer_dns_ips
    #   <p>The IP addresses of the DNS servers or domain controllers in your self-managed AD
    #               environment.</p>
    #   @return [Array<String>]
    # @!attribute instance_ids
    #   <p>The identifiers of the self-managed instances with SSM used in hybrid
    #               directory.</p>
    #   @return [Array<String>]
    class HybridCustomerInstancesSettings < Struct.new(
      :customer_dns_ips,
      :instance_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the current hybrid directory configuration settings for a directory.</p>
    # @!attribute self_managed_dns_ip_addrs
    #   <p>The IP addresses of the DNS servers in your self-managed AD environment.</p>
    #   @return [Array<String>]
    # @!attribute self_managed_instance_ids
    #   <p>The identifiers of the self-managed instances with SSM used for hybrid directory
    #               operations.</p>
    #   @return [Array<String>]
    class HybridSettingsDescription < Struct.new(
      :self_managed_dns_ip_addrs,
      :self_managed_instance_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about update activities for different components of a hybrid
    #             directory.</p>
    # @!attribute self_managed_instances
    #   <p>A list of update activities related to the self-managed instances with SSM in the
    #               self-managed instances with SSM hybrid directory configuration.</p>
    #   @return [Array<Types::HybridUpdateInfoEntry>]
    # @!attribute hybrid_administrator_account
    #   <p>A list of update activities related to hybrid directory administrator account
    #               changes.</p>
    #   @return [Array<Types::HybridUpdateInfoEntry>]
    class HybridUpdateActivities < Struct.new(
      :self_managed_instances,
      :hybrid_administrator_account,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about a specific update activity for a hybrid directory
    #             component.</p>
    # @!attribute status
    #   <p>The current status of the update activity. Valid values include <code>UPDATED</code>,
    #                   <code>UPDATING</code>, and <code>UPDATE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A human-readable description of the update status, including any error details or
    #               progress information.</p>
    #   @return [String]
    # @!attribute initiated_by
    #   <p>Specifies if the update was initiated by the customer or Amazon Web Services.</p>
    #   @return [String]
    # @!attribute new_value
    #   <p>The new configuration values being applied in this update.</p>
    #   @return [Types::HybridUpdateValue]
    # @!attribute previous_value
    #   <p>The previous configuration values before this update was applied.</p>
    #   @return [Types::HybridUpdateValue]
    # @!attribute start_time
    #   <p>The date and time when the update activity was initiated.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time when the update activity status was last updated.</p>
    #   @return [Time]
    # @!attribute assessment_id
    #   <p>The identifier of the assessment performed to validate this update
    #               configuration.</p>
    #   @return [String]
    class HybridUpdateInfoEntry < Struct.new(
      :status,
      :status_reason,
      :initiated_by,
      :new_value,
      :previous_value,
      :start_time,
      :last_updated_date_time,
      :assessment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration values for a hybrid directory update, including Amazon Web Services
    #             System Manager managed node and DNS information.</p>
    # @!attribute instance_ids
    #   <p>The identifiers of the self-managed instances with SSM in the hybrid directory
    #               configuration.</p>
    #   @return [Array<String>]
    # @!attribute dns_ips
    #   <p>The IP addresses of the DNS servers or domain controllers in the hybrid directory
    #               configuration.</p>
    #   @return [Array<String>]
    class HybridUpdateValue < Struct.new(
      :instance_ids,
      :dns_ips,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified directory setting is not compatible with other settings.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class IncompatibleSettingsException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The account does not have sufficient permission to perform the operation.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class InsufficientPermissionsException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The certificate PEM that was provided has incorrect encoding.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class InvalidCertificateException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Client authentication is already enabled.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class InvalidClientAuthStatusException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The LDAP activities could not be performed because they are limited by the LDAPS
    #       status.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class InvalidLDAPSStatusException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>NextToken</code> value is not valid.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameters are not valid.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The new password provided by the user does not meet the password complexity
    #             requirements defined in your directory.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class InvalidPasswordException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified shared target is not valid.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class InvalidTargetException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>IP address block. This is often the address block of the DNS server used for your
    #          self-managed domain. </p>
    # @!attribute cidr_ip
    #   <p>IP address block using CIDR format, for example 10.0.0.0/24. This is often the
    #            address block of the DNS server used for your self-managed domain. For a single IP address
    #            use a CIDR address block with /32. For example 10.0.0.0/32.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the address block.</p>
    #   @return [String]
    class IpRoute < Struct.new(
      :cidr_ip,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about one or more IP address blocks.</p>
    # @!attribute directory_id
    #   <p>Identifier (ID) of the directory associated with the IP addresses.</p>
    #   @return [String]
    # @!attribute cidr_ip
    #   <p>IP address block in the <a>IpRoute</a>.</p>
    #   @return [String]
    # @!attribute ip_route_status_msg
    #   <p>The status of the IP address block.</p>
    #   @return [String]
    # @!attribute added_date_time
    #   <p>The date and time the address block was added to the directory.</p>
    #   @return [Time]
    # @!attribute ip_route_status_reason
    #   <p>The reason for the IpRouteStatusMsg.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the <a>IpRouteInfo</a>.</p>
    #   @return [String]
    class IpRouteInfo < Struct.new(
      :directory_id,
      :cidr_ip,
      :ip_route_status_msg,
      :added_date_time,
      :ip_route_status_reason,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum allowed number of IP addresses was exceeded. The default limit is 100 IP
    #          address blocks.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class IpRouteLimitExceededException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains general information about the LDAPS settings.</p>
    # @!attribute ldaps_status
    #   <p>The state of the LDAPS settings.</p>
    #   @return [String]
    # @!attribute ldaps_status_reason
    #   <p>Describes a state change for LDAPS.</p>
    #   @return [String]
    # @!attribute last_updated_date_time
    #   <p>The date and time when the LDAPS settings were last updated.</p>
    #   @return [Time]
    class LDAPSSettingInfo < Struct.new(
      :ldaps_status,
      :ldaps_status_reason,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory for which to list assessments. If not specified, all
    #               assessments in your account are returned.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from a previous request to <a>ListADAssessments</a>.
    #               Pass null if this is the first request.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of assessment summaries to return.</p>
    #   @return [Integer]
    class ListADAssessmentsRequest < Struct.new(
      :directory_id,
      :next_token,
      :limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessments
    #   <p>A list of assessment summaries containing basic information about each directory
    #               assessment.</p>
    #   @return [Array<Types::AssessmentSummary>]
    # @!attribute next_token
    #   <p>If not null, more results are available. Pass this value for the
    #                   <code>NextToken</code> parameter in a subsequent request to retrieve the next set of
    #               items.</p>
    #   @return [String]
    class ListADAssessmentsResult < Struct.new(
      :assessments,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token for requesting another page of certificates if the <code>NextToken</code> response
    #         element indicates that more certificates are available. Use the value of the returned
    #           <code>NextToken</code> element in your request until the token comes back as
    #           <code>null</code>. Pass <code>null</code> if this is the first call.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The number of items that should show up on one page</p>
    #   @return [Integer]
    class ListCertificatesRequest < Struct.new(
      :directory_id,
      :next_token,
      :limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Indicates whether another page of certificates is available when the number of available
    #         certificates exceeds the page limit.</p>
    #   @return [String]
    # @!attribute certificates_info
    #   <p>A list of certificates with basic details including certificate ID, certificate common
    #         name, certificate state.</p>
    #   @return [Array<Types::CertificateInfo>]
    class ListCertificatesResult < Struct.new(
      :next_token,
      :certificates_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>Identifier (ID) of the directory for which you want to retrieve the IP
    #            addresses.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <i>ListIpRoutes.NextToken</i> value from a previous call to <a>ListIpRoutes</a>. Pass null if this is the first call.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Maximum number of items to return. If this value is zero, the maximum number of items
    #            is specified by the limitations of the operation.</p>
    #   @return [Integer]
    class ListIpRoutesRequest < Struct.new(
      :directory_id,
      :next_token,
      :limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ip_routes_info
    #   <p>A list of <a>IpRoute</a>s.</p>
    #   @return [Array<Types::IpRouteInfo>]
    # @!attribute next_token
    #   <p>If not null, more results are available. Pass this value for the
    #               <i>NextToken</i> parameter in a subsequent call to <a>ListIpRoutes</a> to retrieve the next set of items.</p>
    #   @return [String]
    class ListIpRoutesResult < Struct.new(
      :ip_routes_info,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>If a <i>DirectoryID</i> is provided, lists only the log subscription
    #         associated with that directory. If no <i>DirectoryId</i> is provided, lists all
    #         log subscriptions associated with your Amazon Web Services account. If there are no log subscriptions for
    #         the Amazon Web Services account or the directory, an empty list will be returned.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of items to return.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of items returned.</p>
    #   @return [Integer]
    class ListLogSubscriptionsRequest < Struct.new(
      :directory_id,
      :next_token,
      :limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute log_subscriptions
    #   <p>A list of active <a>LogSubscription</a> objects for calling the
    #         Amazon Web Services account.</p>
    #   @return [Array<Types::LogSubscription>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return.</p>
    #   @return [String]
    class ListLogSubscriptionsResult < Struct.new(
      :log_subscriptions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory from which to retrieve the schema extension
    #         information.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>ListSchemaExtensions.NextToken</code> value from a previous call to
    #           <code>ListSchemaExtensions</code>. Pass null if this is the first call.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    class ListSchemaExtensionsRequest < Struct.new(
      :directory_id,
      :next_token,
      :limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_extensions_info
    #   <p>Information about the schema extensions applied to the directory.</p>
    #   @return [Array<Types::SchemaExtensionInfo>]
    # @!attribute next_token
    #   <p>If not null, more results are available. Pass this value for the <code>NextToken</code>
    #         parameter in a subsequent call to <code>ListSchemaExtensions</code> to retrieve the next set
    #         of items.</p>
    #   @return [String]
    class ListSchemaExtensionsResult < Struct.new(
      :schema_extensions_info,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>Identifier (ID) of the directory for which you want to retrieve tags.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Reserved for future use.</p>
    #   @return [Integer]
    class ListTagsForResourceRequest < Struct.new(
      :resource_id,
      :next_token,
      :limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>List of tags returned by the ListTagsForResource operation.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #   @return [String]
    class ListTagsForResourceResult < Struct.new(
      :tags,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a log subscription, which tracks real-time data from a chosen log group to a
    #       specified destination.</p>
    # @!attribute directory_id
    #   <p>Identifier (ID) of the directory that you want to associate with the log
    #         subscription.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #   @return [String]
    # @!attribute subscription_created_date_time
    #   <p>The date and time that the log subscription was created.</p>
    #   @return [Time]
    class LogSubscription < Struct.new(
      :directory_id,
      :log_group_name,
      :subscription_created_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Client authentication setup could not be completed because at least one valid certificate
    #       must be registered in the system.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class NoAvailableCertificateException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> OS version that the directory needs to be updated to. </p>
    # @!attribute os_version
    #   <p> OS version that the directory needs to be updated to. </p>
    #   @return [String]
    class OSUpdateSettings < Struct.new(
      :os_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Exception encountered while trying to access your Amazon Web Services organization.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class OrganizationsException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the directory owner account details that have been shared to the directory
    #       consumer account.</p>
    # @!attribute directory_id
    #   <p>Identifier of the Managed Microsoft AD directory in the directory owner account.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Identifier of the directory owner account.</p>
    #   @return [String]
    # @!attribute dns_ip_addrs
    #   <p>IP address of the directory’s domain controllers.</p>
    #   @return [Array<String>]
    # @!attribute vpc_settings
    #   <p>Information about the VPC settings for the directory.</p>
    #   @return [Types::DirectoryVpcSettingsDescription]
    # @!attribute radius_settings
    #   <p>A <a>RadiusSettings</a> object that contains information about the RADIUS
    #         server.</p>
    #   @return [Types::RadiusSettings]
    # @!attribute radius_status
    #   <p>Information about the status of the RADIUS server.</p>
    #   @return [String]
    class OwnerDirectoryDescription < Struct.new(
      :directory_id,
      :account_id,
      :dns_ip_addrs,
      :vpc_settings,
      :radius_settings,
      :radius_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a Remote Authentication Dial In User Service (RADIUS)
    #          server.</p>
    # @!attribute radius_servers
    #   <p>An array of strings that contains the fully qualified domain name (FQDN) or IP
    #            addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server
    #            load balancer.</p>
    #   @return [Array<String>]
    # @!attribute radius_port
    #   <p>The port that your RADIUS server is using for communications. Your self-managed
    #            network must allow inbound traffic over this port from the Directory Service servers.</p>
    #   @return [Integer]
    # @!attribute radius_timeout
    #   <p>The amount of time, in seconds, to wait for the RADIUS server to respond.</p>
    #   @return [Integer]
    # @!attribute radius_retries
    #   <p>The maximum number of times that communication with the RADIUS server is retried after the initial attempt.</p>
    #   @return [Integer]
    # @!attribute shared_secret
    #   <p>Required for enabling RADIUS on the directory.</p>
    #   @return [String]
    # @!attribute authentication_protocol
    #   <p>The protocol specified for your RADIUS endpoints.</p>
    #   @return [String]
    # @!attribute display_label
    #   <p>Not currently used.</p>
    #   @return [String]
    # @!attribute use_same_username
    #   <p>Not currently used.</p>
    #   @return [Boolean]
    class RadiusSettings < Struct.new(
      :radius_servers,
      :radius_port,
      :radius_timeout,
      :radius_retries,
      :shared_secret,
      :authentication_protocol,
      :display_label,
      :use_same_username,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:radius_retries] = 0 unless options.key?(:radius_retries)
        options[:use_same_username] = false unless options.key?(:use_same_username)
        super
      end
    end

    # <p>The replicated Region information for a directory.</p>
    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The name of the Region. For example, <code>us-east-1</code>.</p>
    #   @return [String]
    # @!attribute region_type
    #   <p>Specifies whether the Region is the primary Region or an additional Region.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the replication process for the specified Region.</p>
    #   @return [String]
    # @!attribute vpc_settings
    #   <p>Contains VPC information for the <a>CreateDirectory</a>, <a>CreateMicrosoftAD</a>, or <a>CreateHybridAD</a> operation.</p>
    #   @return [Types::DirectoryVpcSettings]
    # @!attribute desired_number_of_domain_controllers
    #   <p>The desired number of domain controllers in the specified Region for the specified
    #         directory.</p>
    #   @return [Integer]
    # @!attribute launch_time
    #   <p>Specifies when the Region replication began.</p>
    #   @return [Time]
    # @!attribute status_last_updated_date_time
    #   <p>The date and time that the Region status was last updated.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time that the Region description was last updated.</p>
    #   @return [Time]
    class RegionDescription < Struct.new(
      :directory_id,
      :region_name,
      :region_type,
      :status,
      :vpc_settings,
      :desired_number_of_domain_controllers,
      :launch_time,
      :status_last_updated_date_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the limit for maximum number of simultaneous Region replications per
    #       directory.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class RegionLimitExceededException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the Regions that are configured for multi-Region
    #       replication.</p>
    # @!attribute primary_region
    #   <p>The Region where the Managed Microsoft AD directory was originally created.</p>
    #   @return [String]
    # @!attribute additional_regions
    #   <p>Lists the Regions where the directory has been replicated, excluding the primary
    #         Region.</p>
    #   @return [Array<String>]
    class RegionsInfo < Struct.new(
      :primary_region,
      :additional_regions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute certificate_data
    #   <p>The certificate PEM string that needs to be registered.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The function that the registered certificate performs. Valid values include
    #           <code>ClientLDAPS</code> or <code>ClientCertAuth</code>. The default value is
    #           <code>ClientLDAPS</code>.</p>
    #   @return [String]
    # @!attribute client_cert_auth_settings
    #   <p>A <code>ClientCertAuthSettings</code> object that contains client certificate
    #         authentication settings.</p>
    #   @return [Types::ClientCertAuthSettings]
    class RegisterCertificateRequest < Struct.new(
      :directory_id,
      :certificate_data,
      :type,
      :client_cert_auth_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_id
    #   <p>The identifier of the certificate.</p>
    #   @return [String]
    class RegisterCertificateResult < Struct.new(
      :certificate_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Registers a new event topic.</p>
    # @!attribute directory_id
    #   <p>The Directory ID that will publish status messages to the Amazon SNS topic.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>The Amazon SNS topic name to which the directory will publish status messages. This Amazon SNS
    #         topic must be in the same region as the specified Directory ID.</p>
    #   @return [String]
    class RegisterEventTopicRequest < Struct.new(
      :directory_id,
      :topic_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a RegisterEventTopic request.</p>
    class RegisterEventTopicResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute shared_directory_id
    #   <p>Identifier of the shared directory in the directory consumer account. This identifier is
    #         different for each directory owner account.</p>
    #   @return [String]
    class RejectSharedDirectoryRequest < Struct.new(
      :shared_directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute shared_directory_id
    #   <p>Identifier of the shared directory in the directory consumer account.</p>
    #   @return [String]
    class RejectSharedDirectoryResult < Struct.new(
      :shared_directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>Identifier (ID) of the directory from which you want to remove the IP
    #            addresses.</p>
    #   @return [String]
    # @!attribute cidr_ips
    #   <p>IP address blocks that you want to remove.</p>
    #   @return [Array<String>]
    class RemoveIpRoutesRequest < Struct.new(
      :directory_id,
      :cidr_ips,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RemoveIpRoutesResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory for which you want to remove Region replication.</p>
    #   @return [String]
    class RemoveRegionRequest < Struct.new(
      :directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RemoveRegionResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>Identifier (ID) of the directory from which to remove the tag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag key (name) of the tag to be removed.</p>
    #   @return [Array<String>]
    class RemoveTagsFromResourceRequest < Struct.new(
      :resource_id,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RemoveTagsFromResourceResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>Identifier of the Managed Microsoft AD or Simple AD directory in which the user resides.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The user name of the user whose password will be reset.</p>
    #   @return [String]
    # @!attribute new_password
    #   <p>The new password that will be reset.</p>
    #   @return [String]
    class ResetUserPasswordRequest < Struct.new(
      :directory_id,
      :user_name,
      :new_password,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class ResetUserPasswordResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the inputs for the <a>RestoreFromSnapshot</a> operation.</p>
    # @!attribute snapshot_id
    #   <p>The identifier of the snapshot to restore from.</p>
    #   @return [String]
    class RestoreFromSnapshotRequest < Struct.new(
      :snapshot_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>RestoreFromSnapshot</a> operation.</p>
    class RestoreFromSnapshotResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a schema extension.</p>
    # @!attribute directory_id
    #   <p>The identifier of the directory to which the schema extension is applied.</p>
    #   @return [String]
    # @!attribute schema_extension_id
    #   <p>The identifier of the schema extension.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the schema extension.</p>
    #   @return [String]
    # @!attribute schema_extension_status
    #   <p>The current status of the schema extension.</p>
    #   @return [String]
    # @!attribute schema_extension_status_reason
    #   <p>The reason for the <code>SchemaExtensionStatus</code>.</p>
    #   @return [String]
    # @!attribute start_date_time
    #   <p>The date and time that the schema extension started being applied to the
    #         directory.</p>
    #   @return [Time]
    # @!attribute end_date_time
    #   <p>The date and time that the schema extension was completed.</p>
    #   @return [Time]
    class SchemaExtensionInfo < Struct.new(
      :directory_id,
      :schema_extension_id,
      :description,
      :schema_extension_status,
      :schema_extension_status_reason,
      :start_date_time,
      :end_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An exception has occurred in Directory Service.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class ServiceException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the configurable settings for a directory.</p>
    # @!attribute name
    #   <p>The name of the directory setting. For example:</p>
    #            <p>
    #               <code>TLS_1_0</code>
    #            </p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the directory setting for which to retrieve information. For example, for
    #           <code>TLS_1_0</code>, the valid values are: <code>Enable</code> and
    #         <code>Disable</code>.</p>
    #   @return [String]
    class Setting < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the specified configurable setting for a directory.</p>
    # @!attribute type
    #   <p>The type, or category, of a directory setting. Similar settings have the same type. For
    #         example, <code>Protocol</code>, <code>Cipher</code>, or <code>Certificate-Based
    #           Authentication</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the directory setting. For example:</p>
    #            <p>
    #               <code>TLS_1_0</code>
    #            </p>
    #   @return [String]
    # @!attribute allowed_values
    #   <p>The valid range of values for the directory setting. These values depend on the
    #           <code>DataType</code> of your directory.</p>
    #   @return [String]
    # @!attribute applied_value
    #   <p>The value of the directory setting that is applied to the directory.</p>
    #   @return [String]
    # @!attribute requested_value
    #   <p>The value that was last requested for the directory setting.</p>
    #   @return [String]
    # @!attribute request_status
    #   <p>The overall status of the request to update the directory setting request. If the
    #         directory setting is deployed in more than one region, and the request fails in any region,
    #         the overall status is <code>Failed</code>.</p>
    #   @return [String]
    # @!attribute request_detailed_status
    #   <p>Details about the status of the request to update the directory setting. If the directory
    #         setting is deployed in more than one region, status is returned for the request in each region
    #         where the setting is deployed.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_status_message
    #   <p>The last status message for the directory status request.</p>
    #   @return [String]
    # @!attribute last_updated_date_time
    #   <p>The date and time when the directory setting was last updated.</p>
    #   @return [Time]
    # @!attribute last_requested_date_time
    #   <p>The date and time when the request to update a directory setting was last
    #         submitted.</p>
    #   @return [Time]
    # @!attribute data_type
    #   <p>The data type of a directory setting. This is used to define the
    #           <code>AllowedValues</code> of a setting. For example a data type can be
    #         <code>Boolean</code>, <code>DurationInSeconds</code>, or <code>Enum</code>.</p>
    #   @return [String]
    class SettingEntry < Struct.new(
      :type,
      :name,
      :allowed_values,
      :applied_value,
      :requested_value,
      :request_status,
      :request_detailed_status,
      :request_status_message,
      :last_updated_date_time,
      :last_requested_date_time,
      :data_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>Identifier of the Managed Microsoft AD directory that you want to share with other
    #         Amazon Web Services accounts.</p>
    #   @return [String]
    # @!attribute share_notes
    #   <p>A directory share request that is sent by the directory owner to the directory consumer.
    #         The request includes a typed message to help the directory consumer administrator determine
    #         whether to approve or reject the share invitation.</p>
    #   @return [String]
    # @!attribute share_target
    #   <p>Identifier for the directory consumer account with whom the directory is to be
    #         shared.</p>
    #   @return [Types::ShareTarget]
    # @!attribute share_method
    #   <p>The method used when sharing a directory to determine whether the directory should be
    #         shared within your Amazon Web Services organization (<code>ORGANIZATIONS</code>) or with any Amazon Web Services account
    #         by sending a directory sharing request (<code>HANDSHAKE</code>).</p>
    #   @return [String]
    class ShareDirectoryRequest < Struct.new(
      :directory_id,
      :share_notes,
      :share_target,
      :share_method,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute shared_directory_id
    #   <p>Identifier of the directory that is stored in the directory consumer account that is
    #         shared from the specified directory (<code>DirectoryId</code>).</p>
    #   @return [String]
    class ShareDirectoryResult < Struct.new(
      :shared_directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of Amazon Web Services accounts that you can share with this directory has been
    #             reached.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class ShareLimitExceededException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Identifier that contains details about the directory consumer account.</p>
    # @!attribute id
    #   <p>Identifier of the directory consumer account.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of identifier to be used in the <code>Id</code> field.</p>
    #   @return [String]
    class ShareTarget < Struct.new(
      :id,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the shared directory in the directory owner account for which the share
    #       request in the directory consumer account has been accepted.</p>
    # @!attribute owner_account_id
    #   <p>Identifier of the directory owner account, which contains the directory that has been
    #         shared to the consumer account.</p>
    #   @return [String]
    # @!attribute owner_directory_id
    #   <p>Identifier of the directory in the directory owner account. </p>
    #   @return [String]
    # @!attribute share_method
    #   <p>The method used when sharing a directory to determine whether the directory should be
    #         shared within your Amazon Web Services organization (<code>ORGANIZATIONS</code>) or with any Amazon Web Services account
    #         by sending a shared directory request (<code>HANDSHAKE</code>).</p>
    #   @return [String]
    # @!attribute shared_account_id
    #   <p>Identifier of the directory consumer account that has access to the shared directory
    #           (<code>OwnerDirectoryId</code>) in the directory owner account.</p>
    #   @return [String]
    # @!attribute shared_directory_id
    #   <p>Identifier of the shared directory in the directory consumer account. This identifier is
    #         different for each directory owner account.</p>
    #   @return [String]
    # @!attribute share_status
    #   <p>Current directory status of the shared Managed Microsoft AD directory.</p>
    #   @return [String]
    # @!attribute share_notes
    #   <p>A directory share request that is sent by the directory owner to the directory consumer.
    #         The request includes a typed message to help the directory consumer administrator determine
    #         whether to approve or reject the share invitation.</p>
    #   @return [String]
    # @!attribute created_date_time
    #   <p>The date and time that the shared directory was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time that the shared directory was last updated.</p>
    #   @return [Time]
    class SharedDirectory < Struct.new(
      :owner_account_id,
      :owner_directory_id,
      :share_method,
      :shared_account_id,
      :shared_directory_id,
      :share_status,
      :share_notes,
      :created_date_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a directory snapshot.</p>
    # @!attribute directory_id
    #   <p>The directory identifier.</p>
    #   @return [String]
    # @!attribute snapshot_id
    #   <p>The snapshot identifier.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The snapshot type.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The descriptive name of the snapshot.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The snapshot status.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time that the snapshot was taken.</p>
    #   @return [Time]
    class Snapshot < Struct.new(
      :directory_id,
      :snapshot_id,
      :type,
      :name,
      :status,
      :start_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of manual snapshots for the directory has been reached. You can
    #             use the <a>GetSnapshotLimits</a> operation to determine the snapshot limits
    #             for a directory.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class SnapshotLimitExceededException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains manual snapshot limit information for a directory.</p>
    # @!attribute manual_snapshots_limit
    #   <p>The maximum number of manual snapshots allowed.</p>
    #   @return [Integer]
    # @!attribute manual_snapshots_current_count
    #   <p>The current number of manual snapshots of the directory.</p>
    #   @return [Integer]
    # @!attribute manual_snapshots_limit_reached
    #   <p>Indicates if the manual snapshot limit has been reached.</p>
    #   @return [Boolean]
    class SnapshotLimits < Struct.new(
      :manual_snapshots_limit,
      :manual_snapshots_current_count,
      :manual_snapshots_limit_reached,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:manual_snapshots_limit_reached] = false unless options.key?(:manual_snapshots_limit_reached)
        super
      end
    end

    # @!attribute assessment_configuration
    #   <p>Configuration parameters for the directory assessment, including DNS server
    #               information, domain name, Amazon VPC subnet, and Amazon Web Services System Manager managed node
    #               details.</p>
    #   @return [Types::AssessmentConfiguration]
    # @!attribute directory_id
    #   <p>The identifier of the directory for which to perform the assessment. This should be an
    #               existing directory. If the assessment is not for an existing directory, this parameter
    #               should be omitted.</p>
    #   @return [String]
    class StartADAssessmentRequest < Struct.new(
      :assessment_configuration,
      :directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p>The unique identifier of the newly started directory assessment. Use this identifier
    #               to monitor assessment progress and retrieve results.</p>
    #   @return [String]
    class StartADAssessmentResult < Struct.new(
      :assessment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory for which the schema extension will be applied
    #         to.</p>
    #   @return [String]
    # @!attribute create_snapshot_before_schema_extension
    #   <p>If true, creates a snapshot of the directory before applying the schema
    #         extension.</p>
    #   @return [Boolean]
    # @!attribute ldif_content
    #   <p>The LDIF file represented as a string. To construct the LdifContent string, precede
    #         each line as it would be formatted in an ldif file with \n. See the example request below for
    #         more details. The file size can be no larger than 1MB.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the schema extension.</p>
    #   @return [String]
    class StartSchemaExtensionRequest < Struct.new(
      :directory_id,
      :create_snapshot_before_schema_extension,
      :ldif_content,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_extension_id
    #   <p>The identifier of the schema extension that will be applied.</p>
    #   @return [String]
    class StartSchemaExtensionResult < Struct.new(
      :schema_extension_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata assigned to a directory consisting of a key-value pair.</p>
    # @!attribute key
    #   <p>Required name of the tag. The string value can be Unicode characters and cannot be
    #         prefixed with "aws:". The string can contain only the set of Unicode letters, digits,
    #         white-space, '_', '.', '/', '=', '+', '-', ':', '@'(Java regex:
    #         "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
    #   @return [String]
    # @!attribute value
    #   <p>The optional value of the tag. The string value can be Unicode characters. The string
    #         can contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-', ':', '@'
    #         (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum allowed number of tags was exceeded.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class TagLimitExceededException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a trust relationship between an Managed Microsoft AD directory and an external
    #       domain.</p>
    # @!attribute directory_id
    #   <p>The Directory ID of the Amazon Web Services directory involved in the trust relationship.</p>
    #   @return [String]
    # @!attribute trust_id
    #   <p>The unique ID of the trust relationship.</p>
    #   @return [String]
    # @!attribute remote_domain_name
    #   <p>The Fully Qualified Domain Name (FQDN) of the external domain involved in the trust
    #         relationship.</p>
    #   @return [String]
    # @!attribute trust_type
    #   <p>The trust relationship type. <code>Forest</code> is the default.</p>
    #   @return [String]
    # @!attribute trust_direction
    #   <p>The trust relationship direction.</p>
    #   @return [String]
    # @!attribute trust_state
    #   <p>The trust relationship state.</p>
    #   @return [String]
    # @!attribute created_date_time
    #   <p>The date and time that the trust relationship was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time that the trust relationship was last updated.</p>
    #   @return [Time]
    # @!attribute state_last_updated_date_time
    #   <p>The date and time that the TrustState was last updated.</p>
    #   @return [Time]
    # @!attribute trust_state_reason
    #   <p>The reason for the TrustState.</p>
    #   @return [String]
    # @!attribute selective_auth
    #   <p>Current state of selective authentication for the trust.</p>
    #   @return [String]
    class Trust < Struct.new(
      :directory_id,
      :trust_id,
      :remote_domain_name,
      :trust_type,
      :trust_direction,
      :trust_state,
      :created_date_time,
      :last_updated_date_time,
      :state_last_updated_date_time,
      :trust_state_reason,
      :selective_auth,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the Managed Microsoft AD directory that you want to stop sharing.</p>
    #   @return [String]
    # @!attribute unshare_target
    #   <p>Identifier for the directory consumer account with whom the directory has to be
    #         unshared.</p>
    #   @return [Types::UnshareTarget]
    class UnshareDirectoryRequest < Struct.new(
      :directory_id,
      :unshare_target,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute shared_directory_id
    #   <p>Identifier of the directory stored in the directory consumer account that is to be
    #         unshared from the specified directory (<code>DirectoryId</code>).</p>
    #   @return [String]
    class UnshareDirectoryResult < Struct.new(
      :shared_directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Identifier that contains details about the directory consumer account with whom the
    #       directory is being unshared.</p>
    # @!attribute id
    #   <p>Identifier of the directory consumer account.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of identifier to be used in the <i>Id</i> field.</p>
    #   @return [String]
    class UnshareTarget < Struct.new(
      :id,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The operation is not supported.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class UnsupportedOperationException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified directory setting is not supported.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class UnsupportedSettingsException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updates a conditional forwarder.</p>
    # @!attribute directory_id
    #   <p>The directory ID of the Amazon Web Services directory for which to update the conditional
    #         forwarder.</p>
    #   @return [String]
    # @!attribute remote_domain_name
    #   <p>The fully qualified domain name (FQDN) of the remote domain with which you will set up
    #         a trust relationship.</p>
    #   @return [String]
    # @!attribute dns_ip_addrs
    #   <p>The updated IP addresses of the remote DNS server associated with the conditional
    #         forwarder.</p>
    #   @return [Array<String>]
    class UpdateConditionalForwarderRequest < Struct.new(
      :directory_id,
      :remote_domain_name,
      :dns_ip_addrs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result of an UpdateConditionalForwarder request.</p>
    class UpdateConditionalForwarderResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier of the directory on which you want to perform the update. </p>
    #   @return [String]
    # @!attribute update_type
    #   <p> The type of update that needs to be performed on the directory. For example, OS. </p>
    #   @return [String]
    # @!attribute os_update_settings
    #   <p> The settings for the OS update that needs to be performed on the directory. </p>
    #   @return [Types::OSUpdateSettings]
    # @!attribute create_snapshot_before_update
    #   <p> The boolean that specifies if a snapshot for the directory needs to be taken before
    #         updating the directory. </p>
    #   @return [Boolean]
    class UpdateDirectorySetupRequest < Struct.new(
      :directory_id,
      :update_type,
      :os_update_settings,
      :create_snapshot_before_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateDirectorySetupResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the hybrid directory to update.</p>
    #   @return [String]
    # @!attribute hybrid_administrator_account_update
    #   <p>We create a hybrid directory administrator account when we create a hybrid directory.
    #               Use <code>HybridAdministratorAccountUpdate</code> to recover the hybrid directory
    #               administrator account if you have deleted it.</p>
    #            <p>To recover your hybrid directory administrator account, we need temporary access to a
    #               user in your self-managed AD with administrator permissions in the form of a secret from
    #               Amazon Web Services Secrets Manager. We use these credentials once during recovery and don't store them.</p>
    #            <p>If your hybrid directory administrator account exists, then you don’t need to use
    #                   <code>HybridAdministratorAccountUpdate</code>, even if you have updated your
    #               self-managed AD administrator user.</p>
    #   @return [Types::HybridAdministratorAccountUpdate]
    # @!attribute self_managed_instances_settings
    #   <p>Updates to the self-managed AD configuration, including DNS server IP addresses and
    #               Amazon Web Services System Manager managed node identifiers.</p>
    #   @return [Types::HybridCustomerInstancesSettings]
    class UpdateHybridADRequest < Struct.new(
      :directory_id,
      :hybrid_administrator_account_update,
      :self_managed_instances_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the updated hybrid directory.</p>
    #   @return [String]
    # @!attribute assessment_id
    #   <p>The identifier of the assessment performed to validate the update configuration. This
    #               assessment ensures the updated settings are compatible with your environment.</p>
    #   @return [String]
    class UpdateHybridADResult < Struct.new(
      :directory_id,
      :assessment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> An entry of update information related to a requested update type. </p>
    # @!attribute region
    #   <p> The name of the Region. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the update performed on the directory. </p>
    #   @return [String]
    # @!attribute status_reason
    #   <p> The reason for the current status of the update type activity. </p>
    #   @return [String]
    # @!attribute initiated_by
    #   <p> This specifies if the update was initiated by the customer or by the service team.
    #       </p>
    #   @return [String]
    # @!attribute new_value
    #   <p> The new value of the target setting. </p>
    #   @return [Types::UpdateValue]
    # @!attribute previous_value
    #   <p> The old value of the target setting. </p>
    #   @return [Types::UpdateValue]
    # @!attribute start_time
    #   <p> The start time of the <code>UpdateDirectorySetup</code> for the particular type. </p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p> The last updated date and time of a particular directory setting. </p>
    #   @return [Time]
    class UpdateInfoEntry < Struct.new(
      :region,
      :status,
      :status_reason,
      :initiated_by,
      :new_value,
      :previous_value,
      :start_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>Identifier of the directory to which the domain controllers will be added or
    #         removed.</p>
    #   @return [String]
    # @!attribute desired_number
    #   <p>The number of domain controllers desired in the directory.</p>
    #   @return [Integer]
    class UpdateNumberOfDomainControllersRequest < Struct.new(
      :directory_id,
      :desired_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateNumberOfDomainControllersResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inputs for the <a>UpdateRadius</a> operation.</p>
    # @!attribute directory_id
    #   <p>The identifier of the directory for which to update the RADIUS server
    #            information.</p>
    #   @return [String]
    # @!attribute radius_settings
    #   <p>A <a>RadiusSettings</a> object that contains information about the RADIUS
    #            server.</p>
    #   @return [Types::RadiusSettings]
    class UpdateRadiusRequest < Struct.new(
      :directory_id,
      :radius_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the <a>UpdateRadius</a> operation.</p>
    class UpdateRadiusResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory for which to update settings.</p>
    #   @return [String]
    # @!attribute settings
    #   <p>The list of <a>Setting</a> objects.</p>
    #   @return [Array<Types::Setting>]
    class UpdateSettingsRequest < Struct.new(
      :directory_id,
      :settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    class UpdateSettingsResult < Struct.new(
      :directory_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_id
    #   <p>Identifier of the trust relationship.</p>
    #   @return [String]
    # @!attribute selective_auth
    #   <p>Updates selective authentication for the trust.</p>
    #   @return [String]
    class UpdateTrustRequest < Struct.new(
      :trust_id,
      :selective_auth,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    # @!attribute trust_id
    #   <p>Identifier of the trust relationship.</p>
    #   @return [String]
    class UpdateTrustResult < Struct.new(
      :request_id,
      :trust_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The value for a given type of <code>UpdateSettings</code>. </p>
    # @!attribute os_update_settings
    #   <p> The OS update related settings. </p>
    #   @return [Types::OSUpdateSettings]
    class UpdateValue < Struct.new(
      :os_update_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The user provided a username that does not exist in your directory.</p>
    # @!attribute message
    #   <p>The descriptive message for the exception.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Amazon Web Services request identifier.</p>
    #   @return [String]
    class UserDoesNotExistException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Initiates the verification of an existing trust relationship between an Managed Microsoft AD
    #       directory and an external domain.</p>
    # @!attribute trust_id
    #   <p>The unique Trust ID of the trust relationship to verify.</p>
    #   @return [String]
    class VerifyTrustRequest < Struct.new(
      :trust_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Result of a VerifyTrust request.</p>
    # @!attribute trust_id
    #   <p>The unique Trust ID of the trust relationship that was verified.</p>
    #   @return [String]
    class VerifyTrustResult < Struct.new(
      :trust_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
