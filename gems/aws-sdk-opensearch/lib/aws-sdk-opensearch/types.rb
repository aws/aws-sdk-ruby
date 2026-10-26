# frozen_string_literal: true

# This is generated code!

module Aws::OpenSearch
  # This module contains the types returned by client operations.
  module Types

    # <p>Configuration settings for AI-powered capabilities of an OpenSearch UI application.</p>
    class AIConfig < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for parameters required to enable all machine learning features.</p>
    # @!attribute natural_language_query_generation_options
    #   <p>Container for parameters required for natural language query generation on the
    #               specified domain.</p>
    #   @return [Types::NaturalLanguageQueryGenerationOptionsInput]
    # @!attribute s3_vectors_engine
    #   <p>Container for parameters required to enable S3 vectors engine features on the
    #               specified domain.</p>
    #   @return [Types::S3VectorsEngine]
    # @!attribute serverless_vector_acceleration
    #   <p>Specifies whether to enable serverless vector acceleration for the domain. When enabled,
    #            provides <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/gpu-acceleration-vector-index.html">GPU-accelerated</a> vector search capabilities for improved performance on vector
    #            workloads.</p>
    #   @return [Types::ServerlessVectorAcceleration]
    class AIMLOptionsInput < Struct.new(
      nil,
      :natural_language_query_generation_options,
      :s3_vectors_engine,
      :serverless_vector_acceleration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for parameters representing the state of machine learning features on the
    #             specified domain.</p>
    # @!attribute natural_language_query_generation_options
    #   <p>Container for parameters required for natural language query generation on the
    #               specified domain.</p>
    #   @return [Types::NaturalLanguageQueryGenerationOptionsOutput]
    # @!attribute s3_vectors_engine
    #   <p>Container for parameters representing the state of S3 vectors engine features on the
    #               specified domain.</p>
    #   @return [Types::S3VectorsEngine]
    # @!attribute serverless_vector_acceleration
    #   <p>The current serverless vector acceleration configuration for the domain.</p>
    #   @return [Types::ServerlessVectorAcceleration]
    class AIMLOptionsOutput < Struct.new(
      nil,
      :natural_language_query_generation_options,
      :s3_vectors_engine,
      :serverless_vector_acceleration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of machine learning options on the specified domain.</p>
    # @!attribute options
    #   <p>Machine learning options on the specified domain.</p>
    #   @return [Types::AIMLOptionsOutput]
    # @!attribute status
    #   <p>Provides the current status of an entity.</p>
    #   @return [Types::OptionStatus]
    class AIMLOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Amazon OpenSearch Service domain.</p>
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the domain owner.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>Name of the domain.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region in which the domain is located.</p>
    #   @return [String]
    class AWSDomainInformation < Struct.new(
      nil,
      :owner_id,
      :domain_name,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>AcceptInboundConnection</code>
    #             operation.</p>
    # @!attribute connection_id
    #   <p>The ID of the inbound connection to accept.</p>
    #   @return [String]
    class AcceptInboundConnectionRequest < Struct.new(
      nil,
      :connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the accepted inbound connection.</p>
    # @!attribute connection
    #   <p>Information about the accepted inbound connection.</p>
    #   @return [Types::InboundConnection]
    class AcceptInboundConnectionResponse < Struct.new(
      nil,
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred because you don't have permissions to access the resource.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configured access rules for the domain's search endpoint, and the current status
    #             of those rules.</p>
    # @!attribute options
    #   <p>The access policy configured for the domain. Access policies can be resource-based,
    #               IP-based, or IAM-based. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-access-policies">Configuring access policies</a>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the access policy for the domain.</p>
    #   @return [Types::OptionStatus]
    class AccessPoliciesStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>AddDataSource</code> operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain to add the data source to.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the data source.</p>
    #   @return [String]
    # @!attribute data_source_type
    #   <p>The type of data source.</p>
    #   @return [Types::DataSourceType]
    # @!attribute description
    #   <p>A description of the data source.</p>
    #   @return [String]
    class AddDataSourceRequest < Struct.new(
      nil,
      :domain_name,
      :name,
      :data_source_type,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of an <code>AddDataSource</code> operation.</p>
    # @!attribute message
    #   <p>A message associated with creation of the data source.</p>
    #   @return [String]
    class AddDataSourceResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_source_name
    #   <p> A unique, user-defined label to identify the data source within your OpenSearch
    #               Service environment. </p>
    #   @return [String]
    # @!attribute data_source_type
    #   <p> The supported Amazon Web Services service that you want to use as the source for
    #               direct queries in OpenSearch Service. </p>
    #   @return [Types::DirectQueryDataSourceType]
    # @!attribute description
    #   <p> An optional text field for providing additional context and details about the data
    #               source. </p>
    #   @return [String]
    # @!attribute open_search_arns
    #   <p> An optional list of Amazon Resource Names (ARNs) for the OpenSearch collections that are
    #               associated with the direct query data source. This field is required for CloudWatchLogs
    #               and SecurityLake datasource types. </p>
    #   @return [Array<String>]
    # @!attribute data_source_access_policy
    #   <p> An optional IAM access policy document that defines the permissions for accessing the data source.
    #               The policy document must be in valid JSON format and follow IAM policy syntax.</p>
    #   @return [String]
    # @!attribute tag_list
    #   <p>A list of tags attached to a domain.</p>
    #   @return [Array<Types::Tag>]
    class AddDirectQueryDataSourceRequest < Struct.new(
      nil,
      :data_source_name,
      :data_source_type,
      :description,
      :open_search_arns,
      :data_source_access_policy,
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_source_arn
    #   <p> The unique, system-generated identifier that represents the data source. </p>
    #   @return [String]
    class AddDirectQueryDataSourceResponse < Struct.new(
      nil,
      :data_source_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>AddTags</code> operation. Specifies the tags
    #             to attach to the domain, data source, or application.</p>
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) for the OpenSearch Service domain, data source, or
    #               application to which you want to attach resource tags.</p>
    #   @return [String]
    # @!attribute tag_list
    #   <p>List of resource tags.</p>
    #   @return [Array<Types::Tag>]
    class AddTagsRequest < Struct.new(
      nil,
      :arn,
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> List of limits that are specific to a given instance type.</p>
    # @!attribute limit_name
    #   <ul>
    #               <li>
    #                  <p>
    #                     <code>MaximumNumberOfDataNodesSupported</code> - This attribute only applies
    #                       to master nodes and specifies the maximum number of data nodes of a given
    #                       instance type a master node can support.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MaximumNumberOfDataNodesWithoutMasterNode</code> - This attribute only
    #                       applies to data nodes and specifies the maximum number of data nodes of a given
    #                       instance type can exist without a master node governing them.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute limit_values
    #   <p> The values of the additional instance type limits.</p>
    #   @return [Array<String>]
    class AdditionalLimit < Struct.new(
      nil,
      :limit_name,
      :limit_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Status of the advanced options for the specified domain. The following options are
    #             available: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>"rest.action.multi.allow_explicit_index": "true" | "false"</code> - Note
    #                     the use of a string rather than a boolean. Specifies whether explicit references
    #                     to indexes are allowed inside the body of HTTP requests. If you want to
    #                     configure access policies for domain sub-resources, such as specific indexes and
    #                     domain APIs, you must disable this property. Default is true.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>"indices.fielddata.cache.size": "80" </code> - Note the use of a string
    #                     rather than a boolean. Specifies the percentage of heap space allocated to field
    #                     data. Default is unbounded.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>"indices.query.bool.max_clause_count": "1024"</code> - Note the use of a
    #                     string rather than a boolean. Specifies the maximum number of clauses allowed in
    #                     a Lucene boolean query. Default is 1,024. Queries with more than the permitted
    #                     number of clauses result in a <code>TooManyClauses</code> error.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>"override_main_response_version": "true" | "false"</code> - Note the use
    #                     of a string rather than a boolean. Specifies whether the domain reports its
    #                     version as 7.10 to allow Elasticsearch OSS clients and plugins to continue
    #                     working with it. Default is false when creating a domain and true when upgrading
    #                     a domain.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options">Advanced cluster parameters</a>.</p>
    # @!attribute options
    #   <p>The status of advanced options for the specified domain.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>The status of advanced options for the specified domain.</p>
    #   @return [Types::OptionStatus]
    class AdvancedOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for fine-grained access control settings.</p>
    # @!attribute enabled
    #   <p>True if fine-grained access control is enabled.</p>
    #   @return [Boolean]
    # @!attribute internal_user_database_enabled
    #   <p>True if the internal user database is enabled.</p>
    #   @return [Boolean]
    # @!attribute saml_options
    #   <p>Container for information about the SAML configuration for OpenSearch
    #               Dashboards.</p>
    #   @return [Types::SAMLOptionsOutput]
    # @!attribute jwt_options
    #   <p>Container for information about the JWT configuration of the Amazon OpenSearch
    #               Service.</p>
    #   @return [Types::JWTOptionsOutput]
    # @!attribute iam_federation_options
    #   <p>Configuration options for IAM identity federation in advanced security
    #               settings.</p>
    #   @return [Types::IAMFederationOptionsOutput]
    # @!attribute anonymous_auth_disable_date
    #   <p>Date and time when the migration period will be disabled. Only necessary when <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing">enabling fine-grained access control on an existing domain</a>.</p>
    #   @return [Time]
    # @!attribute anonymous_auth_enabled
    #   <p>True if a 30-day migration period is enabled, during which administrators can create
    #               role mappings. Only necessary when <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing">enabling fine-grained access control on an existing domain</a>.</p>
    #   @return [Boolean]
    class AdvancedSecurityOptions < Struct.new(
      nil,
      :enabled,
      :internal_user_database_enabled,
      :saml_options,
      :jwt_options,
      :iam_federation_options,
      :anonymous_auth_disable_date,
      :anonymous_auth_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options for enabling and configuring fine-grained access control. For more
    #             information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html">Fine-grained access control
    #                 in Amazon OpenSearch Service</a>.</p>
    # @!attribute enabled
    #   <p>True to enable fine-grained access control.</p>
    #   @return [Boolean]
    # @!attribute internal_user_database_enabled
    #   <p>True to enable the internal user database.</p>
    #   @return [Boolean]
    # @!attribute master_user_options
    #   <p>Container for information about the master user.</p>
    #   @return [Types::MasterUserOptions]
    # @!attribute saml_options
    #   <p>Container for information about the SAML configuration for OpenSearch
    #               Dashboards.</p>
    #   @return [Types::SAMLOptionsInput]
    # @!attribute jwt_options
    #   <p>Container for information about the JWT configuration of the Amazon OpenSearch
    #               Service. </p>
    #   @return [Types::JWTOptionsInput]
    # @!attribute iam_federation_options
    #   <p>Input configuration for IAM identity federation within advanced security
    #               options.</p>
    #   @return [Types::IAMFederationOptionsInput]
    # @!attribute anonymous_auth_enabled
    #   <p>True to enable a 30-day migration period during which administrators can create role
    #               mappings. Only necessary when <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing">enabling fine-grained access control on an existing domain</a>.</p>
    #   @return [Boolean]
    class AdvancedSecurityOptionsInput < Struct.new(
      nil,
      :enabled,
      :internal_user_database_enabled,
      :master_user_options,
      :saml_options,
      :jwt_options,
      :iam_federation_options,
      :anonymous_auth_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of fine-grained access control settings for a domain.</p>
    # @!attribute options
    #   <p>Container for fine-grained access control settings.</p>
    #   @return [Types::AdvancedSecurityOptions]
    # @!attribute status
    #   <p>Status of the fine-grained access control settings for a domain.</p>
    #   @return [Types::OptionStatus]
    class AdvancedSecurityOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for an OpenSearch application. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/application.html">Using the
    #     OpenSearch user interface in Amazon OpenSearch Service</a>.</p>
    # @!attribute key
    #   <p>The configuration item to set, such as the admin role for the OpenSearch
    #               application.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value assigned to the configuration key, such as an IAM user ARN.</p>
    #   @return [String]
    class AppConfig < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Basic details of an OpenSearch application.</p>
    # @!attribute id
    #   <p>The unique identifier of an OpenSearch application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of an OpenSearch application.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint URL of an OpenSearch application.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of an OpenSearch application. Possible values:
    #                   <code>CREATING</code>, <code>UPDATING</code>, <code>DELETING</code>,
    #                   <code>FAILED</code>, <code>ACTIVE</code>, and <code>DELETED</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when an OpenSearch application was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of the last update to an OpenSearch application.</p>
    #   @return [Time]
    class ApplicationSummary < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :endpoint,
      :status,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to the <code>AssociatePackage</code>
    #             operation.</p>
    # @!attribute package_id
    #   <p>Internal ID of the package to associate with a domain. Use
    #                   <code>DescribePackages</code> to find this value. </p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>Name of the domain to associate the package with.</p>
    #   @return [String]
    # @!attribute prerequisite_package_id_list
    #   <p>A list of package IDs that must be associated with the domain before the package
    #               specified in the request can be associated.</p>
    #   @return [Array<String>]
    # @!attribute association_configuration
    #   <p>The configuration for associating a package with an Amazon OpenSearch Service
    #               domain.</p>
    #   @return [Types::PackageAssociationConfiguration]
    class AssociatePackageRequest < Struct.new(
      nil,
      :package_id,
      :domain_name,
      :prerequisite_package_id_list,
      :association_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the response returned by the <code>AssociatePackage</code>
    #             operation.</p>
    # @!attribute domain_package_details
    #   <p>Information about a package that is associated with a domain.</p>
    #   @return [Types::DomainPackageDetails]
    class AssociatePackageResponse < Struct.new(
      nil,
      :domain_package_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_list
    #   <p>A list of packages and their prerequisites to be associated with a domain.</p>
    #   @return [Array<Types::PackageDetailsForAssociation>]
    # @!attribute domain_name
    #   <p>The name of an OpenSearch Service domain. Domain names are unique across the domains
    #               owned by an account within an Amazon Web Services Region.</p>
    #   @return [String]
    class AssociatePackagesRequest < Struct.new(
      nil,
      :package_list,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_package_details_list
    #   <p>List of information about packages that are associated with a domain. </p>
    #   @return [Array<Types::DomainPackageDetails>]
    class AssociatePackagesResponse < Struct.new(
      nil,
      :domain_package_details_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier or name of the OpenSearch application to attach the data source to. This is the same identifier used with <code>UpdateApplication</code>, <code>GetApplication</code>, and <code>DeleteApplication</code>.</p>
    #   @return [String]
    # @!attribute data_source_arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The identifier of an existing workspace to update with the new data source. Mutually exclusive with <code>workspaceConfiguration</code>.</p>
    #   @return [String]
    # @!attribute workspace_configuration
    #   <p>Configuration for creating a new workspace during the attachment. If specified, a workspace is created and linked to the data source after the attachment completes. Mutually exclusive with <code>workspaceId</code>.</p>
    #   @return [Types::WorkspaceConfigurationInput]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request. If you retry a request with the same client token and the same parameters, the retry succeeds without performing any further actions.</p>
    #   @return [String]
    class AttachDataSourceRequest < Struct.new(
      nil,
      :id,
      :data_source_arn,
      :workspace_id,
      :workspace_configuration,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_id
    #   <p>The unique identifier assigned to the data source attachment.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the OpenSearch application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    # @!attribute data_source_arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source attachment. Valid values are <code>PENDING</code> (waiting for resources to become active), <code>ATTACHED</code> (successfully attached), and <code>FAILED</code> (attachment timed out or encountered a non-retryable error).</p>
    #   @return [String]
    class AttachDataSourceResponse < Struct.new(
      nil,
      :attachment_id,
      :id,
      :arn,
      :data_source_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the OpenSearch Service domain to provide access to.</p>
    #   @return [String]
    # @!attribute account
    #   <p>The Amazon Web Services account ID to grant access to.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The Amazon Web Services service SP to grant access to.</p>
    #   @return [String]
    # @!attribute service_options
    #   <p>The options for the service, including the supported Regions for the endpoint
    #               access.</p>
    #   @return [Types::ServiceOptions]
    class AuthorizeVpcEndpointAccessRequest < Struct.new(
      nil,
      :domain_name,
      :account,
      :service,
      :service_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorized_principal
    #   <p>Information about the Amazon Web Services account or service that was provided access
    #               to the domain.</p>
    #   @return [Types::AuthorizedPrincipal]
    class AuthorizeVpcEndpointAccessResponse < Struct.new(
      nil,
      :authorized_principal,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Amazon Web Services account or service that has access to an
    #             Amazon OpenSearch Service domain through the use of an interface VPC endpoint.</p>
    # @!attribute principal_type
    #   <p>The type of principal.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html">IAM
    #                   principal</a> that is allowed access to the domain.</p>
    #   @return [String]
    # @!attribute service_options
    #   <p>The options for the service, including the supported Regions for the endpoint
    #               access.</p>
    #   @return [Types::ServiceOptions]
    class AuthorizedPrincipal < Struct.new(
      nil,
      :principal_type,
      :principal,
      :service_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Auto-Tune action. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html">Auto-Tune for Amazon OpenSearch Service</a>.</p>
    # @!attribute auto_tune_type
    #   <p>The type of Auto-Tune action.</p>
    #   @return [String]
    # @!attribute auto_tune_details
    #   <p>Details about an Auto-Tune action.</p>
    #   @return [Types::AutoTuneDetails]
    class AutoTune < Struct.new(
      nil,
      :auto_tune_type,
      :auto_tune_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies details about a scheduled Auto-Tune action. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html">Auto-Tune for Amazon OpenSearch Service</a>.</p>
    # @!attribute scheduled_auto_tune_details
    #   <p>Container for details about a scheduled Auto-Tune action.</p>
    #   @return [Types::ScheduledAutoTuneDetails]
    class AutoTuneDetails < Struct.new(
      nil,
      :scheduled_auto_tune_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note>
    #             <p>This object is deprecated. Use the domain's <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/off-peak.html">off-peak
    #                     window</a> to schedule Auto-Tune optimizations. For migration instructions,
    #                 see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/off-peak.html#off-peak-migrate">Migrating from Auto-Tune maintenance windows</a>.</p>
    #          </note>
    #          <p>The Auto-Tune maintenance schedule. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html">Auto-Tune for Amazon OpenSearch Service</a>.</p>
    # @!attribute start_at
    #   <p>The Epoch timestamp at which the Auto-Tune maintenance schedule starts.</p>
    #   @return [Time]
    # @!attribute duration
    #   <p>The duration of the maintenance schedule. For example, <code>"Duration": {"Value": 2,
    #                   "Unit": "HOURS"}</code>.</p>
    #   @return [Types::Duration]
    # @!attribute cron_expression_for_recurrence
    #   <p>A cron expression for a recurring maintenance schedule during which Auto-Tune can
    #               deploy changes.</p>
    #   @return [String]
    class AutoTuneMaintenanceSchedule < Struct.new(
      nil,
      :start_at,
      :duration,
      :cron_expression_for_recurrence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Auto-Tune settings when updating a domain. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html">Auto-Tune for Amazon OpenSearch Service</a>.</p>
    # @!attribute desired_state
    #   <p>Whether Auto-Tune is enabled or disabled.</p>
    #   @return [String]
    # @!attribute rollback_on_disable
    #   <p>When disabling Auto-Tune, specify <code>NO_ROLLBACK</code> to retain all prior
    #               Auto-Tune settings or <code>DEFAULT_ROLLBACK</code> to revert to the OpenSearch Service
    #               defaults. If you specify <code>DEFAULT_ROLLBACK</code>, you must include a
    #                   <code>MaintenanceSchedule</code> in the request. Otherwise, OpenSearch Service is
    #               unable to perform the rollback.</p>
    #   @return [String]
    # @!attribute maintenance_schedules
    #   <p>DEPRECATED. Use <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/off-peak.html">off-peak window</a>
    #               instead.</p>
    #            <p>A list of maintenance schedules during which Auto-Tune can deploy changes.</p>
    #   @return [Array<Types::AutoTuneMaintenanceSchedule>]
    # @!attribute use_off_peak_window
    #   <p>Whether to use the domain's <a href="https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_OffPeakWindow.html">off-peak
    #                   window</a> to deploy configuration changes on the domain rather than a
    #               maintenance schedule.</p>
    #   @return [Boolean]
    class AutoTuneOptions < Struct.new(
      nil,
      :desired_state,
      :rollback_on_disable,
      :maintenance_schedules,
      :use_off_peak_window,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options for configuring Auto-Tune. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html">Auto-Tune for Amazon OpenSearch Service</a>
    #          </p>
    # @!attribute desired_state
    #   <p>Whether Auto-Tune is enabled or disabled.</p>
    #   @return [String]
    # @!attribute maintenance_schedules
    #   <p>A list of maintenance schedules during which Auto-Tune can deploy changes. Maintenance
    #               windows are deprecated and have been replaced with <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/off-peak.html">off-peak
    #                   windows</a>.</p>
    #   @return [Array<Types::AutoTuneMaintenanceSchedule>]
    # @!attribute use_off_peak_window
    #   <p>Whether to schedule Auto-Tune optimizations that require blue/green deployments during
    #               the domain's configured daily off-peak window.</p>
    #   @return [Boolean]
    class AutoTuneOptionsInput < Struct.new(
      nil,
      :desired_state,
      :maintenance_schedules,
      :use_off_peak_window,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Auto-Tune settings for a domain, displayed when enabling or disabling
    #             Auto-Tune.</p>
    # @!attribute state
    #   <p>The current state of Auto-Tune on the domain.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Any errors that occurred while enabling or disabling Auto-Tune.</p>
    #   @return [String]
    # @!attribute use_off_peak_window
    #   <p>Whether the domain's off-peak window will be used to deploy Auto-Tune changes rather
    #               than a maintenance schedule.</p>
    #   @return [Boolean]
    class AutoTuneOptionsOutput < Struct.new(
      nil,
      :state,
      :error_message,
      :use_off_peak_window,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Auto-Tune status for the domain.</p>
    # @!attribute options
    #   <p>Auto-Tune settings for updating a domain.</p>
    #   @return [Types::AutoTuneOptions]
    # @!attribute status
    #   <p>The current status of Auto-Tune for a domain.</p>
    #   @return [Types::AutoTuneStatus]
    class AutoTuneOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The current status of Auto-Tune for the domain. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html">Auto-Tune for Amazon OpenSearch Service</a>.</p>
    # @!attribute creation_date
    #   <p>Date and time when Auto-Tune was enabled for the domain.</p>
    #   @return [Time]
    # @!attribute update_date
    #   <p>Date and time when the Auto-Tune options were last updated for the domain.</p>
    #   @return [Time]
    # @!attribute update_version
    #   <p>The latest version of the Auto-Tune options.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The current state of Auto-Tune on the domain.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Any errors that occurred while enabling or disabling Auto-Tune.</p>
    #   @return [String]
    # @!attribute pending_deletion
    #   <p>Indicates whether the domain is being deleted.</p>
    #   @return [Boolean]
    class AutoTuneStatus < Struct.new(
      nil,
      :creation_date,
      :update_date,
      :update_version,
      :state,
      :error_message,
      :pending_deletion,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:update_version] = 0 unless options.key?(:update_version)
        super
      end
    end

    # <p>Specifies the automated snapshot pause options for the domain. These options allow you to temporarily pause automated snapshots for a specified time period.</p>
    # @!attribute enabled
    #   <p>Whether automated snapshot pause is enabled for the domain.</p>
    #   @return [Boolean]
    # @!attribute start_time
    #   <p>The timestamp at which the automated snapshot pause begins.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp at which the automated snapshot pause ends.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The current state of the automated snapshot pause. Valid values are <code>Active</code>, <code>Completed</code>, <code>Scheduled</code>, and <code>Disabled</code>.</p>
    #   @return [String]
    class AutomatedSnapshotPauseOptions < Struct.new(
      nil,
      :enabled,
      :start_time,
      :end_time,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of automated snapshot pause options for the domain.</p>
    # @!attribute options
    #   <p>Automated snapshot pause options for the domain.</p>
    #   @return [Types::AutomatedSnapshotPauseOptions]
    # @!attribute status
    #   <p>The current status of the automated snapshot pause options for the domain.</p>
    #   @return [Types::OptionStatus]
    class AutomatedSnapshotPauseOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the automated snapshot pause request options for the domain.</p>
    #          <important>
    #             <p>Suspending snapshots reduces data protection. You cannot restore your domain to
    #                 points in time when snapshots are suspended. Use this feature only for short-term
    #                 operational needs such as migrations or maintenance windows.</p>
    #          </important>
    #          <p>Maximum suspension duration: 3 days.</p>
    # @!attribute enabled
    #   <p>Whether to enable or disable automated snapshot pause for the domain.</p>
    #   @return [Boolean]
    # @!attribute start_time
    #   <p>The timestamp at which the automated snapshot pause should begin.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp at which the automated snapshot pause should end. The maximum allowed
    #               duration between <code>StartTime</code> and <code>EndTime</code> is 3 days.</p>
    #   @return [Time]
    class AutomatedSnapshotPauseRequestOptions < Struct.new(
      nil,
      :enabled,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Availability Zone on a domain.</p>
    # @!attribute availability_zone_name
    #   <p>The name of the Availability Zone.</p>
    #   @return [String]
    # @!attribute zone_status
    #   <p>The current state of the Availability Zone. Current options are <code>Active</code>
    #               and <code>StandBy</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Active</code> - Data nodes in the Availability Zone are in use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StandBy</code> - Data nodes in the Availability Zone are in a standby
    #                       state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NotAvailable</code> - Unable to retrieve information.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute configured_data_node_count
    #   <p>The total number of data nodes configured in the Availability Zone.</p>
    #   @return [String]
    # @!attribute available_data_node_count
    #   <p>The number of data nodes active in the Availability Zone.</p>
    #   @return [String]
    # @!attribute total_shards
    #   <p>The total number of primary and replica shards in the Availability Zone.</p>
    #   @return [String]
    # @!attribute total_un_assigned_shards
    #   <p>The total number of primary and replica shards that aren't allocated to any of the
    #               nodes in the Availability Zone.</p>
    #   @return [String]
    class AvailabilityZoneInfo < Struct.new(
      nil,
      :availability_zone_name,
      :zone_status,
      :configured_data_node_count,
      :available_data_node_count,
      :total_shards,
      :total_un_assigned_shards,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred while processing the request.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class BaseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of an OpenSearch Service domain. Domain names are unique across the domains
    #               owned by an account within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>When set to <code>True</code>, returns the list of change IDs and properties that will
    #               be cancelled without actually cancelling the change.</p>
    #   @return [Boolean]
    class CancelDomainConfigChangeRequest < Struct.new(
      nil,
      :domain_name,
      :dry_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cancelled_change_ids
    #   <p>The unique identifiers of the changes that were cancelled.</p>
    #   @return [Array<String>]
    # @!attribute cancelled_change_properties
    #   <p>The domain change properties that were cancelled.</p>
    #   @return [Array<Types::CancelledChangeProperty>]
    # @!attribute dry_run
    #   <p>Whether or not the request was a dry run. If <code>True</code>, the changes were not
    #               actually cancelled. </p>
    #   @return [Boolean]
    class CancelDomainConfigChangeResponse < Struct.new(
      nil,
      :cancelled_change_ids,
      :cancelled_change_properties,
      :dry_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to cancel a service software update.</p>
    # @!attribute domain_name
    #   <p>Name of the OpenSearch Service domain that you want to cancel the service software
    #               update on.</p>
    #   @return [String]
    class CancelServiceSoftwareUpdateRequest < Struct.new(
      nil,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the response to a <code>CancelServiceSoftwareUpdate</code> operation.
    #             Contains the status of the update.</p>
    # @!attribute service_software_options
    #   <p>Container for the state of your domain relative to the latest service software.</p>
    #   @return [Types::ServiceSoftwareOptions]
    class CancelServiceSoftwareUpdateResponse < Struct.new(
      nil,
      :service_software_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A property change that was cancelled for an Amazon OpenSearch Service domain.</p>
    # @!attribute property_name
    #   <p>The name of the property whose change was cancelled.</p>
    #   @return [String]
    # @!attribute cancelled_value
    #   <p>The pending value of the property that was cancelled. This would have been the
    #               eventual value of the property if the chance had not been cancelled.</p>
    #   @return [String]
    # @!attribute active_value
    #   <p>The current value of the property, after the change was cancelled.</p>
    #   @return [String]
    class CancelledChangeProperty < Struct.new(
      nil,
      :property_name,
      :cancelled_value,
      :active_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The base configuration for registering a capability. Contains capability-specific configuration such as AI settings.</p>
    # @!attribute ai_config
    #   <p>Configuration settings for AI-powered capabilities.</p>
    #   @return [Types::AIConfig]
    class CapabilityBaseRequestConfig < Struct.new(
      :ai_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AiConfig < CapabilityBaseRequestConfig; end
      class Unknown < CapabilityBaseRequestConfig; end
    end

    # <p>The base configuration returned for a registered capability.</p>
    # @!attribute ai_config
    #   <p>Configuration settings for AI-powered capabilities.</p>
    #   @return [Types::AIConfig]
    class CapabilityBaseResponseConfig < Struct.new(
      :ai_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AiConfig < CapabilityBaseResponseConfig; end
      class Unknown < CapabilityBaseResponseConfig; end
    end

    # <p>The extended configuration returned for a registered capability, including additional details beyond the base configuration.</p>
    # @!attribute ai_config
    #   <p>Configuration settings for AI-powered capabilities.</p>
    #   @return [Types::AIConfig]
    class CapabilityExtendedResponseConfig < Struct.new(
      :ai_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AiConfig < CapabilityExtendedResponseConfig; end
      class Unknown < CapabilityExtendedResponseConfig; end
    end

    # <p>Information about a capability failure.</p>
    # @!attribute reason
    #   <p>The reason for the capability failure. Possible values: <code>KMS_KEY_INSUFFICIENT_PERMISSION</code>.</p>
    #   @return [String]
    # @!attribute details
    #   <p>Additional details about the capability failure.</p>
    #   @return [String]
    class CapabilityFailure < Struct.new(
      nil,
      :reason,
      :details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for information about a configuration change happening on a domain.</p>
    # @!attribute change_id
    #   <p>The ID of the configuration change.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message corresponding to the status of the configuration change.</p>
    #   @return [String]
    # @!attribute config_change_status
    #   <p>The current status of the configuration change.</p>
    #   @return [String]
    # @!attribute initiated_by
    #   <p>The IAM principal who initiated the configuration change.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time that the configuration change was initiated, in Universal Coordinated Time
    #               (UTC).</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The last time that the configuration change was updated.</p>
    #   @return [Time]
    class ChangeProgressDetails < Struct.new(
      nil,
      :change_id,
      :message,
      :config_change_status,
      :initiated_by,
      :start_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Progress details for each stage of a domain update.</p>
    # @!attribute name
    #   <p>The name of the stage.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the stage.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the stage.</p>
    #   @return [String]
    # @!attribute last_updated
    #   <p>The most recent updated timestamp of the stage.</p>
    #   @return [Time]
    class ChangeProgressStage < Struct.new(
      nil,
      :name,
      :status,
      :description,
      :last_updated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The progress details of a specific domain configuration change.</p>
    # @!attribute change_id
    #   <p>The unique change identifier associated with a specific domain configuration
    #               change.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time at which the configuration change is made on the domain.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The overall status of the domain configuration change.</p>
    #   @return [String]
    # @!attribute pending_properties
    #   <p>The list of properties in the domain configuration change that are still
    #               pending.</p>
    #   @return [Array<String>]
    # @!attribute completed_properties
    #   <p>The list of properties in the domain configuration change that have completed.</p>
    #   @return [Array<String>]
    # @!attribute total_number_of_stages
    #   <p>The total number of stages required for the configuration change.</p>
    #   @return [Integer]
    # @!attribute change_progress_stages
    #   <p>The specific stages that the domain is going through to perform the configuration
    #               change.</p>
    #   @return [Array<Types::ChangeProgressStage>]
    # @!attribute last_updated_time
    #   <p>The last time that the status of the configuration change was updated.</p>
    #   @return [Time]
    # @!attribute config_change_status
    #   <p>The current status of the configuration change.</p>
    #   @return [String]
    # @!attribute initiated_by
    #   <p>The IAM principal who initiated the configuration change.</p>
    #   @return [String]
    # @!attribute validation_failures
    #   <p>The validation failures that occurred as a result of the configuration change.</p>
    #   @return [Array<Types::ValidationFailure>]
    # @!attribute accepted_warnings
    #   <p>The list of advisory warning codes that were accepted for the configuration change.</p>
    #   @return [Array<String>]
    class ChangeProgressStatusDetails < Struct.new(
      nil,
      :change_id,
      :start_time,
      :status,
      :pending_properties,
      :completed_properties,
      :total_number_of_stages,
      :change_progress_stages,
      :last_updated_time,
      :config_change_status,
      :initiated_by,
      :validation_failures,
      :accepted_warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_number_of_stages] = 0 unless options.key?(:total_number_of_stages)
        super
      end
    end

    # <p> Configuration details for a CloudWatch Logs data source that can be used for direct
    #             queries. </p>
    # @!attribute role_arn
    #   <p> The unique identifier of the IAM role that grants OpenSearch Service permission to
    #               access the specified data source. </p>
    #   @return [String]
    class CloudWatchDirectQueryDataSource < Struct.new(
      nil,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the cluster configuration of an OpenSearch Service domain. For more
    #             information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html">Creating and
    #                 managing Amazon OpenSearch Service domains</a>.</p>
    # @!attribute instance_type
    #   <p>Instance type of data nodes in the cluster.</p>
    #   @return [String]
    # @!attribute instance_count
    #   <p>Number of data nodes in the cluster. This number must be greater than 1, otherwise you
    #               receive a validation exception.</p>
    #   @return [Integer]
    # @!attribute dedicated_master_enabled
    #   <p>Indicates whether dedicated master nodes are enabled for the cluster.<code>True</code>
    #               if the cluster will use a dedicated master node.<code>False</code> if the cluster will
    #               not.</p>
    #   @return [Boolean]
    # @!attribute zone_awareness_enabled
    #   <p>Indicates whether multiple Availability Zones are enabled. For more information, see
    #                   <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html">Configuring a multi-AZ domain in Amazon OpenSearch Service</a>.</p>
    #   @return [Boolean]
    # @!attribute zone_awareness_config
    #   <p>Container for zone awareness configuration options. Only required if
    #                   <code>ZoneAwarenessEnabled</code> is <code>true</code>.</p>
    #   @return [Types::ZoneAwarenessConfig]
    # @!attribute dedicated_master_type
    #   <p>OpenSearch Service instance type of the dedicated master nodes in the cluster.</p>
    #   @return [String]
    # @!attribute dedicated_master_count
    #   <p>Number of dedicated master nodes in the cluster. This number must be greater than 2
    #               and not 4, otherwise you receive a validation exception.</p>
    #   @return [Integer]
    # @!attribute warm_enabled
    #   <p>Whether to enable warm storage for the cluster.</p>
    #   @return [Boolean]
    # @!attribute warm_type
    #   <p>The instance type for the cluster's warm nodes.</p>
    #   @return [String]
    # @!attribute warm_count
    #   <p>The number of warm nodes in the cluster.</p>
    #   @return [Integer]
    # @!attribute cold_storage_options
    #   <p>Container for cold storage configuration options.</p>
    #   @return [Types::ColdStorageOptions]
    # @!attribute multi_az_with_standby_enabled
    #   <p>A boolean that indicates whether a multi-AZ domain is turned on with a standby AZ. For
    #               more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html">Configuring a multi-AZ domain in Amazon OpenSearch Service</a>. </p>
    #   @return [Boolean]
    # @!attribute node_options
    #   <p>List of node options for the domain.</p>
    #   @return [Array<Types::NodeOption>]
    class ClusterConfig < Struct.new(
      nil,
      :instance_type,
      :instance_count,
      :dedicated_master_enabled,
      :zone_awareness_enabled,
      :zone_awareness_config,
      :dedicated_master_type,
      :dedicated_master_count,
      :warm_enabled,
      :warm_type,
      :warm_count,
      :cold_storage_options,
      :multi_az_with_standby_enabled,
      :node_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The cluster configuration status for a domain.</p>
    # @!attribute options
    #   <p>Cluster configuration options for the specified domain.</p>
    #   @return [Types::ClusterConfig]
    # @!attribute status
    #   <p>The status of cluster configuration options for the specified domain.</p>
    #   @return [Types::OptionStatus]
    class ClusterConfigStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters required to enable Cognito authentication for an
    #             OpenSearch Service domain. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html">Configuring Amazon
    #                 Cognito authentication for OpenSearch Dashboards</a>.</p>
    # @!attribute enabled
    #   <p>Whether to enable or disable Amazon Cognito authentication for OpenSearch
    #               Dashboards.</p>
    #   @return [Boolean]
    # @!attribute user_pool_id
    #   <p>The Amazon Cognito user pool ID that you want OpenSearch Service to use for OpenSearch
    #               Dashboards authentication.</p>
    #   @return [String]
    # @!attribute identity_pool_id
    #   <p>The Amazon Cognito identity pool ID that you want OpenSearch Service to use for
    #               OpenSearch Dashboards authentication.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The <code>AmazonOpenSearchServiceCognitoAccess</code> role that allows OpenSearch
    #               Service to configure your user pool and identity pool.</p>
    #   @return [String]
    class CognitoOptions < Struct.new(
      nil,
      :enabled,
      :user_pool_id,
      :identity_pool_id,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the Cognito options for the specified domain.</p>
    # @!attribute options
    #   <p>Cognito options for the specified domain.</p>
    #   @return [Types::CognitoOptions]
    # @!attribute status
    #   <p>The status of the Cognito options for the specified domain.</p>
    #   @return [Types::OptionStatus]
    class CognitoOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters required to enable cold storage for an OpenSearch Service
    #             domain. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cold-storage.html">Cold storage for
    #                 Amazon OpenSearch Service</a>.</p>
    # @!attribute enabled
    #   <p>Whether to enable or disable cold storage on the domain. You must enable UltraWarm
    #               storage to enable cold storage.</p>
    #   @return [Boolean]
    class ColdStorageOptions < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A map of OpenSearch or Elasticsearch versions and the versions you can upgrade them
    #             to.</p>
    # @!attribute source_version
    #   <p>The current version that the OpenSearch Service domain is running.</p>
    #   @return [String]
    # @!attribute target_versions
    #   <p>The possible versions that you can upgrade the domain to.</p>
    #   @return [Array<String>]
    class CompatibleVersionsMap < Struct.new(
      nil,
      :source_version,
      :target_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred because the client attempts to remove a resource that is currently in use.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The connection properties of an outbound connection.</p>
    # @!attribute endpoint
    #   <important>
    #               <p>The Endpoint attribute cannot be modified. </p>
    #            </important>
    #            <p>The endpoint of the remote domain. Applicable for VPC_ENDPOINT connection mode.</p>
    #   @return [String]
    # @!attribute cross_cluster_search
    #   <p>The connection properties for cross cluster search.</p>
    #   @return [Types::CrossClusterSearchConnectionProperties]
    class ConnectionProperties < Struct.new(
      nil,
      :endpoint,
      :cross_cluster_search,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The unique name of the OpenSearch application. Names must be unique within an Amazon Web Services Region for each account.</p>
    #   @return [String]
    # @!attribute data_sources
    #   <p>The data sources to link to the OpenSearch application.</p>
    #   @return [Array<Types::DataSource>]
    # @!attribute iam_identity_center_options
    #   <p>Configuration settings for integrating Amazon Web Services IAM Identity Center with the
    #               OpenSearch application.</p>
    #   @return [Types::IamIdentityCenterOptionsInput]
    # @!attribute app_configs
    #   <p>Configuration settings for the OpenSearch application, including administrative
    #               options.</p>
    #   @return [Array<Types::AppConfig>]
    # @!attribute tag_list
    #   <p>A list of tags attached to a domain.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the application's data at rest.
    #                 If provided, the application uses your customer-managed key for encryption. If omitted, the application
    #                 uses an AWS-managed key. The KMS key must be in the same region as the application.</p>
    #   @return [String]
    class CreateApplicationRequest < Struct.new(
      nil,
      :client_token,
      :name,
      :data_sources,
      :iam_identity_center_options,
      :app_configs,
      :tag_list,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier assigned to the OpenSearch application.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the OpenSearch application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    # @!attribute data_sources
    #   <p>The data sources linked to the OpenSearch application.</p>
    #   @return [Array<Types::DataSource>]
    # @!attribute iam_identity_center_options
    #   <p>The IAM Identity Center settings configured for the OpenSearch application.</p>
    #   @return [Types::IamIdentityCenterOptions]
    # @!attribute app_configs
    #   <p>Configuration settings for the OpenSearch application, including administrative
    #               options.</p>
    #   @return [Array<Types::AppConfig>]
    # @!attribute tag_list
    #   <p>A list of tags attached to a domain.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_at
    #   <p>The timestamp indicating when the OpenSearch application was created.</p>
    #   @return [Time]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the application's data at rest.</p>
    #   @return [String]
    class CreateApplicationResponse < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :data_sources,
      :iam_identity_center_options,
      :app_configs,
      :tag_list,
      :created_at,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>Name of the OpenSearch Service domain to create. Domain names are unique across the
    #               domains owned by an account within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>String of format Elasticsearch_X.Y or OpenSearch_X.Y to specify the engine version for
    #               the OpenSearch Service domain. For example, <code>OpenSearch_1.0</code> or
    #                   <code>Elasticsearch_7.9</code>. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomains">Creating and managing Amazon OpenSearch Service domains</a>.</p>
    #   @return [String]
    # @!attribute cluster_config
    #   <p>Container for the cluster configuration of a domain.</p>
    #   @return [Types::ClusterConfig]
    # @!attribute ebs_options
    #   <p>Container for the parameters required to enable EBS-based storage for an OpenSearch
    #               Service domain.</p>
    #   @return [Types::EBSOptions]
    # @!attribute access_policies
    #   <p>Identity and Access Management (IAM) policy document specifying the access policies
    #               for the new domain.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>Specify either dual stack or IPv4 as your IP address type. Dual stack allows you to
    #               share domain resources across IPv4 and IPv6 address types, and is the recommended
    #               option. If you set your IP address type to dual stack, you can't change your address
    #               type later.</p>
    #   @return [String]
    # @!attribute snapshot_options
    #   <p>DEPRECATED. Container for the parameters required to configure automated snapshots of domain
    #      indexes.</p>
    #   @return [Types::SnapshotOptions]
    # @!attribute vpc_options
    #   <p>Container for the values required to configure VPC access domains. If you don't specify
    #      these values, OpenSearch Service creates the domain with a public endpoint. For more information,
    #      see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html">Launching
    #       your Amazon OpenSearch Service domains using a VPC</a>.</p>
    #   @return [Types::VPCOptions]
    # @!attribute cognito_options
    #   <p>Key-value pairs to configure Amazon Cognito authentication. For more information, see
    #                   <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html">Configuring Amazon
    #                   Cognito authentication for OpenSearch Dashboards</a>.</p>
    #   @return [Types::CognitoOptions]
    # @!attribute encryption_at_rest_options
    #   <p>Key-value pairs to enable encryption at rest.</p>
    #   @return [Types::EncryptionAtRestOptions]
    # @!attribute node_to_node_encryption_options
    #   <p>Enables node-to-node encryption.</p>
    #   @return [Types::NodeToNodeEncryptionOptions]
    # @!attribute advanced_options
    #   <p>Key-value pairs to specify advanced configuration options. The following key-value
    #               pairs are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"rest.action.multi.allow_explicit_index": "true" | "false"</code> - Note
    #                       the use of a string rather than a boolean. Specifies whether explicit references
    #                       to indexes are allowed inside the body of HTTP requests. If you want to
    #                       configure access policies for domain sub-resources, such as specific indexes and
    #                       domain APIs, you must disable this property. Default is true.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"indices.fielddata.cache.size": "80" </code> - Note the use of a string
    #                       rather than a boolean. Specifies the percentage of heap space allocated to field
    #                       data. Default is unbounded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"indices.query.bool.max_clause_count": "1024"</code> - Note the use of a
    #                       string rather than a boolean. Specifies the maximum number of clauses allowed in
    #                       a Lucene boolean query. Default is 1,024. Queries with more than the permitted
    #                       number of clauses result in a <code>TooManyClauses</code> error.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"override_main_response_version": "true" | "false"</code> - Note the use
    #                       of a string rather than a boolean. Specifies whether the domain reports its
    #                       version as 7.10 to allow Elasticsearch OSS clients and plugins to continue
    #                       working with it. Default is false when creating a domain and true when upgrading
    #                       a domain.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options">Advanced cluster parameters</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute log_publishing_options
    #   <p>Key-value pairs to configure log publishing.</p>
    #   @return [Hash<String, Types::LogPublishingOption>]
    # @!attribute domain_endpoint_options
    #   <p>Additional options for the domain endpoint, such as whether to require HTTPS for all
    #               traffic.</p>
    #   @return [Types::DomainEndpointOptions]
    # @!attribute advanced_security_options
    #   <p>Options for fine-grained access control.</p>
    #   @return [Types::AdvancedSecurityOptionsInput]
    # @!attribute identity_center_options
    #   <p>Configuration options for enabling and managing IAM Identity Center integration within
    #               a domain.</p>
    #   @return [Types::IdentityCenterOptionsInput]
    # @!attribute tag_list
    #   <p>List of tags to add to the domain upon creation.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute auto_tune_options
    #   <p>Options for Auto-Tune.</p>
    #   @return [Types::AutoTuneOptionsInput]
    # @!attribute off_peak_window_options
    #   <p>Specifies a daily 10-hour time block during which OpenSearch Service can perform
    #               configuration changes on the domain, including service software updates and Auto-Tune
    #               enhancements that require a blue/green deployment. If no options are specified, the
    #               default start time of 10:00 P.M. local time (for the Region that the domain is created
    #               in) is used.</p>
    #   @return [Types::OffPeakWindowOptions]
    # @!attribute software_update_options
    #   <p>Software update options for the domain.</p>
    #   @return [Types::SoftwareUpdateOptions]
    # @!attribute aiml_options
    #   <p>Options for all machine learning features for the specified domain.</p>
    #   @return [Types::AIMLOptionsInput]
    # @!attribute deployment_strategy_options
    #   <p>Specifies the deployment strategy options for the domain.</p>
    #   @return [Types::DeploymentStrategyOptions]
    # @!attribute automated_snapshot_pause_options
    #   <p>Specifies the automated snapshot pause options for the domain.</p>
    #            <important>
    #               <p>Suspending snapshots reduces data protection. You cannot restore your domain to
    #                   points in time when snapshots are suspended. Use this feature only for short-term
    #                   operational needs such as migrations or maintenance windows.</p>
    #            </important>
    #            <p>Maximum suspension duration: 3 days.</p>
    #   @return [Types::AutomatedSnapshotPauseRequestOptions]
    # @!attribute use_case
    #   <p>The primary use case for the domain. For valid values, see <code>DomainUseCase</code>.</p>
    #   @return [String]
    # @!attribute engine_mode
    #   <p>The engine mode for the domain. For valid values and requirements, see <code>EngineMode</code>.</p>
    #   @return [String]
    class CreateDomainRequest < Struct.new(
      nil,
      :domain_name,
      :engine_version,
      :cluster_config,
      :ebs_options,
      :access_policies,
      :ip_address_type,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :advanced_options,
      :log_publishing_options,
      :domain_endpoint_options,
      :advanced_security_options,
      :identity_center_options,
      :tag_list,
      :auto_tune_options,
      :off_peak_window_options,
      :software_update_options,
      :aiml_options,
      :deployment_strategy_options,
      :automated_snapshot_pause_options,
      :use_case,
      :engine_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>CreateDomain</code> operation. Contains the status of the newly
    #    created domain.</p>
    # @!attribute domain_status
    #   <p>The status of the newly created domain.</p>
    #   @return [Types::DomainStatus]
    class CreateDomainResponse < Struct.new(
      nil,
      :domain_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of an OpenSearch Service domain. Domain names are unique across the domains
    #               owned by an account within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the index to create. Must be between 1 and 255 characters and follow OpenSearch naming conventions.</p>
    #   @return [String]
    # @!attribute index_schema
    #   <p>The JSON schema defining index mappings, settings, and semantic enrichment configuration. The schema specifies which text fields should be automatically enriched for semantic search capabilities and includes OpenSearch index configuration parameters.</p>
    #   @return [JSON]
    class CreateIndexRequest < Struct.new(
      nil,
      :domain_name,
      :index_name,
      :index_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the index creation operation.</p>
    #   @return [String]
    class CreateIndexResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>CreateOutboundConnection</code> operation.</p>
    # @!attribute local_domain_info
    #   <p>Name and Region of the source (local) domain.</p>
    #   @return [Types::DomainInformationContainer]
    # @!attribute remote_domain_info
    #   <p>Name and Region of the destination (remote) domain.</p>
    #   @return [Types::DomainInformationContainer]
    # @!attribute connection_alias
    #   <p>Name of the connection.</p>
    #   @return [String]
    # @!attribute connection_mode
    #   <p>The connection mode.</p>
    #   @return [String]
    # @!attribute connection_properties
    #   <p>The <code>ConnectionProperties</code> for the outbound connection.</p>
    #   @return [Types::ConnectionProperties]
    class CreateOutboundConnectionRequest < Struct.new(
      nil,
      :local_domain_info,
      :remote_domain_info,
      :connection_alias,
      :connection_mode,
      :connection_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>CreateOutboundConnection</code> request. Contains details about the
    #    newly created cross-cluster connection.</p>
    # @!attribute local_domain_info
    #   <p>Information about the source (local) domain.</p>
    #   @return [Types::DomainInformationContainer]
    # @!attribute remote_domain_info
    #   <p>Information about the destination (remote) domain.</p>
    #   @return [Types::DomainInformationContainer]
    # @!attribute connection_alias
    #   <p>Name of the connection.</p>
    #   @return [String]
    # @!attribute connection_status
    #   <p>The status of the connection.</p>
    #   @return [Types::OutboundConnectionStatus]
    # @!attribute connection_id
    #   <p>The unique identifier for the created outbound connection, which is used for subsequent
    #      operations on the connection.</p>
    #   @return [String]
    # @!attribute connection_mode
    #   <p>The connection mode.</p>
    #   @return [String]
    # @!attribute connection_properties
    #   <p>The <code>ConnectionProperties</code> for the newly created connection.</p>
    #   @return [Types::ConnectionProperties]
    class CreateOutboundConnectionResponse < Struct.new(
      nil,
      :local_domain_info,
      :remote_domain_info,
      :connection_alias,
      :connection_status,
      :connection_id,
      :connection_mode,
      :connection_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for request parameters to the <code>CreatePackage</code> operation.</p>
    # @!attribute package_name
    #   <p>Unique name for the package.</p>
    #   @return [String]
    # @!attribute package_type
    #   <p>The type of package.</p>
    #   @return [String]
    # @!attribute package_description
    #   <p>Description of the package.</p>
    #   @return [String]
    # @!attribute package_source
    #   <p>The Amazon S3 location from which to import the package.</p>
    #   @return [Types::PackageSource]
    # @!attribute package_configuration
    #   <p> The configuration parameters for the package being created.</p>
    #   @return [Types::PackageConfiguration]
    # @!attribute engine_version
    #   <p>The version of the Amazon OpenSearch Service engine for which is compatible with the
    #               package. This can only be specified for package type <code>ZIP-PLUGIN</code>
    #            </p>
    #   @return [String]
    # @!attribute package_vending_options
    #   <p> The vending options for the package being created. They determine if the package can
    #               be vended to other users.</p>
    #   @return [Types::PackageVendingOptions]
    # @!attribute package_encryption_options
    #   <p>The encryption parameters for the package being created.</p>
    #   @return [Types::PackageEncryptionOptions]
    class CreatePackageRequest < Struct.new(
      nil,
      :package_name,
      :package_type,
      :package_description,
      :package_source,
      :package_configuration,
      :engine_version,
      :package_vending_options,
      :package_encryption_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the response returned by the <code>CreatePackage</code>
    #             operation.</p>
    # @!attribute package_details
    #   <p>Basic information about an OpenSearch Service package.</p>
    #   @return [Types::PackageDetails]
    class CreatePackageResponse < Struct.new(
      nil,
      :package_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_arn
    #   <p>The Amazon Resource Name (ARN) of the domain to create the endpoint for.</p>
    #   @return [String]
    # @!attribute vpc_options
    #   <p>Options to specify the subnets and security groups for the endpoint.</p>
    #   @return [Types::VPCOptions]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class CreateVpcEndpointRequest < Struct.new(
      nil,
      :domain_arn,
      :vpc_options,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint
    #   <p>Information about the newly created VPC endpoint.</p>
    #   @return [Types::VpcEndpoint]
    class CreateVpcEndpointResponse < Struct.new(
      nil,
      :vpc_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Cross-cluster search specific connection properties.</p>
    # @!attribute skip_unavailable
    #   <p>The status of the <code>SkipUnavailable</code> setting for the outbound connection.
    #               This feature allows you to specify some clusters as optional and ensure that your
    #               cross-cluster queries return partial results despite failures on one or more remote
    #               clusters.</p>
    #   @return [String]
    class CrossClusterSearchConnectionProperties < Struct.new(
      nil,
      :skip_unavailable,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Data sources that are associated with an OpenSearch application. </p>
    # @!attribute data_source_arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    # @!attribute data_source_description
    #   <p>Detailed description of a data source.</p>
    #   @return [String]
    # @!attribute iam_role_for_data_source_arn
    #   <p>The ARN of the IAM role to be used for cross account/region data source association.</p>
    #   @return [String]
    class DataSource < Struct.new(
      nil,
      :data_source_arn,
      :data_source_description,
      :iam_role_for_data_source_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a data source attachment, including its identifier, data source ARN, and current status.</p>
    # @!attribute attachment_id
    #   <p>The unique identifier assigned to the data source attachment.</p>
    #   @return [String]
    # @!attribute data_source_arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the data source attachment. Valid values are <code>PENDING</code>, <code>ATTACHED</code>, and <code>FAILED</code>.</p>
    #   @return [String]
    class DataSourceAttachmentSummary < Struct.new(
      nil,
      :attachment_id,
      :data_source_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a direct-query data source.</p>
    # @!attribute data_source_type
    #   <p>The type of data source.</p>
    #   @return [Types::DataSourceType]
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the data source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source.</p>
    #   @return [String]
    class DataSourceDetails < Struct.new(
      nil,
      :data_source_type,
      :name,
      :description,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The type of data source.</p>
    # @!attribute s3_glue_data_catalog
    #   <p>An Amazon S3 data source.</p>
    #   @return [Types::S3GlueDataCatalog]
    class DataSourceType < Struct.new(
      :s3_glue_data_catalog,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3GlueDataCatalog < DataSourceType; end
      class Unknown < DataSourceType; end
    end

    # @!attribute id
    #   <p>The unique identifier of the OpenSearch application to delete.</p>
    #   @return [String]
    class DeleteApplicationRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteApplicationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DeleteDataSource</code> operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data source to delete.</p>
    #   @return [String]
    class DeleteDataSourceRequest < Struct.new(
      nil,
      :domain_name,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>GetDataSource</code> operation.</p>
    # @!attribute message
    #   <p>A message associated with deletion of the data source.</p>
    #   @return [String]
    class DeleteDataSourceResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_source_name
    #   <p> A unique, user-defined label to identify the data source within your OpenSearch
    #               Service environment. </p>
    #   @return [String]
    class DeleteDirectQueryDataSourceRequest < Struct.new(
      nil,
      :data_source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DeleteDomain</code> operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain you want to permanently delete.</p>
    #   @return [String]
    class DeleteDomainRequest < Struct.new(
      nil,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The results of a <code>DeleteDomain</code> request. Contains the status of the pending
    #             deletion, or a "domain not found" error if the domain and all of its resources have been
    #             deleted.</p>
    # @!attribute domain_status
    #   <p>The status of the domain being deleted.</p>
    #   @return [Types::DomainStatus]
    class DeleteDomainResponse < Struct.new(
      nil,
      :domain_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DeleteInboundConnection</code>
    #             operation.</p>
    # @!attribute connection_id
    #   <p>The ID of the inbound connection to permanently delete.</p>
    #   @return [String]
    class DeleteInboundConnectionRequest < Struct.new(
      nil,
      :connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The results of a <code>DeleteInboundConnection</code> operation. Contains details
    #             about the deleted inbound connection.</p>
    # @!attribute connection
    #   <p>The deleted inbound connection.</p>
    #   @return [Types::InboundConnection]
    class DeleteInboundConnectionResponse < Struct.new(
      nil,
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of an OpenSearch Service domain. Domain names are unique across the domains
    #               owned by an account within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the index to delete.</p>
    #   @return [String]
    class DeleteIndexRequest < Struct.new(
      nil,
      :domain_name,
      :index_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the index deletion operation.</p>
    #   @return [String]
    class DeleteIndexResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DeleteOutboundConnection</code>
    #             operation.</p>
    # @!attribute connection_id
    #   <p>The ID of the outbound connection you want to permanently delete.</p>
    #   @return [String]
    class DeleteOutboundConnectionRequest < Struct.new(
      nil,
      :connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the deleted outbound connection.</p>
    # @!attribute connection
    #   <p>The deleted inbound connection.</p>
    #   @return [Types::OutboundConnection]
    class DeleteOutboundConnectionResponse < Struct.new(
      nil,
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Deletes a package from OpenSearch Service. The package can't be associated with any
    #             OpenSearch Service domain.</p>
    # @!attribute package_id
    #   <p>The internal ID of the package you want to delete. Use <code>DescribePackages</code>
    #               to find this value.</p>
    #   @return [String]
    class DeletePackageRequest < Struct.new(
      nil,
      :package_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the response parameters to the <code>DeletePackage</code>
    #             operation.</p>
    # @!attribute package_details
    #   <p> Information about the deleted package.</p>
    #   @return [Types::PackageDetails]
    class DeletePackageResponse < Struct.new(
      nil,
      :package_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint_id
    #   <p>The unique identifier of the endpoint.</p>
    #   @return [String]
    class DeleteVpcEndpointRequest < Struct.new(
      nil,
      :vpc_endpoint_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint_summary
    #   <p>Information about the deleted endpoint, including its current status
    #                   (<code>DELETING</code> or <code>DELETE_FAILED</code>).</p>
    #   @return [Types::VpcEndpointSummary]
    class DeleteVpcEndpointResponse < Struct.new(
      nil,
      :vpc_endpoint_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception for when a failure in one of the dependencies results in the service being unable to fetch details about the resource.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class DependencyFailureException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the deployment strategy options for the domain.</p>
    # @!attribute deployment_strategy
    #   <p>Specifies the deployment strategy for the domain. Valid values are <code>Default</code> and <code>CapacityOptimized</code>.</p>
    #   @return [String]
    class DeploymentStrategyOptions < Struct.new(
      nil,
      :deployment_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of deployment strategy options for the domain.</p>
    # @!attribute options
    #   <p>Deployment strategy options for the domain.</p>
    #   @return [Types::DeploymentStrategyOptions]
    # @!attribute status
    #   <p>The current status of the deployment strategy options for the domain.</p>
    #   @return [Types::OptionStatus]
    class DeploymentStrategyOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DeregisterCapability</code> operation.</p>
    # @!attribute application_id
    #   <p>The unique identifier of the OpenSearch UI application to deregister the capability from.</p>
    #   @return [String]
    # @!attribute capability_name
    #   <p>The name of the capability to deregister.</p>
    #   @return [String]
    class DeregisterCapabilityRequest < Struct.new(
      nil,
      :application_id,
      :capability_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>DeregisterCapability</code> request.</p>
    # @!attribute status
    #   <p>The status of the deregistration operation. Returns <code>deleting</code> when the capability is being removed.</p>
    #   @return [String]
    class DeregisterCapabilityResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier or name of the OpenSearch application.</p>
    #   @return [String]
    # @!attribute data_source_arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    class DescribeDataSourceAttachmentRequest < Struct.new(
      nil,
      :id,
      :data_source_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_id
    #   <p>The unique identifier assigned to the data source attachment.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the OpenSearch application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    # @!attribute data_source_arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source attachment. Valid values are <code>PENDING</code>, <code>ATTACHED</code>, and <code>FAILED</code>.</p>
    #   @return [String]
    class DescribeDataSourceAttachmentResponse < Struct.new(
      nil,
      :attachment_id,
      :id,
      :arn,
      :data_source_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DescribeDomainAutoTunes</code>
    #             operation.</p>
    # @!attribute domain_name
    #   <p>Name of the domain that you want Auto-Tune details about.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>DescribeDomainAutoTunes</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>DescribeDomainAutoTunes</code> operations, which returns results in the
    #               next page.</p>
    #   @return [String]
    class DescribeDomainAutoTunesRequest < Struct.new(
      nil,
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>DescribeDomainAutoTunes</code> request.</p>
    # @!attribute auto_tunes
    #   <p>The list of setting adjustments that Auto-Tune has made to the domain.</p>
    #   @return [Array<Types::AutoTune>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class DescribeDomainAutoTunesResponse < Struct.new(
      nil,
      :auto_tunes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DescribeDomainChangeProgress</code>
    #             operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain to get progress information for.</p>
    #   @return [String]
    # @!attribute change_id
    #   <p>The specific change ID for which you want to get progress information. If omitted, the
    #               request returns information about the most recent configuration change.</p>
    #   @return [String]
    class DescribeDomainChangeProgressRequest < Struct.new(
      nil,
      :domain_name,
      :change_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>DescribeDomainChangeProgress</code> request. Contains progress
    #             information for the requested domain change.</p>
    # @!attribute change_progress_status
    #   <p>Container for information about the stages of a configuration change happening on a
    #               domain.</p>
    #   @return [Types::ChangeProgressStatusDetails]
    class DescribeDomainChangeProgressResponse < Struct.new(
      nil,
      :change_progress_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DescribeDomainConfig</code>
    #             operation.</p>
    # @!attribute domain_name
    #   <p>Name of the OpenSearch Service domain configuration that you want to describe.</p>
    #   @return [String]
    class DescribeDomainConfigRequest < Struct.new(
      nil,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration information of the requested domain.</p>
    # @!attribute domain_config
    #   <p>Container for the configuration of the OpenSearch Service domain.</p>
    #   @return [Types::DomainConfig]
    class DescribeDomainConfigResponse < Struct.new(
      nil,
      :domain_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DescribeDomainHealth</code>
    #             operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    class DescribeDomainHealthRequest < Struct.new(
      nil,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>DescribeDomainHealth</code> request. Contains health information
    #             for the requested domain.</p>
    # @!attribute domain_state
    #   <p>The current state of the domain.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Processing</code> - The domain has updates in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Active</code> - Requested changes have been processed and deployed to
    #                       the domain.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute availability_zone_count
    #   <p>The number of Availability Zones configured for the domain. If the service is unable
    #               to fetch this information, it will return <code>NotAvailable</code>.</p>
    #   @return [String]
    # @!attribute active_availability_zone_count
    #   <p>The number of active Availability Zones configured for the domain. If the service is
    #               unable to fetch this information, it will return <code>NotAvailable</code>.</p>
    #   @return [String]
    # @!attribute stand_by_availability_zone_count
    #   <p>The number of standby Availability Zones configured for the domain. If the service is
    #               unable to fetch this information, it will return <code>NotAvailable</code>.</p>
    #   @return [String]
    # @!attribute data_node_count
    #   <p>The number of data nodes configured for the domain. If the service is unable to fetch
    #               this information, it will return <code>NotAvailable</code>.</p>
    #   @return [String]
    # @!attribute dedicated_master
    #   <p>A boolean that indicates if dedicated master nodes are activated for the
    #               domain.</p>
    #   @return [Boolean]
    # @!attribute master_eligible_node_count
    #   <p>The number of nodes that can be elected as a master node. If dedicated master nodes is
    #               turned on, this value is the number of dedicated master nodes configured for the domain.
    #               If the service is unable to fetch this information, it will return
    #                   <code>NotAvailable</code>.</p>
    #   @return [String]
    # @!attribute warm_node_count
    #   <p>The number of warm nodes configured for the domain.</p>
    #   @return [String]
    # @!attribute master_node
    #   <p>Indicates whether the domain has an elected master node.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Available</b> - The domain has an elected master
    #                       node.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>UnAvailable</b> - The master node hasn't yet been
    #                       elected, and a quorum to elect a new master node hasn't been reached.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute cluster_health
    #   <p>The current health status of your cluster.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Red</code> - At least one primary shard is not allocated to any
    #                       node.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Yellow</code> - All primary shards are allocated to nodes, but some
    #                       replicas aren’t.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Green</code> - All primary shards and their replicas are allocated to
    #                       nodes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NotAvailable</code> - Unable to retrieve cluster health.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute total_shards
    #   <p>The total number of primary and replica shards for the domain.</p>
    #   @return [String]
    # @!attribute total_un_assigned_shards
    #   <p>The total number of primary and replica shards not allocated to any of the nodes for
    #               the cluster.</p>
    #   @return [String]
    # @!attribute environment_information
    #   <p>A list of <code>EnvironmentInfo</code> for the domain. </p>
    #   @return [Array<Types::EnvironmentInfo>]
    class DescribeDomainHealthResponse < Struct.new(
      nil,
      :domain_state,
      :availability_zone_count,
      :active_availability_zone_count,
      :stand_by_availability_zone_count,
      :data_node_count,
      :dedicated_master,
      :master_eligible_node_count,
      :warm_node_count,
      :master_node,
      :cluster_health,
      :total_shards,
      :total_un_assigned_shards,
      :environment_information,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DescribeDomainNodes</code> operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    class DescribeDomainNodesRequest < Struct.new(
      nil,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>DescribeDomainNodes</code> request. Contains information about
    #             the nodes on the requested domain. </p>
    # @!attribute domain_nodes_status_list
    #   <p>Contains nodes information list <code>DomainNodesStatusList</code> with details about
    #               the all nodes on the requested domain.</p>
    #   @return [Array<Types::DomainNodesStatus>]
    class DescribeDomainNodesResponse < Struct.new(
      nil,
      :domain_nodes_status_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DescribeDomain</code> operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want information about.</p>
    #   @return [String]
    class DescribeDomainRequest < Struct.new(
      nil,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the status of the domain specified in the request.</p>
    # @!attribute domain_status
    #   <p>List that contains the status of each specified OpenSearch Service domain.</p>
    #   @return [Types::DomainStatus]
    class DescribeDomainResponse < Struct.new(
      nil,
      :domain_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DescribeDomains</code> operation.</p>
    # @!attribute domain_names
    #   <p>Array of OpenSearch Service domain names that you want information about. You must
    #               specify at least one domain name.</p>
    #   @return [Array<String>]
    class DescribeDomainsRequest < Struct.new(
      nil,
      :domain_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the status of the specified domains or all domains owned by the
    #             account.</p>
    # @!attribute domain_status_list
    #   <p>The status of the requested domains.</p>
    #   @return [Array<Types::DomainStatus>]
    class DescribeDomainsResponse < Struct.new(
      nil,
      :domain_status_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute dry_run_id
    #   <p>The unique identifier of the dry run.</p>
    #   @return [String]
    # @!attribute load_dry_run_config
    #   <p>Whether to include the configuration of the dry run in the response. The configuration
    #               specifies the updates that you're planning to make on the domain.</p>
    #   @return [Boolean]
    class DescribeDryRunProgressRequest < Struct.new(
      nil,
      :domain_name,
      :dry_run_id,
      :load_dry_run_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dry_run_progress_status
    #   <p>The current status of the dry run, including any validation errors.</p>
    #   @return [Types::DryRunProgressStatus]
    # @!attribute dry_run_config
    #   <p>Details about the changes you're planning to make on the domain.</p>
    #   @return [Types::DomainStatus]
    # @!attribute dry_run_results
    #   <p>The results of the dry run. </p>
    #   @return [Types::DryRunResults]
    class DescribeDryRunProgressResponse < Struct.new(
      nil,
      :dry_run_progress_status,
      :dry_run_config,
      :dry_run_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DescribeInboundConnections</code>
    #             operation.</p>
    # @!attribute filters
    #   <p> A list of filters used to match properties for inbound cross-cluster
    #               connections.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>DescribeInboundConnections</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>DescribeInboundConnections</code> operations, which returns results in
    #               the next page.</p>
    #   @return [String]
    class DescribeInboundConnectionsRequest < Struct.new(
      nil,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a list of connections matching the filter criteria.</p>
    # @!attribute connections
    #   <p>List of inbound connections.</p>
    #   @return [Array<Types::InboundConnection>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class DescribeInboundConnectionsResponse < Struct.new(
      nil,
      :connections,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DescribeInsightDetails</code>
    #             operation.</p>
    # @!attribute entity
    #   <p>The entity for which to retrieve insight details. Specifies the type and value of the
    #               entity, such as a domain name or Amazon Web Services account ID.</p>
    #   @return [Types::InsightEntity]
    # @!attribute insight_id
    #   <p>The unique identifier of the insight to describe.</p>
    #   @return [String]
    # @!attribute show_html_content
    #   <p>Specifies whether to show response with HTML content in response or not.</p>
    #   @return [Boolean]
    class DescribeInsightDetailsRequest < Struct.new(
      nil,
      :entity,
      :insight_id,
      :show_html_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>DescribeInsightDetails</code> request. Contains the detailed
    #             fields associated with the specified insight.</p>
    # @!attribute fields
    #   <p>The list of fields that contain detailed information about the insight.</p>
    #   @return [Array<Types::InsightField>]
    class DescribeInsightDetailsResponse < Struct.new(
      nil,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DescribeInstanceTypeLimits</code>
    #             operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain. Only specify if you need the limits for an existing
    #               domain.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The OpenSearch Service instance type for which you need limit information.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>Version of OpenSearch or Elasticsearch, in the format Elasticsearch_X.Y or
    #               OpenSearch_X.Y. Defaults to the latest version of OpenSearch.</p>
    #   @return [String]
    class DescribeInstanceTypeLimitsRequest < Struct.new(
      nil,
      :domain_name,
      :instance_type,
      :engine_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters received from the <code>DescribeInstanceTypeLimits</code>
    #             operation.</p>
    # @!attribute limits_by_role
    #   <p>Map that contains all applicable instance type limits.<code>data</code> refers to data
    #                   nodes.<code>master</code> refers to dedicated master nodes.</p>
    #   @return [Hash<String, Types::Limits>]
    class DescribeInstanceTypeLimitsResponse < Struct.new(
      nil,
      :limits_by_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DescribeOutboundConnections</code>
    #             operation.</p>
    # @!attribute filters
    #   <p>List of filter names and values that you can use for requests.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>DescribeOutboundConnections</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>DescribeOutboundConnections</code> operations, which returns results in
    #               the next page.</p>
    #   @return [String]
    class DescribeOutboundConnectionsRequest < Struct.new(
      nil,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a list of connections matching the filter criteria.</p>
    # @!attribute connections
    #   <p>List of outbound connections that match the filter criteria.</p>
    #   @return [Array<Types::OutboundConnection>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class DescribeOutboundConnectionsResponse < Struct.new(
      nil,
      :connections,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter to apply to the <code>DescribePackage</code> response.</p>
    # @!attribute name
    #   <p>Any field from <code>PackageDetails</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A non-empty list of values for the specified filter field.</p>
    #   @return [Array<String>]
    class DescribePackagesFilter < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to the <code>DescribePackage</code>
    #             operation.</p>
    # @!attribute filters
    #   <p>Only returns packages that match the <code>DescribePackagesFilterList</code>
    #               values.</p>
    #   @return [Array<Types::DescribePackagesFilter>]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>DescribePackageFilters</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>DescribePackageFilters</code> operations, which returns results in the
    #               next page.</p>
    #   @return [String]
    class DescribePackagesRequest < Struct.new(
      nil,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the response returned by the <code>DescribePackages</code>
    #             operation.</p>
    # @!attribute package_details_list
    #   <p>Basic information about a package.</p>
    #   @return [Array<Types::PackageDetails>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class DescribePackagesResponse < Struct.new(
      nil,
      :package_details_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to a
    #                 <code>DescribeReservedInstanceOfferings</code> operation.</p>
    # @!attribute reserved_instance_offering_id
    #   <p>The Reserved Instance identifier filter value. Use this parameter to show only the
    #               available instance types that match the specified reservation identifier.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>DescribeReservedInstanceOfferings</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>DescribeReservedInstanceOfferings</code> operations, which returns
    #               results in the next page.</p>
    #   @return [String]
    class DescribeReservedInstanceOfferingsRequest < Struct.new(
      nil,
      :reserved_instance_offering_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for results of a <code>DescribeReservedInstanceOfferings</code>
    #             request.</p>
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute reserved_instance_offerings
    #   <p>List of Reserved Instance offerings.</p>
    #   @return [Array<Types::ReservedInstanceOffering>]
    class DescribeReservedInstanceOfferingsResponse < Struct.new(
      nil,
      :next_token,
      :reserved_instance_offerings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to the <code>DescribeReservedInstances</code>
    #             operation.</p>
    # @!attribute reserved_instance_id
    #   <p>The reserved instance identifier filter value. Use this parameter to show only the
    #               reservation that matches the specified reserved OpenSearch instance ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>DescribeReservedInstances</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>DescribeReservedInstances</code> operations, which returns results in
    #               the next page.</p>
    #   @return [String]
    class DescribeReservedInstancesRequest < Struct.new(
      nil,
      :reserved_instance_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for results from <code>DescribeReservedInstances</code>
    #          </p>
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute reserved_instances
    #   <p>List of Reserved Instances in the current Region.</p>
    #   @return [Array<Types::ReservedInstance>]
    class DescribeReservedInstancesResponse < Struct.new(
      nil,
      :next_token,
      :reserved_instances,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint_ids
    #   <p>The unique identifiers of the endpoints to get information about.</p>
    #   @return [Array<String>]
    class DescribeVpcEndpointsRequest < Struct.new(
      nil,
      :vpc_endpoint_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoints
    #   <p>Information about each requested VPC endpoint.</p>
    #   @return [Array<Types::VpcEndpoint>]
    # @!attribute vpc_endpoint_errors
    #   <p>Any errors associated with the request.</p>
    #   @return [Array<Types::VpcEndpointError>]
    class DescribeVpcEndpointsResponse < Struct.new(
      nil,
      :vpc_endpoints,
      :vpc_endpoint_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier or name of the OpenSearch application to detach the data source from.</p>
    #   @return [String]
    # @!attribute data_source_arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    class DetachDataSourceRequest < Struct.new(
      nil,
      :id,
      :data_source_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the OpenSearch application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    # @!attribute data_source_arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    class DetachDataSourceResponse < Struct.new(
      nil,
      :id,
      :arn,
      :data_source_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration details for a data source that can be directly queried. </p>
    # @!attribute data_source_name
    #   <p> A unique, user-defined label to identify the data source within your OpenSearch
    #               Service environment. </p>
    #   @return [String]
    # @!attribute data_source_type
    #   <p> The supported Amazon Web Services service that is used as the source for direct
    #               queries in OpenSearch Service. </p>
    #   @return [Types::DirectQueryDataSourceType]
    # @!attribute description
    #   <p> A description that provides additional context and details about the data
    #               source.</p>
    #   @return [String]
    # @!attribute open_search_arns
    #   <p> A list of Amazon Resource Names (ARNs) for the OpenSearch collections that are
    #               associated with the direct query data source. </p>
    #   @return [Array<String>]
    # @!attribute data_source_arn
    #   <p> The unique, system-generated identifier that represents the data source.</p>
    #   @return [String]
    # @!attribute tag_list
    #   <p> A list of tags attached to a direct query data source.</p>
    #   @return [Array<Types::Tag>]
    class DirectQueryDataSource < Struct.new(
      nil,
      :data_source_name,
      :data_source_type,
      :description,
      :open_search_arns,
      :data_source_arn,
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The type of data source that is used for direct queries. This is a supported Amazon Web Services service, such as CloudWatch Logs or Security Lake. </p>
    # @!attribute cloud_watch_log
    #   <p> Specifies CloudWatch Logs as a type of data source for direct queries. </p>
    #   @return [Types::CloudWatchDirectQueryDataSource]
    # @!attribute security_lake
    #   <p> Specifies Security Lake as a type of data source for direct queries. </p>
    #   @return [Types::SecurityLakeDirectQueryDataSource]
    # @!attribute prometheus
    #   <p> Specifies Prometheus as a type of data source for direct queries. </p>
    #   @return [Types::PrometheusDirectQueryDataSource]
    class DirectQueryDataSourceType < Struct.new(
      :cloud_watch_log,
      :security_lake,
      :prometheus,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CloudWatchLog < DirectQueryDataSourceType; end
      class SecurityLake < DirectQueryDataSourceType; end
      class Prometheus < DirectQueryDataSourceType; end
      class Unknown < DirectQueryDataSourceType; end
    end

    # <p>An error occured because the client wanted to access an unsupported operation.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class DisabledOperationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to the <code>DissociatePackage</code>
    #             operation.</p>
    # @!attribute package_id
    #   <p>Internal ID of the package to dissociate from the domain. Use
    #                   <code>ListPackagesForDomain</code> to find this value.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>Name of the domain to dissociate the package from.</p>
    #   @return [String]
    class DissociatePackageRequest < Struct.new(
      nil,
      :package_id,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the response returned by an <code>DissociatePackage</code>
    #             operation.</p>
    # @!attribute domain_package_details
    #   <p> Information about a package that has been dissociated from the domain.</p>
    #   @return [Types::DomainPackageDetails]
    class DissociatePackageResponse < Struct.new(
      nil,
      :domain_package_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_list
    #   <p>A list of package IDs to be dissociated from a domain.</p>
    #   @return [Array<String>]
    # @!attribute domain_name
    #   <p>The name of an OpenSearch Service domain. Domain names are unique across the domains
    #               owned by an account within an Amazon Web Services Region.</p>
    #   @return [String]
    class DissociatePackagesRequest < Struct.new(
      nil,
      :package_list,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_package_details_list
    #   <p>A list of package details for the packages that were dissociated from the
    #               domain.</p>
    #   @return [Array<Types::DomainPackageDetails>]
    class DissociatePackagesResponse < Struct.new(
      nil,
      :domain_package_details_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the configuration of an OpenSearch Service domain.</p>
    # @!attribute engine_version
    #   <p>The OpenSearch or Elasticsearch version that the domain is running.</p>
    #   @return [Types::VersionStatus]
    # @!attribute cluster_config
    #   <p>Container for the cluster configuration of a the domain.</p>
    #   @return [Types::ClusterConfigStatus]
    # @!attribute ebs_options
    #   <p>Container for EBS options configured for the domain.</p>
    #   @return [Types::EBSOptionsStatus]
    # @!attribute access_policies
    #   <p>Specifies the access policies for the domain.</p>
    #   @return [Types::AccessPoliciesStatus]
    # @!attribute ip_address_type
    #   <p>Choose either dual stack or IPv4 as your IP address type. Dual stack allows you to
    #               share domain resources across IPv4 and IPv6 address types, and is the recommended
    #               option. If you set your IP address type to dual stack, you can't change your address
    #               type later.</p>
    #   @return [Types::IPAddressTypeStatus]
    # @!attribute snapshot_options
    #   <p>DEPRECATED. Container for parameters required to configure automated snapshots of
    #               domain indexes.</p>
    #   @return [Types::SnapshotOptionsStatus]
    # @!attribute vpc_options
    #   <p>The current VPC options for the domain and the status of any updates to their
    #               configuration.</p>
    #   @return [Types::VPCDerivedInfoStatus]
    # @!attribute cognito_options
    #   <p>Container for Amazon Cognito options for the domain.</p>
    #   @return [Types::CognitoOptionsStatus]
    # @!attribute encryption_at_rest_options
    #   <p>Key-value pairs to enable encryption at rest.</p>
    #   @return [Types::EncryptionAtRestOptionsStatus]
    # @!attribute node_to_node_encryption_options
    #   <p>Whether node-to-node encryption is enabled or disabled.</p>
    #   @return [Types::NodeToNodeEncryptionOptionsStatus]
    # @!attribute advanced_options
    #   <p>Key-value pairs to specify advanced configuration options. For more information, see
    #                   <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options">Advanced options</a>.</p>
    #   @return [Types::AdvancedOptionsStatus]
    # @!attribute log_publishing_options
    #   <p>Key-value pairs to configure log publishing.</p>
    #   @return [Types::LogPublishingOptionsStatus]
    # @!attribute domain_endpoint_options
    #   <p>Additional options for the domain endpoint, such as whether to require HTTPS for all
    #               traffic.</p>
    #   @return [Types::DomainEndpointOptionsStatus]
    # @!attribute advanced_security_options
    #   <p>Container for fine-grained access control settings for the domain.</p>
    #   @return [Types::AdvancedSecurityOptionsStatus]
    # @!attribute identity_center_options
    #   <p>Configuration options for enabling and managing IAM Identity Center integration within
    #               a domain.</p>
    #   @return [Types::IdentityCenterOptionsStatus]
    # @!attribute auto_tune_options
    #   <p>Container for Auto-Tune settings for the domain.</p>
    #   @return [Types::AutoTuneOptionsStatus]
    # @!attribute change_progress_details
    #   <p>Container for information about the progress of an existing configuration
    #               change.</p>
    #   @return [Types::ChangeProgressDetails]
    # @!attribute off_peak_window_options
    #   <p>Container for off-peak window options for the domain.</p>
    #   @return [Types::OffPeakWindowOptionsStatus]
    # @!attribute software_update_options
    #   <p>Software update options for the domain.</p>
    #   @return [Types::SoftwareUpdateOptionsStatus]
    # @!attribute modifying_properties
    #   <p>Information about the domain properties that are currently being modified.</p>
    #   @return [Array<Types::ModifyingProperties>]
    # @!attribute aiml_options
    #   <p>Container for parameters required to enable all machine learning features.</p>
    #   @return [Types::AIMLOptionsStatus]
    # @!attribute deployment_strategy_options
    #   <p>Specifies <code>DeploymentStrategyOptions</code> for the domain.</p>
    #   @return [Types::DeploymentStrategyOptionsStatus]
    # @!attribute automated_snapshot_pause_options
    #   <p>Specifies <code>AutomatedSnapshotPauseOptions</code> for the domain.</p>
    #   @return [Types::AutomatedSnapshotPauseOptionsStatus]
    # @!attribute use_case
    #   <p>The use case configured for the domain.</p>
    #   @return [Types::UseCaseStatus]
    # @!attribute engine_mode
    #   <p>The engine mode configured for the domain.</p>
    #   @return [Types::EngineModeStatus]
    class DomainConfig < Struct.new(
      nil,
      :engine_version,
      :cluster_config,
      :ebs_options,
      :access_policies,
      :ip_address_type,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :advanced_options,
      :log_publishing_options,
      :domain_endpoint_options,
      :advanced_security_options,
      :identity_center_options,
      :auto_tune_options,
      :change_progress_details,
      :off_peak_window_options,
      :software_update_options,
      :modifying_properties,
      :aiml_options,
      :deployment_strategy_options,
      :automated_snapshot_pause_options,
      :use_case,
      :engine_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options to configure a custom endpoint for an OpenSearch Service domain.</p>
    # @!attribute enforce_https
    #   <p>True to require that all traffic to the domain arrive over HTTPS.</p>
    #   @return [Boolean]
    # @!attribute tls_security_policy
    #   <p>Specify the TLS security policy to apply to the HTTPS endpoint of the domain. The
    #               policy can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Policy-Min-TLS-1-0-2019-07:</b> TLS security
    #                       policy that supports TLS version 1.0 to TLS version 1.2</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Policy-Min-TLS-1-2-2019-07:</b> TLS security
    #                       policy that supports only TLS version 1.2</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Policy-Min-TLS-1-2-PFS-2023-10:</b> TLS security
    #                       policy that supports TLS version 1.2 to TLS version 1.3 with perfect forward
    #                       secrecy cipher suites</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Policy-Min-TLS-1-2-RFC9151-FIPS-2024-08:</b> TLS
    #                   security policy that supports TLS version 1.3 with FIPS</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute custom_endpoint_enabled
    #   <p>Whether to enable a custom endpoint for the domain.</p>
    #   @return [Boolean]
    # @!attribute custom_endpoint
    #   <p>The fully qualified URL for the custom endpoint.</p>
    #   @return [String]
    # @!attribute custom_endpoint_certificate_arn
    #   <p>The ARN for your security certificate, managed in Amazon Web Services Certificate
    #               Manager (ACM).</p>
    #   @return [String]
    class DomainEndpointOptions < Struct.new(
      nil,
      :enforce_https,
      :tls_security_policy,
      :custom_endpoint_enabled,
      :custom_endpoint,
      :custom_endpoint_certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configured endpoint options for a domain and their current status.</p>
    # @!attribute options
    #   <p>Options to configure the endpoint for a domain.</p>
    #   @return [Types::DomainEndpointOptions]
    # @!attribute status
    #   <p>The status of the endpoint options for a domain.</p>
    #   @return [Types::OptionStatus]
    class DomainEndpointOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an OpenSearch Service domain.</p>
    # @!attribute domain_name
    #   <p>Name of the domain.</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p>The type of search engine that the domain is running.<code>OpenSearch</code> for an
    #               OpenSearch engine, or <code>Elasticsearch</code> for a legacy Elasticsearch OSS
    #               engine.</p>
    #   @return [String]
    class DomainInfo < Struct.new(
      nil,
      :domain_name,
      :engine_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for information about an OpenSearch Service domain.</p>
    # @!attribute aws_domain_information
    #   <p>Information about an Amazon OpenSearch Service domain.</p>
    #   @return [Types::AWSDomainInformation]
    class DomainInformationContainer < Struct.new(
      nil,
      :aws_domain_information,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the domain maintenance details.</p>
    # @!attribute maintenance_id
    #   <p>The ID of the requested action.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The name of the action.</p>
    #   @return [String]
    # @!attribute node_id
    #   <p>The ID of the data node.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the action.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message for the action.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the action was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the action was updated.</p>
    #   @return [Time]
    class DomainMaintenanceDetails < Struct.new(
      nil,
      :maintenance_id,
      :domain_name,
      :action,
      :node_id,
      :status,
      :status_message,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for information about nodes on the domain.</p>
    # @!attribute node_id
    #   <p>The ID of the node.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>Indicates whether the nodes is a data, master, or UltraWarm node.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone of the node.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type information of the node.</p>
    #   @return [String]
    # @!attribute node_status
    #   <p>Indicates if the node is active or in standby.</p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>Indicates if the node has EBS or instance storage. </p>
    #   @return [String]
    # @!attribute storage_volume_type
    #   <p>If the nodes has EBS storage, indicates if the volume type is gp2 or gp3. Only
    #               applicable for data nodes. </p>
    #   @return [String]
    # @!attribute storage_size
    #   <p>The storage size of the node, in GiB.</p>
    #   @return [String]
    class DomainNodesStatus < Struct.new(
      nil,
      :node_id,
      :node_type,
      :availability_zone,
      :instance_type,
      :node_status,
      :storage_type,
      :storage_volume_type,
      :storage_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a package that is associated with a domain. For more information,
    #             see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html">Custom packages
    #                 for Amazon OpenSearch Service</a>.</p>
    # @!attribute package_id
    #   <p>Internal ID of the package.</p>
    #   @return [String]
    # @!attribute package_name
    #   <p>User-specified name of the package.</p>
    #   @return [String]
    # @!attribute package_type
    #   <p>The type of package.</p>
    #   @return [String]
    # @!attribute last_updated
    #   <p>Timestamp of the most recent update to the package association status.</p>
    #   @return [Time]
    # @!attribute domain_name
    #   <p>Name of the domain that the package is associated with.</p>
    #   @return [String]
    # @!attribute domain_package_status
    #   <p>State of the association.</p>
    #   @return [String]
    # @!attribute package_version
    #   <p>The current version of the package.</p>
    #   @return [String]
    # @!attribute prerequisite_package_id_list
    #   <p>A list of package IDs that must be associated with the domain before or with the
    #               package can be associated.</p>
    #   @return [Array<String>]
    # @!attribute reference_path
    #   <p>The relative path of the package on the OpenSearch Service cluster nodes. This is
    #       <code>synonym_path</code> when the package is for synonym files.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>Additional information if the package is in an error state. Null otherwise.</p>
    #   @return [Types::ErrorDetails]
    # @!attribute association_configuration
    #   <p>The configuration for associating a package with an Amazon OpenSearch Service
    #               domain.</p>
    #   @return [Types::PackageAssociationConfiguration]
    class DomainPackageDetails < Struct.new(
      nil,
      :package_id,
      :package_name,
      :package_type,
      :last_updated,
      :domain_name,
      :domain_package_status,
      :package_version,
      :prerequisite_package_id_list,
      :reference_path,
      :error_details,
      :association_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The current status of an OpenSearch Service domain.</p>
    # @!attribute domain_id
    #   <p>Unique identifier for the domain.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>Name of the domain. Domain names are unique across all domains owned by the same account
    #      within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the domain. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM identifiers
    #      </a> in the <i>Amazon Web Services Identity and Access Management User Guide</i>.</p>
    #   @return [String]
    # @!attribute created
    #   <p>Creation status of an OpenSearch Service domain. True if domain creation is complete. False
    #      if domain creation is still in progress.</p>
    #   @return [Boolean]
    # @!attribute deleted
    #   <p>Deletion status of an OpenSearch Service domain. True if domain deletion is complete. False
    #      if domain deletion is still in progress. Once deletion is complete, the status of the domain is
    #      no longer returned.</p>
    #   @return [Boolean]
    # @!attribute endpoint
    #   <p>Domain-specific endpoint used to submit index, search, and data upload requests to the
    #      domain.</p>
    #   @return [String]
    # @!attribute endpoint_v2
    #   <p>If <code>IPAddressType</code> to set to <code>dualstack</code>, a version 2 domain endpoint
    #      is provisioned. This endpoint functions like a normal endpoint, except that it works with both
    #      IPv4 and IPv6 IP addresses. Normal endpoints work only with IPv4 IP addresses. </p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>The key-value pair that exists if the OpenSearch Service domain uses VPC endpoints. For
    #      example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>IPv4 IP addresses</b> -
    #         <code>'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Dual stack IP addresses</b> -
    #         <code>'vpcv2':'vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.aos.us-east-1.on.aws'</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute domain_endpoint_v2_hosted_zone_id
    #   <p>The dual stack hosted zone ID for the domain. </p>
    #   @return [String]
    # @!attribute processing
    #   <p>The status of the domain configuration. True if OpenSearch Service is processing
    #      configuration changes. False if the configuration is active.</p>
    #   @return [Boolean]
    # @!attribute upgrade_processing
    #   <p>The status of a domain version upgrade to a new version of OpenSearch or
    #               Elasticsearch. True if OpenSearch Service is in the process of a version upgrade. False
    #               if the configuration is active.</p>
    #   @return [Boolean]
    # @!attribute engine_version
    #   <p>Version of OpenSearch or Elasticsearch that the domain is running, in the format
    #       <code>Elasticsearch_X.Y</code> or <code>OpenSearch_X.Y</code>.</p>
    #   @return [String]
    # @!attribute cluster_config
    #   <p>Container for the cluster configuration of the domain.</p>
    #   @return [Types::ClusterConfig]
    # @!attribute ebs_options
    #   <p>Container for EBS-based storage settings for the domain.</p>
    #   @return [Types::EBSOptions]
    # @!attribute access_policies
    #   <p>Identity and Access Management (IAM) policy document specifying the access policies for the
    #      domain.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The type of IP addresses supported by the endpoint for the domain.</p>
    #   @return [String]
    # @!attribute snapshot_options
    #   <p>DEPRECATED. Container for parameters required to configure automated snapshots of
    #               domain indexes.</p>
    #   @return [Types::SnapshotOptions]
    # @!attribute vpc_options
    #   <p>The VPC configuration for the domain.</p>
    #   @return [Types::VPCDerivedInfo]
    # @!attribute cognito_options
    #   <p>Key-value pairs to configure Amazon Cognito authentication for OpenSearch Dashboards.</p>
    #   @return [Types::CognitoOptions]
    # @!attribute encryption_at_rest_options
    #   <p>Encryption at rest settings for the domain.</p>
    #   @return [Types::EncryptionAtRestOptions]
    # @!attribute node_to_node_encryption_options
    #   <p>Whether node-to-node encryption is enabled or disabled.</p>
    #   @return [Types::NodeToNodeEncryptionOptions]
    # @!attribute advanced_options
    #   <p>Key-value pairs that specify advanced configuration options.</p>
    #   @return [Hash<String, String>]
    # @!attribute log_publishing_options
    #   <p>Log publishing options for the domain.</p>
    #   @return [Hash<String, Types::LogPublishingOption>]
    # @!attribute service_software_options
    #   <p>The current status of the domain's service software.</p>
    #   @return [Types::ServiceSoftwareOptions]
    # @!attribute domain_endpoint_options
    #   <p>Additional options for the domain endpoint, such as whether to require HTTPS for all
    #      traffic.</p>
    #   @return [Types::DomainEndpointOptions]
    # @!attribute advanced_security_options
    #   <p>Settings for fine-grained access control.</p>
    #   @return [Types::AdvancedSecurityOptions]
    # @!attribute identity_center_options
    #   <p>Configuration options for controlling IAM Identity Center integration within a
    #      domain.</p>
    #   @return [Types::IdentityCenterOptions]
    # @!attribute auto_tune_options
    #   <p>Auto-Tune settings for the domain.</p>
    #   @return [Types::AutoTuneOptionsOutput]
    # @!attribute change_progress_details
    #   <p>Information about a configuration change happening on the domain.</p>
    #   @return [Types::ChangeProgressDetails]
    # @!attribute off_peak_window_options
    #   <p>Options that specify a custom 10-hour window during which OpenSearch Service can perform
    #      configuration changes on the domain.</p>
    #   @return [Types::OffPeakWindowOptions]
    # @!attribute software_update_options
    #   <p>Service software update options for the domain.</p>
    #   @return [Types::SoftwareUpdateOptions]
    # @!attribute domain_processing_status
    #   <p>The status of any changes that are currently in progress for the domain.</p>
    #   @return [String]
    # @!attribute modifying_properties
    #   <p>Information about the domain properties that are currently being modified.</p>
    #   @return [Array<Types::ModifyingProperties>]
    # @!attribute aiml_options
    #   <p>Container for parameters required to enable all machine learning features.</p>
    #   @return [Types::AIMLOptionsOutput]
    # @!attribute deployment_strategy_options
    #   <p>The current status of the domain's deployment strategy options.</p>
    #   @return [Types::DeploymentStrategyOptions]
    # @!attribute automated_snapshot_pause_options
    #   <p>The current status of the domain's automated snapshot pause options.</p>
    #   @return [Types::AutomatedSnapshotPauseOptions]
    # @!attribute use_case
    #   <p>The primary use case for the domain.</p>
    #   @return [String]
    # @!attribute engine_mode
    #   <p>The engine mode for the domain.</p>
    #   @return [String]
    class DomainStatus < Struct.new(
      nil,
      :domain_id,
      :domain_name,
      :arn,
      :created,
      :deleted,
      :endpoint,
      :endpoint_v2,
      :endpoints,
      :domain_endpoint_v2_hosted_zone_id,
      :processing,
      :upgrade_processing,
      :engine_version,
      :cluster_config,
      :ebs_options,
      :access_policies,
      :ip_address_type,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :advanced_options,
      :log_publishing_options,
      :service_software_options,
      :domain_endpoint_options,
      :advanced_security_options,
      :identity_center_options,
      :auto_tune_options,
      :change_progress_details,
      :off_peak_window_options,
      :software_update_options,
      :domain_processing_status,
      :modifying_properties,
      :aiml_options,
      :deployment_strategy_options,
      :automated_snapshot_pause_options,
      :use_case,
      :engine_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the progress of a pre-upgrade dry run analysis.</p>
    # @!attribute dry_run_id
    #   <p>The unique identifier of the dry run.</p>
    #   @return [String]
    # @!attribute dry_run_status
    #   <p>The current status of the dry run.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The timestamp when the dry run was initiated.</p>
    #   @return [String]
    # @!attribute update_date
    #   <p>The timestamp when the dry run was last updated.</p>
    #   @return [String]
    # @!attribute validation_failures
    #   <p>The validation failures that occurred as a result of the dry run.</p>
    #   @return [Array<Types::ValidationFailure>]
    # @!attribute accepted_warnings
    #   <p>The list of advisory warning codes that were accepted for the configuration change.</p>
    #   @return [Array<String>]
    class DryRunProgressStatus < Struct.new(
      nil,
      :dry_run_id,
      :dry_run_status,
      :creation_date,
      :update_date,
      :validation_failures,
      :accepted_warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Results of a dry run performed in an update domain request.</p>
    # @!attribute deployment_type
    #   <p> Specifies the way in which OpenSearch Service will apply an update. Possible values
    #               are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Blue/Green</b> - The update requires a blue/green
    #                       deployment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DynamicUpdate</b> - No blue/green deployment
    #                       required</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Undetermined</b> - The domain is in the middle of
    #                       an update and can't predict the deployment type. Try again after the update is
    #                       complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>None</b> - The request doesn't include any
    #                       configuration changes.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>A message corresponding to the deployment type.</p>
    #   @return [String]
    class DryRunResults < Struct.new(
      nil,
      :deployment_type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The duration of a maintenance schedule. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html">Auto-Tune for Amazon OpenSearch Service</a>.</p>
    # @!attribute value
    #   <p>Integer to specify the value of a maintenance schedule duration.</p>
    #   @return [Integer]
    # @!attribute unit
    #   <p>The unit of measurement for the duration of a maintenance schedule.</p>
    #   @return [String]
    class Duration < Struct.new(
      nil,
      :value,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters required to enable EBS-based storage for an OpenSearch
    #             Service domain.</p>
    # @!attribute ebs_enabled
    #   <p>Indicates whether EBS volumes are attached to data nodes in an OpenSearch Service
    #               domain.</p>
    #   @return [Boolean]
    # @!attribute volume_type
    #   <p>Specifies the type of EBS volumes attached to data nodes.</p>
    #   @return [String]
    # @!attribute volume_size
    #   <p>Specifies the size (in GiB) of EBS volumes attached to data nodes.</p>
    #   @return [Integer]
    # @!attribute iops
    #   <p>Specifies the baseline input/output (I/O) performance of EBS volumes attached to data
    #               nodes. Applicable only for the <code>gp3</code> and provisioned IOPS EBS volume
    #               types.</p>
    #   @return [Integer]
    # @!attribute throughput
    #   <p>Specifies the throughput (in MiB/s) of the EBS volumes attached to data nodes.
    #               Applicable only for the <code>gp3</code> volume type.</p>
    #   @return [Integer]
    class EBSOptions < Struct.new(
      nil,
      :ebs_enabled,
      :volume_type,
      :volume_size,
      :iops,
      :throughput,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the EBS options for the specified OpenSearch Service domain.</p>
    # @!attribute options
    #   <p>The configured EBS options for the specified domain.</p>
    #   @return [Types::EBSOptions]
    # @!attribute status
    #   <p>The status of the EBS options for the specified domain.</p>
    #   @return [Types::OptionStatus]
    class EBSOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies whether the domain should encrypt data at rest, and if so, the Key
    #             Management Service (KMS) key to use. Can only be used when creating a new domain or
    #             enabling encryption at rest for the first time on an existing domain. You can't modify
    #             this parameter after it's already been specified.</p>
    # @!attribute enabled
    #   <p>True to enable encryption at rest.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The KMS key ID. Takes the form
    #               <code>1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a</code>.</p>
    #   @return [String]
    # @!attribute encryption_mode
    #   <p>The type of encryption at rest applied to the domain's data. Valid values are
    #               <code>DISK</code> and <code>NATIVE</code>. <code>DISK</code> is the default and uses
    #               volume-level encryption. <code>NATIVE</code> uses engine-native, index-level encryption
    #               and requires encryption at rest to be enabled and OpenSearch version 3.3 or later. After
    #               the mode is set to <code>NATIVE</code>, it can't be changed back to
    #               <code>DISK</code>.</p>
    #   @return [String]
    class EncryptionAtRestOptions < Struct.new(
      nil,
      :enabled,
      :kms_key_id,
      :encryption_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Status of the encryption at rest options for the specified OpenSearch Service
    #             domain.</p>
    # @!attribute options
    #   <p>Encryption at rest options for the specified domain.</p>
    #   @return [Types::EncryptionAtRestOptions]
    # @!attribute status
    #   <p>The status of the encryption at rest options for the specified domain.</p>
    #   @return [Types::OptionStatus]
    class EncryptionAtRestOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the engine mode for the domain.</p>
    # @!attribute options
    #   <p>The engine mode configured for the domain.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the engine mode for the domain.</p>
    #   @return [Types::OptionStatus]
    class EngineModeStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the active domain environment.</p>
    # @!attribute availability_zone_information
    #   <p> A list of <code>AvailabilityZoneInfo</code> for the domain.</p>
    #   @return [Array<Types::AvailabilityZoneInfo>]
    class EnvironmentInfo < Struct.new(
      nil,
      :availability_zone_information,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional information if the package is in an error state. Null otherwise.</p>
    # @!attribute error_type
    #   <p>The type of error that occurred.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class ErrorDetails < Struct.new(
      nil,
      :error_type,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options to filter the scope of saved objects to export during a migration.</p>
    # @!attribute types
    #   <p>A list of saved object types to include in the migration. Valid values include <code>dashboard</code>, <code>visualization</code>, <code>index-pattern</code>, <code>search</code>, and <code>query</code>.</p>
    #   @return [Array<String>]
    # @!attribute objects
    #   <p>A list of specific saved objects to include in the migration, identified by type and ID.</p>
    #   @return [Array<Types::SavedObjectIdentifier>]
    # @!attribute include_references_deep
    #   <p>Specifies whether to include all objects referenced by the exported objects, recursively.</p>
    #   @return [Boolean]
    class ExportOptions < Struct.new(
      nil,
      :types,
      :objects,
      :include_references_deep,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to limit results when describing inbound or outbound cross-cluster
    #             connections. You can specify multiple values per filter. A cross-cluster connection must
    #             match at least one of the specified values for it to be returned from an
    #             operation.</p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>One or more values for the filter.</p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the OpenSearch application to retrieve.</p>
    #   @return [String]
    class GetApplicationRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the OpenSearch application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the OpenSearch application.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint URL of the OpenSearch application.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the OpenSearch application. Possible values: <code>CREATING</code>,
    #       <code>UPDATING</code>, <code>DELETING</code>, <code>FAILED</code>, <code>ACTIVE</code>, and
    #       <code>DELETED</code>.</p>
    #   @return [String]
    # @!attribute iam_identity_center_options
    #   <p>The IAM Identity Center settings configured for the OpenSearch application.</p>
    #   @return [Types::IamIdentityCenterOptions]
    # @!attribute data_sources
    #   <p>The data sources associated with the OpenSearch application.</p>
    #   @return [Array<Types::DataSource>]
    # @!attribute app_configs
    #   <p>The configuration settings of the OpenSearch application.</p>
    #   @return [Array<Types::AppConfig>]
    # @!attribute created_at
    #   <p>The timestamp when the OpenSearch application was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of the last update to the OpenSearch application.</p>
    #   @return [Time]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the application's data at rest.</p>
    #   @return [String]
    class GetApplicationResponse < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :endpoint,
      :status,
      :iam_identity_center_options,
      :data_sources,
      :app_configs,
      :created_at,
      :last_updated_at,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>GetCapability</code> operation.</p>
    # @!attribute application_id
    #   <p>The unique identifier of the OpenSearch UI application.</p>
    #   @return [String]
    # @!attribute capability_name
    #   <p>The name of the capability to retrieve information about.</p>
    #   @return [String]
    class GetCapabilityRequest < Struct.new(
      nil,
      :application_id,
      :capability_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>GetCapability</code> request. Contains details about the capability.</p>
    # @!attribute capability_name
    #   <p>The name of the capability.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the OpenSearch UI application.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the capability. Possible values: <code>creating</code>, <code>create_failed</code>, <code>active</code>, <code>updating</code>, <code>update_failed</code>, <code>deleting</code>, <code>delete_failed</code>.</p>
    #   @return [String]
    # @!attribute capability_config
    #   <p>The configuration settings for the capability, including capability-specific settings such as AI configuration.</p>
    #   @return [Types::CapabilityExtendedResponseConfig]
    # @!attribute failures
    #   <p>A list of failures associated with the capability, if any. Each failure includes a reason and details about what went wrong.</p>
    #   @return [Array<Types::CapabilityFailure>]
    class GetCapabilityResponse < Struct.new(
      nil,
      :capability_name,
      :application_id,
      :status,
      :capability_config,
      :failures,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to <code>GetCompatibleVersions</code> operation.</p>
    # @!attribute domain_name
    #   <p>The name of an existing domain. Provide this parameter to limit the results to a single
    #      domain.</p>
    #   @return [String]
    class GetCompatibleVersionsRequest < Struct.new(
      nil,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the response returned by the <code>GetCompatibleVersions</code>
    #    operation.</p>
    # @!attribute compatible_versions
    #   <p>A map of OpenSearch or Elasticsearch versions and the versions you can upgrade them
    #      to.</p>
    #   @return [Array<Types::CompatibleVersionsMap>]
    class GetCompatibleVersionsResponse < Struct.new(
      nil,
      :compatible_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>GetDataSource</code> operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data source to get information about.</p>
    #   @return [String]
    class GetDataSourceRequest < Struct.new(
      nil,
      :domain_name,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>GetDataSource</code> operation.</p>
    # @!attribute data_source_type
    #   <p>The type of data source.</p>
    #   @return [Types::DataSourceType]
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the data source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source.</p>
    #   @return [String]
    class GetDataSourceResponse < Struct.new(
      nil,
      :data_source_type,
      :name,
      :description,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetDefaultApplicationSettingRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    class GetDefaultApplicationSettingResponse < Struct.new(
      nil,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_source_name
    #   <p> A unique, user-defined label that identifies the data source within your OpenSearch Service
    #      environment. </p>
    #   @return [String]
    class GetDirectQueryDataSourceRequest < Struct.new(
      nil,
      :data_source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_source_name
    #   <p> A unique, user-defined label to identify the data source within your OpenSearch Service
    #      environment. </p>
    #   @return [String]
    # @!attribute data_source_type
    #   <p> The supported Amazon Web Services service that is used as the source for direct queries in
    #      OpenSearch Service. </p>
    #   @return [Types::DirectQueryDataSourceType]
    # @!attribute description
    #   <p> A description that provides additional context and details about the data source. </p>
    #   @return [String]
    # @!attribute open_search_arns
    #   <p> A list of Amazon Resource Names (ARNs) for the OpenSearch collections that are associated
    #      with the direct query data source. </p>
    #   @return [Array<String>]
    # @!attribute data_source_access_policy
    #   <p> The IAM access policy document that defines the permissions for accessing the direct query data source. Returns the current policy configuration in JSON format, or null if no custom policy is configured. </p>
    #   @return [String]
    # @!attribute data_source_arn
    #   <p> The unique, system-generated identifier that represents the data source. </p>
    #   @return [String]
    class GetDirectQueryDataSourceResponse < Struct.new(
      nil,
      :data_source_name,
      :data_source_type,
      :description,
      :open_search_arns,
      :data_source_access_policy,
      :data_source_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>GetDomainMaintenanceStatus</code>
    #    operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute maintenance_id
    #   <p>The request ID of the maintenance action.</p>
    #   @return [String]
    class GetDomainMaintenanceStatusRequest < Struct.new(
      nil,
      :domain_name,
      :maintenance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>GetDomainMaintenanceStatus</code> request that information about the
    #    requested action.</p>
    # @!attribute status
    #   <p>The status of the maintenance action.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the maintenance action.</p>
    #   @return [String]
    # @!attribute node_id
    #   <p>The node ID of the maintenance action.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action name.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the action was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the action was updated.</p>
    #   @return [Time]
    class GetDomainMaintenanceStatusResponse < Struct.new(
      nil,
      :status,
      :status_message,
      :node_id,
      :action,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of an OpenSearch Service domain. Domain names are unique across the domains
    #               owned by an account within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the index to retrieve information about.</p>
    #   @return [String]
    class GetIndexRequest < Struct.new(
      nil,
      :domain_name,
      :index_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_schema
    #   <p>The JSON schema of the index including mappings, settings, and semantic enrichment configuration.</p>
    #   @return [JSON]
    class GetIndexResponse < Struct.new(
      nil,
      :index_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute migration_id
    #   <p>The unique identifier of the migration job to retrieve.</p>
    #   @return [String]
    class GetMigrationRequest < Struct.new(
      nil,
      :migration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute migration_id
    #   <p>The unique identifier of the migration job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the migration job. Valid values are <code>PENDING</code>, <code>IN_PROGRESS</code>, <code>SUCCEEDED</code>, and <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the OpenSearch application associated with the migration.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source configuration for the migration, including the data source ARN.</p>
    #   @return [Types::MigrationSource]
    # @!attribute exported_count
    #   <p>The number of saved objects exported from the source data source.</p>
    #   @return [Integer]
    # @!attribute imported_count
    #   <p>The number of saved objects successfully imported into the target workspace.</p>
    #   @return [Integer]
    # @!attribute error
    #   <p>Error details if the migration failed or completed with errors.</p>
    #   @return [Types::MigrationError]
    # @!attribute created_at
    #   <p>The date and time when the migration job was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the migration job was last updated.</p>
    #   @return [Time]
    class GetMigrationResponse < Struct.new(
      nil,
      :migration_id,
      :status,
      :application_id,
      :source,
      :exported_count,
      :imported_count,
      :error,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:exported_count] = 0 unless options.key?(:exported_count)
        options[:imported_count] = 0 unless options.key?(:imported_count)
        super
      end
    end

    # <p>Container for the request parameters to the <code>GetPackageVersionHistory</code>
    #    operation.</p>
    # @!attribute package_id
    #   <p>The unique identifier of the package.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #       <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>GetPackageVersionHistory</code> operation returns a
    #       <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent
    #       <code>GetPackageVersionHistory</code> operations, which returns results in the next page.
    #     </p>
    #   @return [String]
    class GetPackageVersionHistoryRequest < Struct.new(
      nil,
      :package_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for response returned by <code>GetPackageVersionHistory</code> operation.</p>
    # @!attribute package_id
    #   <p>The unique identifier of the package.</p>
    #   @return [String]
    # @!attribute package_version_history_list
    #   <p>A list of package versions, along with their creation time and commit message.</p>
    #   @return [Array<Types::PackageVersionHistory>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value of
    #       <code>nextToken</code> is a unique pagination token for each page. Send the request again using
    #      the returned token to retrieve the next page.</p>
    #   @return [String]
    class GetPackageVersionHistoryResponse < Struct.new(
      nil,
      :package_id,
      :package_version_history_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to the <code>GetUpgradeHistory</code> operation.</p>
    # @!attribute domain_name
    #   <p>The name of an existing domain.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #       <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>GetUpgradeHistory</code> operation returns a <code>nextToken</code>,
    #      you can include the returned <code>nextToken</code> in subsequent <code>GetUpgradeHistory</code>
    #      operations, which returns results in the next page.</p>
    #   @return [String]
    class GetUpgradeHistoryRequest < Struct.new(
      nil,
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the response returned by the <code>GetUpgradeHistory</code> operation.</p>
    # @!attribute upgrade_histories
    #   <p>A list of objects corresponding to each upgrade or upgrade eligibility check performed on a
    #      domain.</p>
    #   @return [Array<Types::UpgradeHistory>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value of
    #       <code>nextToken</code> is a unique pagination token for each page. Send the request again using
    #      the returned token to retrieve the next page.</p>
    #   @return [String]
    class GetUpgradeHistoryResponse < Struct.new(
      nil,
      :upgrade_histories,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to the <code>GetUpgradeStatus</code> operation.</p>
    # @!attribute domain_name
    #   <p>The domain of the domain to get upgrade status information for.</p>
    #   @return [String]
    class GetUpgradeStatusRequest < Struct.new(
      nil,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the response returned by the <code>GetUpgradeStatus</code> operation.</p>
    # @!attribute upgrade_step
    #   <p>One of three steps that an upgrade or upgrade eligibility check goes through.</p>
    #   @return [String]
    # @!attribute step_status
    #   <p>The status of the current step that an upgrade is on.</p>
    #   @return [String]
    # @!attribute upgrade_name
    #   <p>A string that describes the update.</p>
    #   @return [String]
    class GetUpgradeStatusResponse < Struct.new(
      nil,
      :upgrade_step,
      :step_status,
      :upgrade_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input parameters for configuring IAM identity federation settings.</p>
    # @!attribute enabled
    #   <p>Specifies whether IAM identity federation is enabled for the OpenSearch domain.</p>
    #   @return [Boolean]
    # @!attribute subject_key
    #   <p>The key in the SAML assertion that contains the user's subject identifier.</p>
    #   @return [String]
    # @!attribute roles_key
    #   <p>The key in the SAML assertion that contains the user's role information.</p>
    #   @return [String]
    class IAMFederationOptionsInput < Struct.new(
      nil,
      :enabled,
      :subject_key,
      :roles_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output parameters showing the current IAM identity federation configuration.</p>
    # @!attribute enabled
    #   <p>Indicates whether IAM identity federation is currently enabled for the domain.</p>
    #   @return [Boolean]
    # @!attribute subject_key
    #   <p>The configured key in the SAML assertion for the user's subject identifier.</p>
    #   @return [String]
    # @!attribute roles_key
    #   <p>The configured key in the SAML assertion for the user's role information.</p>
    #   @return [String]
    class IAMFederationOptionsOutput < Struct.new(
      nil,
      :enabled,
      :subject_key,
      :roles_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The IP address type status for the domain.</p>
    # @!attribute options
    #   <p>The IP address options for the domain.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Provides the current status of an entity.</p>
    #   @return [Types::OptionStatus]
    class IPAddressTypeStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for IAM Identity Center in an OpenSearch application.</p>
    # @!attribute enabled
    #   <p>Indicates whether IAM Identity Center is enabled for the OpenSearch application.</p>
    #   @return [Boolean]
    # @!attribute iam_identity_center_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    # @!attribute iam_role_for_identity_center_application_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role assigned to the IAM Identity Center
    #      application for the OpenSearch application.</p>
    #   @return [String]
    # @!attribute iam_identity_center_application_arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    class IamIdentityCenterOptions < Struct.new(
      nil,
      :enabled,
      :iam_identity_center_instance_arn,
      :iam_role_for_identity_center_application_arn,
      :iam_identity_center_application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for enabling and managing IAM Identity Center.</p>
    # @!attribute enabled
    #   <p>Specifies whether IAM Identity Center is enabled or disabled.</p>
    #   @return [Boolean]
    # @!attribute iam_identity_center_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    # @!attribute iam_role_for_identity_center_application_arn
    #   <p>The ARN of the IAM role associated with the IAM Identity Center application.</p>
    #   @return [String]
    class IamIdentityCenterOptionsInput < Struct.new(
      nil,
      :enabled,
      :iam_identity_center_instance_arn,
      :iam_role_for_identity_center_application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings container for integrating IAM Identity Center with OpenSearch UI applications,
    #    which enables enabling secure user authentication and access control across multiple data
    #    sources. This setup supports single sign-on (SSO) through IAM Identity Center, allowing
    #    centralized user management.</p>
    # @!attribute enabled_api_access
    #   <p>Indicates whether IAM Identity Center is enabled for the application.</p>
    #   @return [Boolean]
    # @!attribute identity_center_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Identity Center instance.</p>
    #   @return [String]
    # @!attribute identity_center_instance_region
    #   <p>The Region of the IAM Identity Center instance.</p>
    #   @return [String]
    # @!attribute subject_key
    #   <p>Specifies the attribute that contains the subject identifier (such as username, user ID, or
    #      email) in IAM Identity Center.</p>
    #   @return [String]
    # @!attribute roles_key
    #   <p>Specifies the attribute that contains the backend role identifier (such as group name or
    #      group ID) in IAM Identity Center.</p>
    #   @return [String]
    # @!attribute identity_center_application_arn
    #   <p>The ARN of the IAM Identity Center application that integrates with Amazon OpenSearch
    #      Service.</p>
    #   @return [String]
    # @!attribute identity_store_id
    #   <p>The identifier of the IAM Identity Store.</p>
    #   @return [String]
    class IdentityCenterOptions < Struct.new(
      nil,
      :enabled_api_access,
      :identity_center_instance_arn,
      :identity_center_instance_region,
      :subject_key,
      :roles_key,
      :identity_center_application_arn,
      :identity_store_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for enabling and managing IAM Identity Center.</p>
    # @!attribute enabled_api_access
    #   <p>Indicates whether IAM Identity Center is enabled for API access in Amazon OpenSearch
    #      Service.</p>
    #   @return [Boolean]
    # @!attribute identity_center_instance_arn
    #   <p>The ARN of the IAM Identity Center instance used to create an OpenSearch UI application that
    #      uses IAM Identity Center for authentication.</p>
    #   @return [String]
    # @!attribute identity_center_instance_region
    #   <p>The Region of the IAM Identity Center instance.</p>
    #   @return [String]
    # @!attribute subject_key
    #   <p>Specifies the attribute that contains the subject identifier (such as username, user ID, or
    #      email) in IAM Identity Center.</p>
    #   @return [String]
    # @!attribute roles_key
    #   <p>Specifies the attribute that contains the backend role identifier (such as group name or
    #      group ID) in IAM Identity Center.</p>
    #   @return [String]
    class IdentityCenterOptionsInput < Struct.new(
      nil,
      :enabled_api_access,
      :identity_center_instance_arn,
      :identity_center_instance_region,
      :subject_key,
      :roles_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of IAM Identity Center configuration settings for a domain.</p>
    # @!attribute options
    #   <p>Configuration settings for IAM Identity Center integration.</p>
    #   @return [Types::IdentityCenterOptions]
    # @!attribute status
    #   <p>The status of IAM Identity Center configuration settings for a domain.</p>
    #   @return [Types::OptionStatus]
    class IdentityCenterOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an inbound cross-cluster connection for Amazon OpenSearch Service. For more
    #    information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html">Cross-cluster search
    #     for Amazon OpenSearch Service</a>.</p>
    # @!attribute local_domain_info
    #   <p>Information about the source (local) domain.</p>
    #   @return [Types::DomainInformationContainer]
    # @!attribute remote_domain_info
    #   <p>Information about the destination (remote) domain.</p>
    #   @return [Types::DomainInformationContainer]
    # @!attribute connection_id
    #   <p>The unique identifier of the connection.</p>
    #   @return [String]
    # @!attribute connection_status
    #   <p>The current status of the connection.</p>
    #   @return [Types::InboundConnectionStatus]
    # @!attribute connection_mode
    #   <p>The connection mode.</p>
    #   @return [String]
    class InboundConnection < Struct.new(
      nil,
      :local_domain_info,
      :remote_domain_info,
      :connection_id,
      :connection_status,
      :connection_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of an inbound cross-cluster connection for OpenSearch Service.</p>
    # @!attribute status_code
    #   <p>The status code for the connection. Can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>PENDING_ACCEPTANCE</b> - Inbound connection is not yet
    #        accepted by the remote domain owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>APPROVED</b>: Inbound connection is pending acceptance by the
    #        remote domain owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PROVISIONING</b>: Inbound connection is being
    #        provisioned.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ACTIVE</b>: Inbound connection is active and ready to
    #        use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>REJECTING</b>: Inbound connection rejection is in
    #        process.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>REJECTED</b>: Inbound connection is rejected.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DELETING</b>: Inbound connection deletion is in
    #        progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DELETED</b>: Inbound connection is deleted and can no longer
    #        be used.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>Information about the connection.</p>
    #   @return [String]
    class InboundConnectionStatus < Struct.new(
      nil,
      :status_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an insight returned by the <code>ListInsights</code> operation. An insight
    #             is a notification about a domain event or recommendation that helps you optimize your
    #             Amazon OpenSearch Service domain.</p>
    # @!attribute insight_id
    #   <p>The unique identifier of the insight.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the insight.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the insight. Possible values are <code>EVENT</code> and
    #               <code>RECOMMENDATION</code>.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority level of the insight. Possible values are <code>CRITICAL</code>,
    #               <code>HIGH</code>, <code>MEDIUM</code>, and <code>LOW</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the insight. Possible values are <code>ACTIVE</code>,
    #               <code>RESOLVED</code>, and <code>DISMISSED</code>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp when the insight was created, in epoch milliseconds.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp when the insight was last updated, in epoch milliseconds.</p>
    #   @return [Time]
    # @!attribute is_experimental
    #   <p>Indicates whether the insight is experimental.</p>
    #   @return [Boolean]
    class Insight < Struct.new(
      nil,
      :insight_id,
      :display_name,
      :type,
      :priority,
      :status,
      :creation_time,
      :update_time,
      :is_experimental,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the entity for which to retrieve insights. An entity can be an Amazon
    #             OpenSearch Service domain or an Amazon Web Services account.</p>
    # @!attribute type
    #   <p>The type of the entity. Possible values are <code>Account</code> and
    #               <code>DomainName</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the entity. For <code>DomainName</code>, this is the domain name. For
    #               <code>Account</code>, this is the Amazon Web Services account ID.</p>
    #   @return [String]
    class InsightEntity < Struct.new(
      nil,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the entity for which to submit insight feedback. An entity represents an
    #             Amazon OpenSearch Service domain.</p>
    # @!attribute type
    #   <p>The type of the entity. Possible values are <code>DomainName</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the entity, such as a domain name.</p>
    #   @return [String]
    class InsightFeedbackEntity < Struct.new(
      nil,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>InsightFeedback</code> operation.</p>
    # @!attribute entity
    #   <p>The entity for which to submit insight feedback. Specifies the type and value of the
    #               entity, such as a domain name.</p>
    #   @return [Types::InsightFeedbackEntity]
    # @!attribute insight_id
    #   <p>The unique identifier of the insight for which to submit feedback.</p>
    #   @return [String]
    # @!attribute thumbs
    #   <p>The thumbs up or thumbs down feedback for the insight. Possible values are
    #               <code>Up</code> and <code>Down</code>.</p>
    #   @return [String]
    # @!attribute feedback_text
    #   <p>Optional text feedback providing additional details about the insight. Maximum length
    #               is 1000 characters.</p>
    #   @return [String]
    class InsightFeedbackRequest < Struct.new(
      nil,
      :entity,
      :insight_id,
      :thumbs,
      :feedback_text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of an <code>InsightFeedback</code> request. Contains the status of the
    #             feedback submission.</p>
    # @!attribute status
    #   <p>The status of the feedback submission. Possible values are <code>SUCCESS</code> and
    #               <code>ERROR</code>.</p>
    #   @return [String]
    class InsightFeedbackResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a field in the detailed view of an insight, returned by the
    #             <code>DescribeInsightDetails</code> operation.</p>
    # @!attribute name
    #   <p>The name of the insight field.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the insight field. Possible values are <code>text</code> and
    #               <code>metric</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the insight field.</p>
    #   @return [String]
    class InsightField < Struct.new(
      nil,
      :name,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the time range for filtering insights.</p>
    # @!attribute from
    #   <p>The start of the time range, in epoch milliseconds.</p>
    #   @return [Integer]
    # @!attribute to
    #   <p>The end of the time range, in epoch milliseconds.</p>
    #   @return [Integer]
    class InsightTimeRange < Struct.new(
      nil,
      :from,
      :to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Limits on the number of instances that can be created in OpenSearch Service for a given
    #    instance type.</p>
    # @!attribute minimum_instance_count
    #   <p>The maximum allowed number of instances.</p>
    #   @return [Integer]
    # @!attribute maximum_instance_count
    #   <p>The minimum allowed number of instances.</p>
    #   @return [Integer]
    class InstanceCountLimits < Struct.new(
      nil,
      :minimum_instance_count,
      :maximum_instance_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:minimum_instance_count] = 0 unless options.key?(:minimum_instance_count)
        options[:maximum_instance_count] = 0 unless options.key?(:maximum_instance_count)
        super
      end
    end

    # <p>Instance-related attributes that are available for a given instance type.</p>
    # @!attribute instance_count_limits
    #   <p>Limits on the number of instances that can be created for a given instance type.</p>
    #   @return [Types::InstanceCountLimits]
    class InstanceLimits < Struct.new(
      nil,
      :instance_count_limits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lists all instance types and available features for a given OpenSearch or Elasticsearch
    #    version.</p>
    # @!attribute instance_type
    #   <p>The instance type.</p>
    #   @return [String]
    # @!attribute encryption_enabled
    #   <p>Whether encryption at rest and node-to-node encryption are supported for the instance
    #      type.</p>
    #   @return [Boolean]
    # @!attribute cognito_enabled
    #   <p>Whether Amazon Cognito access is supported for the instance type.</p>
    #   @return [Boolean]
    # @!attribute app_logs_enabled
    #   <p>Whether logging is supported for the instance type.</p>
    #   @return [Boolean]
    # @!attribute advanced_security_enabled
    #   <p>Whether fine-grained access control is supported for the instance type.</p>
    #   @return [Boolean]
    # @!attribute warm_enabled
    #   <p>Whether UltraWarm is supported for the instance type.</p>
    #   @return [Boolean]
    # @!attribute instance_role
    #   <p>Whether the instance acts as a data node, a dedicated master node, or an UltraWarm
    #      node.</p>
    #   @return [Array<String>]
    # @!attribute availability_zones
    #   <p>The supported Availability Zones for the instance type.</p>
    #   @return [Array<String>]
    class InstanceTypeDetails < Struct.new(
      nil,
      :instance_type,
      :encryption_enabled,
      :cognito_enabled,
      :app_logs_enabled,
      :advanced_security_enabled,
      :warm_enabled,
      :instance_role,
      :availability_zones,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request processing failed because of an unknown error, exception, or internal failure.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class InternalException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request processing failed because you provided an invalid pagination token.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class InvalidPaginationTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception for trying to create or access a sub-resource that's either invalid or not supported.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class InvalidTypeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The JWT authentication and authorization configuration for an Amazon OpenSearch
    #             Service domain.</p>
    # @!attribute enabled
    #   <p>True to enable JWT authentication and authorization for a domain.</p>
    #   @return [Boolean]
    # @!attribute subject_key
    #   <p>Element of the JWT assertion to use for the user name.</p>
    #   @return [String]
    # @!attribute roles_key
    #   <p>Element of the JWT assertion to use for roles.</p>
    #   @return [String]
    # @!attribute jwks_url
    #   <p>The URL endpoint that hosts the JSON Web Key Set (JWKS) containing public keys used to verify JWT signatures.</p>
    #   @return [String]
    # @!attribute public_key
    #   <p>Element of the JWT assertion used by the cluster to verify JWT signatures.</p>
    #   @return [String]
    class JWTOptionsInput < Struct.new(
      nil,
      :enabled,
      :subject_key,
      :roles_key,
      :jwks_url,
      :public_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the JWT options configured for the domain.</p>
    # @!attribute enabled
    #   <p>True if JWT use is enabled.</p>
    #   @return [Boolean]
    # @!attribute subject_key
    #   <p>The key used for matching the JWT subject attribute.</p>
    #   @return [String]
    # @!attribute roles_key
    #   <p>The key used for matching the JWT roles attribute.</p>
    #   @return [String]
    # @!attribute jwks_url
    #   <p>The configured JWKS URL endpoint from which the cluster retrieves public keys to verify JWT requests.</p>
    #   @return [String]
    # @!attribute public_key
    #   <p>The key used to verify the signature of incoming JWT requests.</p>
    #   @return [String]
    class JWTOptionsOutput < Struct.new(
      nil,
      :enabled,
      :subject_key,
      :roles_key,
      :jwks_url,
      :public_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration parameters to enable access to the key store required by the
    #             package.</p>
    # @!attribute key_access_role_arn
    #   <p>Role ARN to access the KeyStore Key</p>
    #   @return [String]
    # @!attribute key_store_access_enabled
    #   <p>This indicates whether Key Store access is enabled </p>
    #   @return [Boolean]
    class KeyStoreAccessOption < Struct.new(
      nil,
      :key_access_role_arn,
      :key_store_access_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception for trying to create more than the allowed number of resources or sub-resources.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Limits for a given instance type and for each of its roles.</p>
    # @!attribute storage_types
    #   <p>Storage-related attributes that are available for a given instance type.</p>
    #   @return [Array<Types::StorageType>]
    # @!attribute instance_limits
    #   <p>The limits for a given instance type.</p>
    #   @return [Types::InstanceLimits]
    # @!attribute additional_limits
    #   <p>List of additional limits that are specific to a given instance type for each of its
    #               instance roles.</p>
    #   @return [Array<Types::AdditionalLimit>]
    class Limits < Struct.new(
      nil,
      :storage_types,
      :instance_limits,
      :additional_limits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute statuses
    #   <p>Filters the list of OpenSearch applications by status. Possible values:
    #                   <code>CREATING</code>, <code>UPDATING</code>, <code>DELETING</code>,
    #                   <code>FAILED</code>, <code>ACTIVE</code>, and <code>DELETED</code>.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return for a
    #               given request.</p>
    #   @return [Integer]
    class ListApplicationsRequest < Struct.new(
      nil,
      :next_token,
      :statuses,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_summaries
    #   <p>Summarizes OpenSearch applications, including ID, ARN, name, endpoint, status,
    #               creation time, and last update time.</p>
    #   @return [Array<Types::ApplicationSummary>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListApplicationsResponse < Struct.new(
      nil,
      :application_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier or name of the OpenSearch application to list attachments for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from a previous call to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default is 50.</p>
    #   @return [Integer]
    class ListDataSourceAttachmentsRequest < Struct.new(
      nil,
      :id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachments
    #   <p>A list of data source attachment summaries for the specified application.</p>
    #   @return [Array<Types::DataSourceAttachmentSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent call to retrieve the next set of results.</p>
    #   @return [String]
    class ListDataSourceAttachmentsResponse < Struct.new(
      nil,
      :attachments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>ListDataSources</code> operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    class ListDataSourcesRequest < Struct.new(
      nil,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>ListDataSources</code> operation.</p>
    # @!attribute data_sources
    #   <p>A list of data sources associated with specified domain.</p>
    #   @return [Array<Types::DataSourceDetails>]
    class ListDataSourcesResponse < Struct.new(
      nil,
      :data_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListDirectQueryDataSourcesRequest < Struct.new(
      nil,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute direct_query_data_sources
    #   <p> A list of the direct query data sources that are returned by the
    #                   <code>ListDirectQueryDataSources</code> API operation. </p>
    #   @return [Array<Types::DirectQueryDataSource>]
    class ListDirectQueryDataSourcesResponse < Struct.new(
      nil,
      :next_token,
      :direct_query_data_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>ListDomainMaintenances</code>
    #             operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The name of the action.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the action.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>ListDomainMaintenances</code> operation returns a
    #                   <code>nextToken</code>, include the returned <code>nextToken</code> in subsequent
    #                   <code>ListDomainMaintenances</code> operations, which returns results in the next
    #               page.</p>
    #   @return [String]
    class ListDomainMaintenancesRequest < Struct.new(
      nil,
      :domain_name,
      :action,
      :status,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>ListDomainMaintenances</code> request that contains information
    #             about the requested actions. </p>
    # @!attribute domain_maintenances
    #   <p>A list of the submitted maintenance actions.</p>
    #   @return [Array<Types::DomainMaintenanceDetails>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListDomainMaintenancesResponse < Struct.new(
      nil,
      :domain_maintenances,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>ListDomainNames</code> operation.</p>
    # @!attribute engine_type
    #   <p>Filters the output by domain engine type.</p>
    #   @return [String]
    class ListDomainNamesRequest < Struct.new(
      nil,
      :engine_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The results of a <code>ListDomainNames</code> operation. Contains the names of all
    #             domains owned by this account and their respective engine types.</p>
    # @!attribute domain_names
    #   <p>The names of all OpenSearch Service domains owned by the current user and their
    #               respective engine types.</p>
    #   @return [Array<Types::DomainInfo>]
    class ListDomainNamesResponse < Struct.new(
      nil,
      :domain_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to the <code>ListDomainsForPackage</code>
    #             operation.</p>
    # @!attribute package_id
    #   <p>The unique identifier of the package for which to list associated domains.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>ListDomainsForPackage</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListDomainsForPackage</code> operations, which returns results in the
    #               next page.</p>
    #   @return [String]
    class ListDomainsForPackageRequest < Struct.new(
      nil,
      :package_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the response parameters to the <code>ListDomainsForPackage</code>
    #             operation.</p>
    # @!attribute domain_package_details_list
    #   <p>Information about all domains associated with a package.</p>
    #   @return [Array<Types::DomainPackageDetails>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListDomainsForPackageResponse < Struct.new(
      nil,
      :domain_package_details_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>ListInsights</code> operation.</p>
    # @!attribute entity
    #   <p>The entity for which to list insights. Specifies the type and value of the entity,
    #               such as a domain name or Amazon Web Services account ID.</p>
    #   @return [Types::InsightEntity]
    # @!attribute time_range
    #   <p>The time range for filtering insights, specified as epoch millisecond timestamps.</p>
    #   @return [Types::InsightTimeRange]
    # @!attribute sort_order
    #   <p>The sort order for the results. Possible values are <code>ASC</code> (ascending) and
    #               <code>DESC</code> (descending).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>NextToken</code> to get the next page of results. Valid values are 1 to
    #               500.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>ListInsights</code> operation returns a
    #               <code>NextToken</code>, include the returned <code>NextToken</code> in subsequent
    #               <code>ListInsights</code> operations to retrieve the next page of results.</p>
    #   @return [String]
    class ListInsightsRequest < Struct.new(
      nil,
      :entity,
      :time_range,
      :sort_order,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>ListInsights</code> request. Contains the list of insights and
    #             a pagination token for retrieving the next page of results.</p>
    # @!attribute insights
    #   <p>The list of insights returned for the specified entity.</p>
    #   @return [Array<Types::Insight>]
    # @!attribute next_token
    #   <p>When <code>NextToken</code> is returned, there are more results available. The value
    #               of <code>NextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListInsightsResponse < Struct.new(
      nil,
      :insights,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute engine_version
    #   <p>The version of OpenSearch or Elasticsearch, in the format Elasticsearch_X.Y or
    #               OpenSearch_X.Y. Defaults to the latest version of OpenSearch.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>ListInstanceTypeDetails</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListInstanceTypeDetails</code> operations, which returns results in the
    #               next page.</p>
    #   @return [String]
    # @!attribute retrieve_a_zs
    #   <p>An optional parameter that specifies the Availability Zones for the domain.</p>
    #   @return [Boolean]
    # @!attribute instance_type
    #   <p>An optional parameter that lists information for a given instance type.</p>
    #   @return [String]
    class ListInstanceTypeDetailsRequest < Struct.new(
      nil,
      :engine_version,
      :domain_name,
      :max_results,
      :next_token,
      :retrieve_a_zs,
      :instance_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_type_details
    #   <p>Lists all supported instance types and features for the given OpenSearch or
    #               Elasticsearch version.</p>
    #   @return [Array<Types::InstanceTypeDetails>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListInstanceTypeDetailsResponse < Struct.new(
      nil,
      :instance_type_details,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the OpenSearch application to list migrations for.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filters the results by migration status. Valid values are <code>PENDING</code>, <code>IN_PROGRESS</code>, <code>SUCCEEDED</code>, and <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from a previous call to retrieve the next set of results.</p>
    #   @return [String]
    class ListMigrationsRequest < Struct.new(
      nil,
      :application_id,
      :status,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute migrations
    #   <p>A list of migration job summaries for the specified application.</p>
    #   @return [Array<Types::MigrationSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent call to retrieve the next set of results.</p>
    #   @return [String]
    class ListMigrationsResponse < Struct.new(
      nil,
      :migrations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to the <code>ListPackagesForDomain</code>
    #             operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain for which you want to list associated packages.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>ListPackagesForDomain</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListPackagesForDomain</code> operations, which returns results in the
    #               next page.</p>
    #   @return [String]
    class ListPackagesForDomainRequest < Struct.new(
      nil,
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the response parameters to the <code>ListPackagesForDomain</code>
    #             operation.</p>
    # @!attribute domain_package_details_list
    #   <p>List of all packages associated with a domain.</p>
    #   @return [Array<Types::DomainPackageDetails>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListPackagesForDomainResponse < Struct.new(
      nil,
      :domain_package_details_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>ListScheduledActions</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListScheduledActions</code> operations, which returns results in the
    #               next page.</p>
    #   @return [String]
    class ListScheduledActionsRequest < Struct.new(
      nil,
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_actions
    #   <p>A list of actions that are scheduled for the domain.</p>
    #   @return [Array<Types::ScheduledAction>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListScheduledActionsResponse < Struct.new(
      nil,
      :scheduled_actions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>ListTags</code> operation.</p>
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) for the domain, data source, or application to view tags
    #               for.</p>
    #   @return [String]
    class ListTagsRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The results of a <code>ListTags</code> operation.</p>
    # @!attribute tag_list
    #   <p>List of resource tags associated with the specified domain, data source, or
    #               application.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsResponse < Struct.new(
      nil,
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to the <code>ListVersions</code>
    #             operation.</p>
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>ListVersions</code> operation returns a <code>nextToken</code>,
    #               you can include the returned <code>nextToken</code> in subsequent
    #                   <code>ListVersions</code> operations, which returns results in the next page.</p>
    #   @return [String]
    class ListVersionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters for response received from the <code>ListVersions</code>
    #             operation.</p>
    # @!attribute versions
    #   <p>A list of all versions of OpenSearch and Elasticsearch that Amazon OpenSearch Service
    #               supports.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListVersionsResponse < Struct.new(
      nil,
      :versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the OpenSearch Service domain to retrieve access information for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If your initial <code>ListVpcEndpointAccess</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListVpcEndpointAccess</code> operations, which returns results in the
    #               next page.</p>
    #   @return [String]
    class ListVpcEndpointAccessRequest < Struct.new(
      nil,
      :domain_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorized_principal_list
    #   <p>A list of <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html">IAM
    #                   principals</a> that can currently access the domain.</p>
    #   @return [Array<Types::AuthorizedPrincipal>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListVpcEndpointAccessResponse < Struct.new(
      nil,
      :authorized_principal_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain to list associated VPC endpoints for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If your initial <code>ListEndpointsForDomain</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListEndpointsForDomain</code> operations, which returns results in the
    #               next page.</p>
    #   @return [String]
    class ListVpcEndpointsForDomainRequest < Struct.new(
      nil,
      :domain_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint_summary_list
    #   <p>Information about each endpoint associated with the domain.</p>
    #   @return [Array<Types::VpcEndpointSummary>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListVpcEndpointsForDomainResponse < Struct.new(
      nil,
      :vpc_endpoint_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If your initial <code>ListVpcEndpoints</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListVpcEndpoints</code> operations, which returns results in the next
    #               page.</p>
    #   @return [String]
    class ListVpcEndpointsRequest < Struct.new(
      nil,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint_summary_list
    #   <p>Information about each endpoint.</p>
    #   @return [Array<Types::VpcEndpointSummary>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Send the request
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListVpcEndpointsResponse < Struct.new(
      nil,
      :vpc_endpoint_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies whether the Amazon OpenSearch Service domain publishes the OpenSearch
    #             application and slow logs to Amazon CloudWatch. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createdomain-configure-slow-logs.html">Monitoring OpenSearch logs with Amazon CloudWatch Logs</a>.</p>
    #          <note>
    #             <p>After you enable log publishing, you still have to enable the collection of slow
    #                 logs using the OpenSearch REST API.</p>
    #          </note>
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch Logs group to publish logs to.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Whether the log should be published.</p>
    #   @return [Boolean]
    class LogPublishingOption < Struct.new(
      nil,
      :cloud_watch_logs_log_group_arn,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configured log publishing options for the domain and their current status.</p>
    # @!attribute options
    #   <p>The log publishing options configured for the domain.</p>
    #   @return [Hash<String, Types::LogPublishingOption>]
    # @!attribute status
    #   <p>The status of the log publishing options for the domain.</p>
    #   @return [Types::OptionStatus]
    class LogPublishingOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Credentials for the master user for a domain.</p>
    # @!attribute master_user_arn
    #   <p>Amazon Resource Name (ARN) for the master user. Only specify if
    #                   <code>InternalUserDatabaseEnabled</code> is <code>false</code>.</p>
    #   @return [String]
    # @!attribute master_user_name
    #   <p>User name for the master user. Only specify if
    #                   <code>InternalUserDatabaseEnabled</code> is <code>true</code>.</p>
    #   @return [String]
    # @!attribute master_user_password
    #   <p>Password for the master user. Only specify if <code>InternalUserDatabaseEnabled</code>
    #               is <code>true</code>.</p>
    #   @return [String]
    class MasterUserOptions < Struct.new(
      nil,
      :master_user_arn,
      :master_user_name,
      :master_user_password,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error details for a migration that failed or completed with errors.</p>
    # @!attribute code
    #   <p>The error code identifying the type of failure.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A human-readable description of the error.</p>
    #   @return [String]
    class MigrationError < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration options for a saved objects migration job.</p>
    # @!attribute source
    #   <p>The data source from which to export saved objects.</p>
    #   @return [Types::MigrationSource]
    # @!attribute workspace
    #   <p>The target workspace configuration for importing saved objects. You can specify an existing workspace or request creation of a new workspace.</p>
    #   @return [Types::MigrationWorkspace]
    # @!attribute export_options
    #   <p>Options to filter the scope of saved objects to export from the source.</p>
    #   @return [Types::ExportOptions]
    # @!attribute conflict_resolution
    #   <p>The strategy for resolving conflicts when saved objects already exist in the target workspace. Valid values are <code>CREATE_NEW_COPIES</code>, which creates new objects with unique IDs, and <code>overwrite</code>, which replaces existing objects.</p>
    #   @return [String]
    class MigrationOptions < Struct.new(
      nil,
      :source,
      :workspace,
      :export_options,
      :conflict_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source configuration for a migration, specifying the data source from which to export saved objects.</p>
    # @!attribute datasource_arn
    #   <p>The Amazon Resource Name (ARN) of the data source to migrate saved objects from.</p>
    #   @return [String]
    class MigrationSource < Struct.new(
      nil,
      :datasource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a migration job, including its status and progress.</p>
    # @!attribute migration_id
    #   <p>The unique identifier of the migration job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the migration job.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the OpenSearch application associated with the migration.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source configuration for the migration.</p>
    #   @return [Types::MigrationSource]
    # @!attribute exported_count
    #   <p>The number of saved objects exported from the source data source.</p>
    #   @return [Integer]
    # @!attribute imported_count
    #   <p>The number of saved objects successfully imported into the target workspace.</p>
    #   @return [Integer]
    # @!attribute error
    #   <p>Error details if the migration failed or completed with errors.</p>
    #   @return [Types::MigrationError]
    # @!attribute created_at
    #   <p>The date and time when the migration job was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the migration job was last updated.</p>
    #   @return [Time]
    class MigrationSummary < Struct.new(
      nil,
      :migration_id,
      :status,
      :application_id,
      :source,
      :exported_count,
      :imported_count,
      :error,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:exported_count] = 0 unless options.key?(:exported_count)
        options[:imported_count] = 0 unless options.key?(:imported_count)
        super
      end
    end

    # <p>The target workspace configuration for a migration. You can specify an existing workspace by ID or request creation of a new workspace.</p>
    # @!attribute workspace_id
    #   <p>The unique identifier of an existing workspace to use as the migration target. Specify either this parameter or <code>createWorkspace</code>.</p>
    #   @return [String]
    # @!attribute create_workspace
    #   <p>Specifies whether to create a new workspace as the migration target. If <code>true</code>, you must also specify <code>name</code>.</p>
    #   @return [Boolean]
    # @!attribute name
    #   <p>The name of the new workspace to create. Required when <code>createWorkspace</code> is <code>true</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the new workspace to create.</p>
    #   @return [String]
    class MigrationWorkspace < Struct.new(
      nil,
      :workspace_id,
      :create_workspace,
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the domain properties that are currently being modified.</p>
    # @!attribute name
    #   <p>The name of the property that is currently being modified.</p>
    #   @return [String]
    # @!attribute active_value
    #   <p>The current value of the domain property that is being modified.</p>
    #   @return [String]
    # @!attribute pending_value
    #   <p>The value that the property that is currently being modified will eventually
    #               have.</p>
    #   @return [String]
    # @!attribute value_type
    #   <p>The type of value that is currently being modified. Properties can have two
    #               types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PLAIN_TEXT</code>: Contain direct values such as "1", "True", or
    #                       "c5.large.search".</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STRINGIFIED_JSON</code>: Contain content in JSON format, such as
    #                       {"Enabled":"True"}".</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ModifyingProperties < Struct.new(
      nil,
      :name,
      :active_value,
      :pending_value,
      :value_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for parameters required to enable the natural language query generation
    #             feature.</p>
    # @!attribute desired_state
    #   <p>The desired state of the natural language query generation feature. Valid values are
    #               ENABLED and DISABLED.</p>
    #   @return [String]
    class NaturalLanguageQueryGenerationOptionsInput < Struct.new(
      nil,
      :desired_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for parameters representing the state of the natural language query
    #             generation feature on the specified domain.</p>
    # @!attribute desired_state
    #   <p>The desired state of the natural language query generation feature. Valid values are
    #               ENABLED and DISABLED.</p>
    #   @return [String]
    # @!attribute current_state
    #   <p>The current state of the natural language query generation feature, indicating
    #               completion, in progress, or failure.</p>
    #   @return [String]
    class NaturalLanguageQueryGenerationOptionsOutput < Struct.new(
      nil,
      :desired_state,
      :current_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration options for defining the setup of any node type within the
    #             cluster.</p>
    # @!attribute enabled
    #   <p>A boolean value indicating whether a specific node type is active or inactive.</p>
    #   @return [Boolean]
    # @!attribute type
    #   <p>The instance type of a particular node within the cluster.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The number of nodes of a specific type within the cluster.</p>
    #   @return [Integer]
    class NodeConfig < Struct.new(
      nil,
      :enabled,
      :type,
      :count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for defining the node type within a cluster.</p>
    # @!attribute node_type
    #   <p>Defines the type of node, such as coordinating nodes.</p>
    #   @return [String]
    # @!attribute node_config
    #   <p>Configuration options for defining the setup of any node type.</p>
    #   @return [Types::NodeConfig]
    class NodeOption < Struct.new(
      nil,
      :node_type,
      :node_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Enables or disables node-to-node encryption. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ntn.html">Node-to-node encryption for Amazon OpenSearch Service</a>.</p>
    # @!attribute enabled
    #   <p>True to enable node-to-node encryption.</p>
    #   @return [Boolean]
    class NodeToNodeEncryptionOptions < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Status of the node-to-node encryption options for the specified domain.</p>
    # @!attribute options
    #   <p>The node-to-node encryption options for the specified domain.</p>
    #   @return [Types::NodeToNodeEncryptionOptions]
    # @!attribute status
    #   <p>The status of the node-to-node encryption options for the specified domain.</p>
    #   @return [Types::OptionStatus]
    class NodeToNodeEncryptionOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A custom 10-hour, low-traffic window during which OpenSearch Service can perform
    #             mandatory configuration changes on the domain. These actions can include scheduled
    #             service software updates and blue/green Auto-Tune enhancements. OpenSearch Service will
    #             schedule these actions during the window that you specify.</p>
    #          <p>If you don't specify a window start time, it defaults to 10:00 P.M. local time.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/off-peak.html">Defining off-peak
    #                 maintenance windows for Amazon OpenSearch Service</a>.</p>
    # @!attribute window_start_time
    #   <p>A custom start time for the off-peak window, in Coordinated Universal Time (UTC). The
    #               window length will always be 10 hours, so you can't specify an end time. For example, if
    #               you specify 11:00 P.M. UTC as a start time, the end time will automatically be set to
    #               9:00 A.M.</p>
    #   @return [Types::WindowStartTime]
    class OffPeakWindow < Struct.new(
      nil,
      :window_start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options for a domain's <a href="https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_OffPeakWindow.html">off-peak
    #                 window</a>, during which OpenSearch Service can perform mandatory configuration
    #             changes on the domain.</p>
    # @!attribute enabled
    #   <p>Whether to enable an off-peak window.</p>
    #            <p>This option is only available when modifying a domain created prior to February 16,
    #               2023, not when creating a new domain. All domains created after this date have the
    #               off-peak window enabled by default. You can't disable the off-peak window after it's
    #               enabled for a domain.</p>
    #   @return [Boolean]
    # @!attribute off_peak_window
    #   <p>Off-peak window settings for the domain.</p>
    #   @return [Types::OffPeakWindow]
    class OffPeakWindowOptions < Struct.new(
      nil,
      :enabled,
      :off_peak_window,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of <a href="https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_OffPeakWindow.html">off-peak
    #                 window</a> options for a domain.</p>
    # @!attribute options
    #   <p>The domain's off-peak window configuration.</p>
    #   @return [Types::OffPeakWindowOptions]
    # @!attribute status
    #   <p>The current status of off-peak window options.</p>
    #   @return [Types::OptionStatus]
    class OffPeakWindowOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the current status of an entity.</p>
    # @!attribute creation_date
    #   <p>The timestamp when the entity was created.</p>
    #   @return [Time]
    # @!attribute update_date
    #   <p>The timestamp of the last time the entity was updated.</p>
    #   @return [Time]
    # @!attribute update_version
    #   <p>The latest version of the entity.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The state of the entity.</p>
    #   @return [String]
    # @!attribute pending_deletion
    #   <p>Indicates whether the entity is being deleted.</p>
    #   @return [Boolean]
    class OptionStatus < Struct.new(
      nil,
      :creation_date,
      :update_date,
      :update_version,
      :state,
      :pending_deletion,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:update_version] = 0 unless options.key?(:update_version)
        super
      end
    end

    # <p>Specifies details about an outbound cross-cluster connection.</p>
    # @!attribute local_domain_info
    #   <p>Information about the source (local) domain.</p>
    #   @return [Types::DomainInformationContainer]
    # @!attribute remote_domain_info
    #   <p>Information about the destination (remote) domain.</p>
    #   @return [Types::DomainInformationContainer]
    # @!attribute connection_id
    #   <p>Unique identifier of the connection.</p>
    #   @return [String]
    # @!attribute connection_alias
    #   <p>Name of the connection.</p>
    #   @return [String]
    # @!attribute connection_status
    #   <p>Status of the connection.</p>
    #   @return [Types::OutboundConnectionStatus]
    # @!attribute connection_mode
    #   <p>The connection mode.</p>
    #   @return [String]
    # @!attribute connection_properties
    #   <p>Properties for the outbound connection.</p>
    #   @return [Types::ConnectionProperties]
    class OutboundConnection < Struct.new(
      nil,
      :local_domain_info,
      :remote_domain_info,
      :connection_id,
      :connection_alias,
      :connection_status,
      :connection_mode,
      :connection_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of an outbound cross-cluster connection.</p>
    # @!attribute status_code
    #   <p>The status code for the outbound connection. Can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>VALIDATING</b> - The outbound connection request
    #                       is being validated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>VALIDATION_FAILED</b> - Validation failed for the
    #                       connection request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PENDING_ACCEPTANCE</b>: Outbound connection
    #                       request is validated and is not yet accepted by the remote domain owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>APPROVED</b> - Outbound connection has been
    #                       approved by the remote domain owner for getting provisioned.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PROVISIONING</b> - Outbound connection request is
    #                       in process.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ACTIVE</b> - Outbound connection is active and
    #                       ready to use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>REJECTING</b> - Outbound connection rejection by
    #                       remote domain owner is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>REJECTED</b> - Outbound connection request is
    #                       rejected by remote domain owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DELETING</b> - Outbound connection deletion is in
    #                       progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DELETED</b> - Outbound connection is deleted and
    #                       can no longer be used.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>Verbose information for the outbound connection.</p>
    #   @return [String]
    class OutboundConnectionStatus < Struct.new(
      nil,
      :status_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for associating a package with a domain.</p>
    # @!attribute key_store_access_option
    #   <p>The configuration parameters to enable accessing the key store required by the
    #               package.</p>
    #   @return [Types::KeyStoreAccessOption]
    class PackageAssociationConfiguration < Struct.new(
      nil,
      :key_store_access_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration parameters for a package.</p>
    # @!attribute license_requirement
    #   <p>The license requirements for the package.</p>
    #   @return [String]
    # @!attribute license_filepath
    #   <p>The relative file path for the license associated with the package.</p>
    #   @return [String]
    # @!attribute configuration_requirement
    #   <p>The configuration requirements for the package.</p>
    #   @return [String]
    # @!attribute requires_restart_for_configuration_update
    #   <p>This indicates whether a B/G deployment is required for updating the configuration
    #               that the plugin is prerequisite for.</p>
    #   @return [Boolean]
    class PackageConfiguration < Struct.new(
      nil,
      :license_requirement,
      :license_filepath,
      :configuration_requirement,
      :requires_restart_for_configuration_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Basic information about a package.</p>
    # @!attribute package_id
    #   <p>The unique identifier of the package.</p>
    #   @return [String]
    # @!attribute package_name
    #   <p>The user-specified name of the package.</p>
    #   @return [String]
    # @!attribute package_type
    #   <p>The type of package.</p>
    #   @return [String]
    # @!attribute package_description
    #   <p>User-specified description of the package.</p>
    #   @return [String]
    # @!attribute package_status
    #   <p>The current status of the package. The available options are <code>AVAILABLE</code>,
    #                   <code>COPYING</code>, <code>COPY_FAILED</code>, <code>VALIDATNG</code>,
    #                   <code>VALIDATION_FAILED</code>, <code>DELETING</code>, and
    #                   <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the package was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>Date and time when the package was last updated.</p>
    #   @return [Time]
    # @!attribute available_package_version
    #   <p>The package version.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>Additional information if the package is in an error state. Null otherwise.</p>
    #   @return [Types::ErrorDetails]
    # @!attribute engine_version
    #   <p>Version of OpenSearch or Elasticsearch, in the format Elasticsearch_X.Y or
    #               OpenSearch_X.Y. Defaults to the latest version of OpenSearch.</p>
    #   @return [String]
    # @!attribute available_plugin_properties
    #   <p>If the package is a <code>ZIP-PLUGIN</code> package, additional information about
    #               plugin properties.</p>
    #   @return [Types::PluginProperties]
    # @!attribute available_package_configuration
    #   <p>This represents the available configuration parameters for the package.</p>
    #   @return [Types::PackageConfiguration]
    # @!attribute allow_listed_user_list
    #   <p> A list of users who are allowed to view and associate the package. This field is only
    #               visible to the owner of a package.</p>
    #   @return [Array<String>]
    # @!attribute package_owner
    #   <p>The owner of the package who is allowed to create and update a package and add users
    #               to the package scope.</p>
    #   @return [String]
    # @!attribute package_vending_options
    #   <p>Package Vending Options for a package.</p>
    #   @return [Types::PackageVendingOptions]
    # @!attribute package_encryption_options
    #   <p>Encryption options for a package.</p>
    #   @return [Types::PackageEncryptionOptions]
    class PackageDetails < Struct.new(
      nil,
      :package_id,
      :package_name,
      :package_type,
      :package_description,
      :package_status,
      :created_at,
      :last_updated_at,
      :available_package_version,
      :error_details,
      :engine_version,
      :available_plugin_properties,
      :available_package_configuration,
      :allow_listed_user_list,
      :package_owner,
      :package_vending_options,
      :package_encryption_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Details of a package that is associated with a domain.</p>
    # @!attribute package_id
    #   <p>Internal ID of the package that you want to associate with a domain.</p>
    #   @return [String]
    # @!attribute prerequisite_package_id_list
    #   <p>List of package IDs that must be linked to the domain before or simultaneously with
    #               the package association.</p>
    #   @return [Array<String>]
    # @!attribute association_configuration
    #   <p>The configuration parameters for associating the package with a domain.</p>
    #   @return [Types::PackageAssociationConfiguration]
    class PackageDetailsForAssociation < Struct.new(
      nil,
      :package_id,
      :prerequisite_package_id_list,
      :association_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Encryption options for a package.</p>
    # @!attribute kms_key_identifier
    #   <p>KMS key ID for encrypting the package.</p>
    #   @return [String]
    # @!attribute encryption_enabled
    #   <p>Whether encryption is enabled for the package.</p>
    #   @return [Boolean]
    class PackageEncryptionOptions < Struct.new(
      nil,
      :kms_key_identifier,
      :encryption_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 location to import the package from.</p>
    # @!attribute s3_bucket_name
    #   <p>The name of the Amazon S3 bucket containing the package.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>Key (file name) of the package.</p>
    #   @return [String]
    class PackageSource < Struct.new(
      nil,
      :s3_bucket_name,
      :s3_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration options for determining whether a package can be made available for use
    #             by other users.</p>
    # @!attribute vending_enabled
    #   <p>Indicates whether the package vending feature is enabled, allowing the package to be
    #               used by other users.</p>
    #   @return [Boolean]
    class PackageVendingOptions < Struct.new(
      nil,
      :vending_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a package version.</p>
    # @!attribute package_version
    #   <p>The package version.</p>
    #   @return [String]
    # @!attribute commit_message
    #   <p>A message associated with the package version when it was uploaded.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the package was created.</p>
    #   @return [Time]
    # @!attribute plugin_properties
    #   <p>Additional information about plugin properties if the package is a
    #                   <code>ZIP-PLUGIN</code> package.</p>
    #   @return [Types::PluginProperties]
    # @!attribute package_configuration
    #   <p>The configuration details for a specific version of a package.</p>
    #   @return [Types::PackageConfiguration]
    class PackageVersionHistory < Struct.new(
      nil,
      :package_version,
      :commit_message,
      :created_at,
      :plugin_properties,
      :package_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Basic information about the plugin.</p>
    # @!attribute name
    #   <p>The name of the plugin.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the plugin.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the plugin.</p>
    #   @return [String]
    # @!attribute class_name
    #   <p>The name of the class to load.</p>
    #   @return [String]
    # @!attribute uncompressed_size_in_bytes
    #   <p>The uncompressed size of the plugin.</p>
    #   @return [Integer]
    class PluginProperties < Struct.new(
      nil,
      :name,
      :description,
      :version,
      :class_name,
      :uncompressed_size_in_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Configuration details for a Prometheus data source that can be used for direct queries.
    #         </p>
    # @!attribute role_arn
    #   <p> The unique identifier of the IAM role that grants OpenSearch Service permission to access
    #               the specified data source. </p>
    #   @return [String]
    # @!attribute workspace_arn
    #   <p> The unique identifier of the Amazon Managed Prometheus Workspace that is associated with the specified
    #               data source. </p>
    #   @return [String]
    class PrometheusDirectQueryDataSource < Struct.new(
      nil,
      :role_arn,
      :workspace_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for request parameters to the <code>PurchaseReservedInstanceOffering</code>
    #             operation.</p>
    # @!attribute reserved_instance_offering_id
    #   <p>The ID of the Reserved Instance offering to purchase.</p>
    #   @return [String]
    # @!attribute reservation_name
    #   <p>A customer-specified identifier to track this reservation.</p>
    #   @return [String]
    # @!attribute instance_count
    #   <p>The number of OpenSearch instances to reserve.</p>
    #   @return [Integer]
    class PurchaseReservedInstanceOfferingRequest < Struct.new(
      nil,
      :reserved_instance_offering_id,
      :reservation_name,
      :instance_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>PurchaseReservedInstanceOffering</code>
    #             operation.</p>
    # @!attribute reserved_instance_id
    #   <p>The ID of the Reserved Instance offering that was purchased.</p>
    #   @return [String]
    # @!attribute reservation_name
    #   <p>The customer-specified identifier used to track this reservation.</p>
    #   @return [String]
    class PurchaseReservedInstanceOfferingResponse < Struct.new(
      nil,
      :reserved_instance_id,
      :reservation_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    # @!attribute set_as_default
    #   <p>Set to true to set the specified ARN as the default application. Set to false to clear
    #               the default application.</p>
    #   @return [Boolean]
    class PutDefaultApplicationSettingRequest < Struct.new(
      nil,
      :application_arn,
      :set_as_default,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    class PutDefaultApplicationSettingResponse < Struct.new(
      nil,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the specific price and frequency of a recurring charges for an OpenSearch
    #             Reserved Instance, or for a Reserved Instance offering.</p>
    # @!attribute recurring_charge_amount
    #   <p>The monetary amount of the recurring charge.</p>
    #   @return [Float]
    # @!attribute recurring_charge_frequency
    #   <p>The frequency of the recurring charge.</p>
    #   @return [String]
    class RecurringCharge < Struct.new(
      nil,
      :recurring_charge_amount,
      :recurring_charge_frequency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>RegisterCapability</code> operation.</p>
    # @!attribute application_id
    #   <p>The unique identifier of the OpenSearch UI application to register the capability for.</p>
    #   @return [String]
    # @!attribute capability_name
    #   <p>The name of the capability to register. Must be between 3 and 30 characters and contain only alphanumeric characters and hyphens. This identifies the type of capability being enabled for the application. For registering AI Assistant capability, use <code>ai-capability</code>
    #            </p>
    #   @return [String]
    # @!attribute capability_config
    #   <p>The configuration settings for the capability being registered. This includes capability-specific settings such as AI configuration.</p>
    #   @return [Types::CapabilityBaseRequestConfig]
    class RegisterCapabilityRequest < Struct.new(
      nil,
      :application_id,
      :capability_name,
      :capability_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>RegisterCapability</code> request. Contains details about the registered capability.</p>
    # @!attribute capability_name
    #   <p>The name of the registered capability.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the OpenSearch UI application.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the capability. Possible values: <code>creating</code>, <code>create_failed</code>, <code>active</code>, <code>updating</code>, <code>update_failed</code>, <code>deleting</code>, <code>delete_failed</code>.</p>
    #   @return [String]
    # @!attribute capability_config
    #   <p>The configuration settings for the registered capability.</p>
    #   @return [Types::CapabilityBaseResponseConfig]
    class RegisterCapabilityResponse < Struct.new(
      nil,
      :capability_name,
      :application_id,
      :status,
      :capability_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to the <code>RejectInboundConnection</code>
    #             operation.</p>
    # @!attribute connection_id
    #   <p>The unique identifier of the inbound connection to reject.</p>
    #   @return [String]
    class RejectInboundConnectionRequest < Struct.new(
      nil,
      :connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>RejectInboundConnection</code> operation.</p>
    # @!attribute connection
    #   <p>Contains details about the rejected inbound connection.</p>
    #   @return [Types::InboundConnection]
    class RejectInboundConnectionResponse < Struct.new(
      nil,
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to the <code>RemoveTags</code> operation.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the domain, data source, or application from which
    #               you want to delete the specified tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the domain, data source, or application.</p>
    #   @return [Array<String>]
    class RemoveTagsRequest < Struct.new(
      nil,
      :arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of an OpenSearch Reserved Instance.</p>
    # @!attribute reservation_name
    #   <p>The customer-specified identifier to track this reservation.</p>
    #   @return [String]
    # @!attribute reserved_instance_id
    #   <p>The unique identifier for the reservation.</p>
    #   @return [String]
    # @!attribute billing_subscription_id
    #   <p>The unique identifier of the billing subscription.</p>
    #   @return [Integer]
    # @!attribute reserved_instance_offering_id
    #   <p>The unique identifier of the Reserved Instance offering.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The OpenSearch instance type offered by theReserved Instance offering.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time when the reservation was purchased.</p>
    #   @return [Time]
    # @!attribute duration
    #   <p>The duration, in seconds, for which the OpenSearch instance is reserved.</p>
    #   @return [Integer]
    # @!attribute fixed_price
    #   <p>The upfront fixed charge you will paid to purchase the specific Reserved Instance
    #               offering.</p>
    #   @return [Float]
    # @!attribute usage_price
    #   <p>The hourly rate at which you're charged for the domain using this Reserved
    #               Instance.</p>
    #   @return [Float]
    # @!attribute currency_code
    #   <p>The currency code for the offering.</p>
    #   @return [String]
    # @!attribute instance_count
    #   <p>The number of OpenSearch instances that have been reserved.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The state of the Reserved Instance.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option as defined in the Reserved Instance offering.</p>
    #   @return [String]
    # @!attribute recurring_charges
    #   <p>The recurring charge to your account, regardless of whether you create any domains
    #               using the Reserved Instance offering.</p>
    #   @return [Array<Types::RecurringCharge>]
    class ReservedInstance < Struct.new(
      nil,
      :reservation_name,
      :reserved_instance_id,
      :billing_subscription_id,
      :reserved_instance_offering_id,
      :instance_type,
      :start_time,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :instance_count,
      :state,
      :payment_option,
      :recurring_charges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = 0 unless options.key?(:duration)
        options[:instance_count] = 0 unless options.key?(:instance_count)
        super
      end
    end

    # <p>Details of an OpenSearch Reserved Instance offering.</p>
    # @!attribute reserved_instance_offering_id
    #   <p>The unique identifier of the Reserved Instance offering.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The OpenSearch instance type offered by the Reserved Instance offering.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>The duration, in seconds, for which the offering will reserve the OpenSearch
    #               instance.</p>
    #   @return [Integer]
    # @!attribute fixed_price
    #   <p>The upfront fixed charge you will pay to purchase the specific Reserved Instance
    #               offering.</p>
    #   @return [Float]
    # @!attribute usage_price
    #   <p>The hourly rate at which you're charged for the domain using this Reserved
    #               Instance.</p>
    #   @return [Float]
    # @!attribute currency_code
    #   <p>The currency code for the Reserved Instance offering.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>Payment option for the Reserved Instance offering</p>
    #   @return [String]
    # @!attribute recurring_charges
    #   <p>The recurring charge to your account, regardless of whether you creates any domains
    #               using the offering.</p>
    #   @return [Array<Types::RecurringCharge>]
    class ReservedInstanceOffering < Struct.new(
      nil,
      :reserved_instance_offering_id,
      :instance_type,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :payment_option,
      :recurring_charges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>An exception for creating a resource that already exists.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception for accessing or deleting a resource that doesn't exist.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the OpenSearch Service domain.</p>
    #   @return [String]
    # @!attribute account
    #   <p>The account ID to revoke access from.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The service SP to revoke access from.</p>
    #   @return [String]
    # @!attribute service_options
    #   <p>The options for the service, including the supported Regions for the endpoint
    #               access.</p>
    #   @return [Types::ServiceOptions]
    class RevokeVpcEndpointAccessRequest < Struct.new(
      nil,
      :domain_name,
      :account,
      :service,
      :service_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RevokeVpcEndpointAccessResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the rollback options for a service software update.</p>
    # @!attribute current_version
    #   <p>The current service software version on the domain.</p>
    #   @return [String]
    # @!attribute new_version
    #   <p>The service software version that the domain will roll back to.</p>
    #   @return [String]
    # @!attribute rollback_available
    #   <p>Whether a service software rollback is available for the domain.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>A description of the rollback status.</p>
    #   @return [String]
    class RollbackServiceSoftwareOptions < Struct.new(
      nil,
      :current_version,
      :new_version,
      :rollback_available,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to the
    #                 <code>RollbackServiceSoftwareUpdate</code> operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain to roll back the service software update on.</p>
    #   @return [String]
    class RollbackServiceSoftwareUpdateRequest < Struct.new(
      nil,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the rolled-back service software update.</p>
    # @!attribute rollback_service_software_options
    #   <p>The rollback options for the service software update.</p>
    #   @return [Types::RollbackServiceSoftwareOptions]
    class RollbackServiceSoftwareUpdateResponse < Struct.new(
      nil,
      :rollback_service_software_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Amazon S3 Glue Data Catalog.</p>
    # @!attribute role_arn
    #   <p>>The Amazon Resource Name (ARN) for the S3 Glue Data Catalog.</p>
    #   @return [String]
    class S3GlueDataCatalog < Struct.new(
      nil,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options for enabling S3 vectors engine features on the specified domain.</p>
    # @!attribute enabled
    #   <p>Enables S3 vectors engine features.</p>
    #   @return [Boolean]
    class S3VectorsEngine < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The SAML identity povider information.</p>
    # @!attribute metadata_content
    #   <p>The metadata of the SAML application, in XML format.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The unique entity ID of the application in the SAML identity provider.</p>
    #   @return [String]
    class SAMLIdp < Struct.new(
      nil,
      :metadata_content,
      :entity_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The SAML authentication configuration for an Amazon OpenSearch Service domain.</p>
    # @!attribute enabled
    #   <p>True to enable SAML authentication for a domain.</p>
    #   @return [Boolean]
    # @!attribute idp
    #   <p>The SAML Identity Provider's information.</p>
    #   @return [Types::SAMLIdp]
    # @!attribute master_user_name
    #   <p>The SAML master user name, which is stored in the domain's internal user
    #               database.</p>
    #   @return [String]
    # @!attribute master_backend_role
    #   <p>The backend role that the SAML master user is mapped to.</p>
    #   @return [String]
    # @!attribute subject_key
    #   <p>Element of the SAML assertion to use for the user name. Default is
    #               <code>NameID</code>.</p>
    #   @return [String]
    # @!attribute roles_key
    #   <p>Element of the SAML assertion to use for backend roles. Default is
    #               <code>roles</code>.</p>
    #   @return [String]
    # @!attribute session_timeout_minutes
    #   <p>The duration, in minutes, after which a user session becomes inactive. Acceptable
    #               values are between 1 and 1440, and the default value is 60.</p>
    #   @return [Integer]
    class SAMLOptionsInput < Struct.new(
      nil,
      :enabled,
      :idp,
      :master_user_name,
      :master_backend_role,
      :subject_key,
      :roles_key,
      :session_timeout_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the SAML application configured for the domain.</p>
    # @!attribute enabled
    #   <p>True if SAML is enabled.</p>
    #   @return [Boolean]
    # @!attribute idp
    #   <p>Describes the SAML identity provider's information.</p>
    #   @return [Types::SAMLIdp]
    # @!attribute subject_key
    #   <p>The key used for matching the SAML subject attribute.</p>
    #   @return [String]
    # @!attribute roles_key
    #   <p>The key used for matching the SAML roles attribute.</p>
    #   @return [String]
    # @!attribute session_timeout_minutes
    #   <p>The duration, in minutes, after which a user session becomes inactive.</p>
    #   @return [Integer]
    class SAMLOptionsOutput < Struct.new(
      nil,
      :enabled,
      :idp,
      :subject_key,
      :roles_key,
      :session_timeout_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a specific saved object by its type and unique identifier.</p>
    # @!attribute type
    #   <p>The type of the saved object, such as <code>dashboard</code>, <code>visualization</code>, <code>index-pattern</code>, <code>search</code>, or <code>query</code>.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the saved object.</p>
    #   @return [String]
    class SavedObjectIdentifier < Struct.new(
      nil,
      :type,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a scheduled configuration change for an OpenSearch Service domain.
    #             This actions can be a <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html">service
    #                 software update</a> or a <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html#auto-tune-types">blue/green Auto-Tune enhancement</a>.</p>
    # @!attribute id
    #   <p>The unique identifier of the scheduled action.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of action that will be taken on the domain.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity of the action.</p>
    #   @return [String]
    # @!attribute scheduled_time
    #   <p>The time when the change is scheduled to happen.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>A description of the action to be taken.</p>
    #   @return [String]
    # @!attribute scheduled_by
    #   <p>Whether the action was scheduled manually (<code>CUSTOMER</code>, or by OpenSearch
    #               Service automatically (<code>SYSTEM</code>).</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the scheduled action.</p>
    #   @return [String]
    # @!attribute mandatory
    #   <p>Whether the action is required or optional.</p>
    #   @return [Boolean]
    # @!attribute cancellable
    #   <p>Whether or not the scheduled action is cancellable.</p>
    #   @return [Boolean]
    class ScheduledAction < Struct.new(
      nil,
      :id,
      :type,
      :severity,
      :scheduled_time,
      :description,
      :scheduled_by,
      :status,
      :mandatory,
      :cancellable,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies details about a scheduled Auto-Tune action. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html">Auto-Tune for Amazon OpenSearch Service</a>.</p>
    # @!attribute date
    #   <p>The date and time when the Auto-Tune action is scheduled for the domain.</p>
    #   @return [Time]
    # @!attribute action_type
    #   <p>The type of Auto-Tune action.</p>
    #   @return [String]
    # @!attribute action
    #   <p>A description of the Auto-Tune action.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity of the Auto-Tune action. Valid values are <code>LOW</code>,
    #                   <code>MEDIUM</code>, and <code>HIGH</code>.</p>
    #   @return [String]
    class ScheduledAutoTuneDetails < Struct.new(
      nil,
      :date,
      :action_type,
      :action,
      :severity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Configuration details for a Security Lake data source that can be used for direct
    #             queries. </p>
    # @!attribute role_arn
    #   <p> The unique identifier of the IAM role that grants OpenSearch Service permission to
    #               access the specified data source. </p>
    #   @return [String]
    class SecurityLakeDirectQueryDataSource < Struct.new(
      nil,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for serverless vector acceleration, which provides <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/gpu-acceleration-vector-index.html">GPU-accelerated</a> vector
    #          search capabilities for improved performance on vector workloads.</p>
    # @!attribute enabled
    #   <p>Specifies whether serverless vector acceleration is enabled for the domain.</p>
    #   @return [Boolean]
    class ServerlessVectorAcceleration < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options for the service, such as the supported Regions.</p>
    # @!attribute supported_regions
    #   <p>The list of supported Regions for the service.</p>
    #   @return [Array<String>]
    class ServiceOptions < Struct.new(
      nil,
      :supported_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception for when a request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The current status of the service software for an Amazon OpenSearch Service domain.
    #             For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html">Service
    #                 software updates in Amazon OpenSearch Service</a>.</p>
    # @!attribute current_version
    #   <p>The current service software version present on the domain.</p>
    #   @return [String]
    # @!attribute new_version
    #   <p>The new service software version, if one is available.</p>
    #   @return [String]
    # @!attribute update_available
    #   <p>True if you're able to update your service software version. False if you can't update
    #               your service software version.</p>
    #   @return [Boolean]
    # @!attribute cancellable
    #   <p> True if you're able to cancel your service software version update. False if you
    #               can't cancel your service software update.</p>
    #   @return [Boolean]
    # @!attribute update_status
    #   <p>The status of your service software update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the service software update status.</p>
    #   @return [String]
    # @!attribute automated_update_date
    #   <p>The timestamp, in Epoch time, until which you can manually request a service software
    #               update. After this date, we automatically update your service software.</p>
    #   @return [Time]
    # @!attribute optional_deployment
    #   <p>True if a service software is never automatically updated. False if a service software
    #               is automatically updated after the automated update date.</p>
    #   @return [Boolean]
    class ServiceSoftwareOptions < Struct.new(
      nil,
      :current_version,
      :new_version,
      :update_available,
      :cancellable,
      :update_status,
      :description,
      :automated_update_date,
      :optional_deployment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception for attempting to schedule a domain action during an unavailable time slot.</p>
    # @!attribute slot_suggestions
    #   <p>Alternate time slots during which OpenSearch Service has available capacity to schedule a domain action.</p>
    #   @return [Array<Integer>]
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class SlotNotAvailableException < Struct.new(
      nil,
      :slot_suggestions,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The time, in UTC format, when OpenSearch Service takes a daily automated snapshot of
    #             the specified domain. Default is <code>0</code> hours.</p>
    # @!attribute automated_snapshot_start_hour
    #   <p>The time, in UTC format, when OpenSearch Service takes a daily automated snapshot of
    #               the specified domain. Default is <code>0</code> hours.</p>
    #   @return [Integer]
    class SnapshotOptions < Struct.new(
      nil,
      :automated_snapshot_start_hour,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for information about a daily automated snapshot for an OpenSearch Service
    #             domain.</p>
    # @!attribute options
    #   <p>The daily snapshot options specified for the domain.</p>
    #   @return [Types::SnapshotOptions]
    # @!attribute status
    #   <p>The status of a daily automated snapshot.</p>
    #   @return [Types::OptionStatus]
    class SnapshotOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options for configuring service software updates for a domain.</p>
    # @!attribute auto_software_update_enabled
    #   <p>Whether automatic service software updates are enabled for the domain.</p>
    #   @return [Boolean]
    # @!attribute use_latest_service_software_for_blue_green
    #   <p>Whether the domain should use the latest service software version during a
    #           blue/green deployment. If enabled, the domain will automatically use the latest
    #           available service software when a blue/green deployment is triggered.</p>
    #   @return [Boolean]
    class SoftwareUpdateOptions < Struct.new(
      nil,
      :auto_software_update_enabled,
      :use_latest_service_software_for_blue_green,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the service software options for a domain.</p>
    # @!attribute options
    #   <p>The service software update options for a domain.</p>
    #   @return [Types::SoftwareUpdateOptions]
    # @!attribute status
    #   <p>The status of service software update options, including creation date and last
    #               updated date.</p>
    #   @return [Types::OptionStatus]
    class SoftwareUpdateOptionsStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>StartDomainMaintenance</code>
    #             operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The name of the action.</p>
    #   @return [String]
    # @!attribute node_id
    #   <p>The ID of the data node.</p>
    #   @return [String]
    class StartDomainMaintenanceRequest < Struct.new(
      nil,
      :domain_name,
      :action,
      :node_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>StartDomainMaintenance</code> request that information about the
    #             requested action. </p>
    # @!attribute maintenance_id
    #   <p>The request ID of requested action.</p>
    #   @return [String]
    class StartDomainMaintenanceResponse < Struct.new(
      nil,
      :maintenance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the OpenSearch application to migrate saved objects into.</p>
    #   @return [String]
    # @!attribute migration_options
    #   <p>The configuration options for the migration, including the source data source, target workspace, export filters, and conflict resolution strategy.</p>
    #   @return [Types::MigrationOptions]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon OpenSearch Service ignores the request but does not return an error.</p>
    #   @return [String]
    class StartMigrationRequest < Struct.new(
      nil,
      :application_id,
      :migration_options,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute migration_id
    #   <p>The unique identifier of the migration job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The initial status of the migration job. The status is <code>PENDING</code> when a migration is first created.</p>
    #   @return [String]
    class StartMigrationResponse < Struct.new(
      nil,
      :migration_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to the <code>StartServiceSoftwareUpdate</code>
    #             operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want to update to the latest service software.</p>
    #   @return [String]
    # @!attribute schedule_at
    #   <p>When to start the service software update.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NOW</code> - Immediately schedules the update to happen in the current
    #                       hour if there's capacity available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TIMESTAMP</code> - Lets you specify a custom date and time to apply the
    #                       update. If you specify this value, you must also provide a value for
    #                           <code>DesiredStartTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OFF_PEAK_WINDOW</code> - Marks the update to be picked up during an
    #                       upcoming off-peak window. There's no guarantee that the update will happen
    #                       during the next immediate window. Depending on capacity, it might happen in
    #                       subsequent days.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>NOW</code> if you don't specify a value for
    #                   <code>DesiredStartTime</code>, and <code>TIMESTAMP</code> if you do.</p>
    #   @return [String]
    # @!attribute desired_start_time
    #   <p>The Epoch timestamp when you want the service software update to start. You only need
    #               to specify this parameter if you set <code>ScheduleAt</code> to
    #               <code>TIMESTAMP</code>.</p>
    #   @return [Integer]
    class StartServiceSoftwareUpdateRequest < Struct.new(
      nil,
      :domain_name,
      :schedule_at,
      :desired_start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>StartServiceSoftwareUpdate</code> operation. Contains
    #             the status of the update.</p>
    # @!attribute service_software_options
    #   <p>The current status of the OpenSearch Service software update.</p>
    #   @return [Types::ServiceSoftwareOptions]
    class StartServiceSoftwareUpdateResponse < Struct.new(
      nil,
      :service_software_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of storage types for an Amazon OpenSearch Service domain that are available for
    #             a given intance type.</p>
    # @!attribute storage_type_name
    #   <p>The name of the storage type.</p>
    #   @return [String]
    # @!attribute storage_sub_type_name
    #   <p>The storage sub-type, such as <code>gp3</code> or <code>io1</code>.</p>
    #   @return [String]
    # @!attribute storage_type_limits
    #   <p>Limits that are applicable for the given storage type.</p>
    #   @return [Array<Types::StorageTypeLimit>]
    class StorageType < Struct.new(
      nil,
      :storage_type_name,
      :storage_sub_type_name,
      :storage_type_limits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Limits that are applicable for the given Amazon OpenSearch Service storage
    #             type.</p>
    # @!attribute limit_name
    #   <p> Name of storage limits that are applicable for the given storage type. If
    #                   <code>StorageType</code> is <code>ebs</code>, the following options are
    #               available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>MinimumVolumeSize</b> - Minimum volume size that
    #                       is available for the given storage type. Can be empty if not applicable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>MaximumVolumeSize</b> - Maximum volume size that
    #                       is available for the given storage type. Can be empty if not applicable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>MaximumIops</b> - Maximum amount of IOPS that is
    #                       available for the given the storage type. Can be empty if not applicable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>MinimumIops</b> - Minimum amount of IOPS that is
    #                       available for the given the storage type. Can be empty if not applicable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>MaximumThroughput</b> - Maximum amount of
    #                       throughput that is available for the given the storage type. Can be empty if not
    #                       applicable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>MinimumThroughput</b> - Minimum amount of
    #                       throughput that is available for the given the storage type. Can be empty if not
    #                       applicable.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute limit_values
    #   <p>The limit values.</p>
    #   @return [Array<String>]
    class StorageTypeLimit < Struct.new(
      nil,
      :limit_name,
      :limit_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tag (key-value pair) for an Amazon OpenSearch Service resource.</p>
    # @!attribute key
    #   <p>The tag key. Tag keys must be unique for the domain to which they are attached.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value assigned to the corresponding tag key. Tag values can be null and don't have
    #               to be unique in a tag set. For example, you can have a key value pair in a tag set of
    #                   <code>project : Trinity</code> and <code>cost-center : Trinity</code>
    #            </p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling. Reduce the frequency of your requests and try again.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the OpenSearch application to be updated.</p>
    #   @return [String]
    # @!attribute data_sources
    #   <p>The data sources to associate with the OpenSearch application.</p>
    #   @return [Array<Types::DataSource>]
    # @!attribute app_configs
    #   <p>The configuration settings to modify for the OpenSearch application.</p>
    #   @return [Array<Types::AppConfig>]
    # @!attribute iam_identity_center_options
    #   <p>Configuration settings for integrating IAM Identity Center with the OpenSearch
    #               application.</p>
    #   @return [Types::IamIdentityCenterOptionsInput]
    class UpdateApplicationRequest < Struct.new(
      nil,
      :id,
      :data_sources,
      :app_configs,
      :iam_identity_center_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the updated OpenSearch application.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the updated OpenSearch application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the domain. See <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/index.html">Identifiers for IAM Entities </a> in
    #                   <i>Using Amazon Web Services Identity and Access Management</i> for
    #               more information. </p>
    #   @return [String]
    # @!attribute data_sources
    #   <p>The data sources associated with the updated OpenSearch application.</p>
    #   @return [Array<Types::DataSource>]
    # @!attribute iam_identity_center_options
    #   <p>The IAM Identity Center configuration for the updated OpenSearch application.</p>
    #   @return [Types::IamIdentityCenterOptions]
    # @!attribute app_configs
    #   <p>The configuration settings for the updated OpenSearch application.</p>
    #   @return [Array<Types::AppConfig>]
    # @!attribute created_at
    #   <p>The timestamp when the OpenSearch application was originally created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the OpenSearch application was last updated.</p>
    #   @return [Time]
    class UpdateApplicationResponse < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :data_sources,
      :iam_identity_center_options,
      :app_configs,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>UpdateDataSource</code> operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data source to modify.</p>
    #   @return [String]
    # @!attribute data_source_type
    #   <p>The type of data source.</p>
    #   @return [Types::DataSourceType]
    # @!attribute description
    #   <p>A new description of the data source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source update.</p>
    #   @return [String]
    class UpdateDataSourceRequest < Struct.new(
      nil,
      :domain_name,
      :name,
      :data_source_type,
      :description,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of an <code>UpdateDataSource</code> operation.</p>
    # @!attribute message
    #   <p>A message associated with the updated data source.</p>
    #   @return [String]
    class UpdateDataSourceResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_source_name
    #   <p> A unique, user-defined label to identify the data source within your OpenSearch
    #               Service environment. </p>
    #   @return [String]
    # @!attribute data_source_type
    #   <p> The supported Amazon Web Services service that you want to use as the source for
    #               direct queries in OpenSearch Service. </p>
    #   @return [Types::DirectQueryDataSourceType]
    # @!attribute description
    #   <p> An optional text field for providing additional context and details about the data
    #               source. </p>
    #   @return [String]
    # @!attribute open_search_arns
    #   <p> An optional list of Amazon Resource Names (ARNs) for the OpenSearch collections that are
    #               associated with the direct query data source. This field is required for CloudWatchLogs
    #               and SecurityLake datasource types. </p>
    #   @return [Array<String>]
    # @!attribute data_source_access_policy
    #   <p> An optional IAM access policy document that defines the updated permissions for accessing the direct query data source.
    #               The policy document must be in valid JSON format and follow IAM policy syntax. If not specified, the existing access policy if present remains unchanged. </p>
    #   @return [String]
    class UpdateDirectQueryDataSourceRequest < Struct.new(
      nil,
      :data_source_name,
      :data_source_type,
      :description,
      :open_search_arns,
      :data_source_access_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_source_arn
    #   <p> The unique, system-generated identifier that represents the data source. </p>
    #   @return [String]
    class UpdateDirectQueryDataSourceResponse < Struct.new(
      nil,
      :data_source_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to the <code>UpdateDomain</code>
    #             operation.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you're updating.</p>
    #   @return [String]
    # @!attribute cluster_config
    #   <p>Changes that you want to make to the cluster configuration, such as the instance type
    #               and number of EC2 instances.</p>
    #   @return [Types::ClusterConfig]
    # @!attribute ebs_options
    #   <p>The type and size of the EBS volume to attach to instances in the domain.</p>
    #   @return [Types::EBSOptions]
    # @!attribute snapshot_options
    #   <p>Option to set the time, in UTC format, for the daily automated snapshot. Default value
    #               is <code>0</code> hours. </p>
    #   @return [Types::SnapshotOptions]
    # @!attribute vpc_options
    #   <p>Options to specify the subnets and security groups for a VPC endpoint. For more
    #               information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html">Launching your Amazon
    #                   OpenSearch Service domains using a VPC</a>.</p>
    #   @return [Types::VPCOptions]
    # @!attribute cognito_options
    #   <p>Key-value pairs to configure Amazon Cognito authentication for OpenSearch
    #               Dashboards.</p>
    #   @return [Types::CognitoOptions]
    # @!attribute advanced_options
    #   <p>Key-value pairs to specify advanced configuration options. The following key-value
    #               pairs are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"rest.action.multi.allow_explicit_index": "true" | "false"</code> - Note
    #                       the use of a string rather than a boolean. Specifies whether explicit references
    #                       to indexes are allowed inside the body of HTTP requests. If you want to
    #                       configure access policies for domain sub-resources, such as specific indexes and
    #                       domain APIs, you must disable this property. Default is true.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"indices.fielddata.cache.size": "80" </code> - Note the use of a string
    #                       rather than a boolean. Specifies the percentage of heap space allocated to field
    #                       data. Default is unbounded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"indices.query.bool.max_clause_count": "1024"</code> - Note the use of a
    #                       string rather than a boolean. Specifies the maximum number of clauses allowed in
    #                       a Lucene boolean query. Default is 1,024. Queries with more than the permitted
    #                       number of clauses result in a <code>TooManyClauses</code> error.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options">Advanced cluster parameters</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute access_policies
    #   <p>Identity and Access Management (IAM) access policy as a JSON-formatted string.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>Specify either dual stack or IPv4 as your IP address type. Dual stack allows you to
    #               share domain resources across IPv4 and IPv6 address types, and is the recommended
    #               option. If your IP address type is currently set to dual stack, you can't change it.
    #           </p>
    #   @return [String]
    # @!attribute log_publishing_options
    #   <p>Options to publish OpenSearch logs to Amazon CloudWatch Logs.</p>
    #   @return [Hash<String, Types::LogPublishingOption>]
    # @!attribute encryption_at_rest_options
    #   <p>Encryption at rest options for the domain.</p>
    #   @return [Types::EncryptionAtRestOptions]
    # @!attribute domain_endpoint_options
    #   <p>Additional options for the domain endpoint, such as whether to require HTTPS for all
    #               traffic.</p>
    #   @return [Types::DomainEndpointOptions]
    # @!attribute node_to_node_encryption_options
    #   <p>Node-to-node encryption options for the domain.</p>
    #   @return [Types::NodeToNodeEncryptionOptions]
    # @!attribute advanced_security_options
    #   <p>Options for fine-grained access control.</p>
    #   @return [Types::AdvancedSecurityOptionsInput]
    # @!attribute identity_center_options
    #   <p>Configuration settings for enabling and managing IAM Identity Center.</p>
    #   @return [Types::IdentityCenterOptionsInput]
    # @!attribute auto_tune_options
    #   <p>Options for Auto-Tune.</p>
    #   @return [Types::AutoTuneOptions]
    # @!attribute dry_run
    #   <p>This flag, when set to True, specifies whether the <code>UpdateDomain</code> request
    #               should return the results of a dry run analysis without actually applying the change. A
    #               dry run determines what type of deployment the update will cause.</p>
    #   @return [Boolean]
    # @!attribute dry_run_mode
    #   <p>The type of dry run to perform.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Basic</code> only returns the type of deployment (blue/green or dynamic)
    #                       that the update will cause.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Verbose</code> runs an additional check to validate the changes you're
    #                       making. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes#validation-check">Validating a domain update</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute off_peak_window_options
    #   <p>Off-peak window options for the domain.</p>
    #   @return [Types::OffPeakWindowOptions]
    # @!attribute software_update_options
    #   <p>Service software update options for the domain.</p>
    #   @return [Types::SoftwareUpdateOptions]
    # @!attribute aiml_options
    #   <p>Options for all machine learning features for the specified domain.</p>
    #   @return [Types::AIMLOptionsInput]
    # @!attribute deployment_strategy_options
    #   <p>Specifies the deployment strategy options for the domain.</p>
    #   @return [Types::DeploymentStrategyOptions]
    # @!attribute automated_snapshot_pause_options
    #   <p>Specifies the automated snapshot pause options for the domain.</p>
    #            <important>
    #               <p>Suspending snapshots reduces data protection. You cannot restore your domain to
    #                   points in time when snapshots are suspended. Use this feature only for short-term
    #                   operational needs such as migrations or maintenance windows.</p>
    #            </important>
    #            <p>Maximum suspension duration: 3 days.</p>
    #   @return [Types::AutomatedSnapshotPauseRequestOptions]
    # @!attribute use_case
    #   <p>The primary use case for the domain. For valid values, see <code>DomainUseCase</code>.</p>
    #   @return [String]
    # @!attribute engine_mode
    #   <p>The engine mode for the domain. The engine mode can't be changed after the domain is created. For valid values, see <code>EngineMode</code>.</p>
    #   @return [String]
    # @!attribute accepted_warnings
    #   <p>A list of advisory warning codes to accept for this configuration change. By default, any advisory warning blocks the change. Include the code of each warning you want to accept so the change can proceed. You can find warning codes in the <code>ValidationFailures</code> list returned by <code>DescribeDomainChangeProgress</code> and <code>DescribeDryRunProgress</code>. Critical validation failures cannot be accepted and always block the change. If you omit this parameter or pass an empty list, all warnings block the change. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes#validation-check">Validating a domain update</a>.</p>
    #   @return [Array<String>]
    class UpdateDomainConfigRequest < Struct.new(
      nil,
      :domain_name,
      :cluster_config,
      :ebs_options,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :advanced_options,
      :access_policies,
      :ip_address_type,
      :log_publishing_options,
      :encryption_at_rest_options,
      :domain_endpoint_options,
      :node_to_node_encryption_options,
      :advanced_security_options,
      :identity_center_options,
      :auto_tune_options,
      :dry_run,
      :dry_run_mode,
      :off_peak_window_options,
      :software_update_options,
      :aiml_options,
      :deployment_strategy_options,
      :automated_snapshot_pause_options,
      :use_case,
      :engine_mode,
      :accepted_warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The results of an <code>UpdateDomain</code> request. Contains the status of the domain
    #             being updated.</p>
    # @!attribute domain_config
    #   <p>The status of the updated domain.</p>
    #   @return [Types::DomainConfig]
    # @!attribute dry_run_results
    #   <p>Results of the dry run performed in the update domain request.</p>
    #   @return [Types::DryRunResults]
    # @!attribute dry_run_progress_status
    #   <p>The status of the dry run being performed on the domain, if any.</p>
    #   @return [Types::DryRunProgressStatus]
    class UpdateDomainConfigResponse < Struct.new(
      nil,
      :domain_config,
      :dry_run_results,
      :dry_run_progress_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of an OpenSearch Service domain. Domain names are unique across the domains
    #               owned by an account within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the index to update.</p>
    #   @return [String]
    # @!attribute index_schema
    #   <p>The updated JSON schema for the index including any changes to mappings, settings, and semantic enrichment configuration.</p>
    #   @return [JSON]
    class UpdateIndexRequest < Struct.new(
      nil,
      :domain_name,
      :index_name,
      :index_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the index update operation.</p>
    #   @return [String]
    class UpdateIndexResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for request parameters to the <code>UpdatePackage</code> operation.</p>
    # @!attribute package_id
    #   <p>The unique identifier for the package.</p>
    #   @return [String]
    # @!attribute package_source
    #   <p>Amazon S3 bucket and key for the package.</p>
    #   @return [Types::PackageSource]
    # @!attribute package_description
    #   <p>A new description of the package.</p>
    #   @return [String]
    # @!attribute commit_message
    #   <p>Commit message for the updated file, which is shown as part of
    #                   <code>GetPackageVersionHistoryResponse</code>.</p>
    #   @return [String]
    # @!attribute package_configuration
    #   <p>The updated configuration details for a package.</p>
    #   @return [Types::PackageConfiguration]
    # @!attribute package_encryption_options
    #   <p>Encryption options for a package.</p>
    #   @return [Types::PackageEncryptionOptions]
    class UpdatePackageRequest < Struct.new(
      nil,
      :package_id,
      :package_source,
      :package_description,
      :commit_message,
      :package_configuration,
      :package_encryption_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the response returned by the <code>UpdatePackage</code>
    #             operation.</p>
    # @!attribute package_details
    #   <p>Information about a package.</p>
    #   @return [Types::PackageDetails]
    class UpdatePackageResponse < Struct.new(
      nil,
      :package_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_id
    #   <p>ID of the package whose scope is being updated.</p>
    #   @return [String]
    # @!attribute operation
    #   <p> The operation to perform on the package scope (e.g., add/remove/override
    #               users).</p>
    #   @return [String]
    # @!attribute package_user_list
    #   <p> List of users to be added or removed from the package scope.</p>
    #   @return [Array<String>]
    class UpdatePackageScopeRequest < Struct.new(
      nil,
      :package_id,
      :operation,
      :package_user_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_id
    #   <p> ID of the package whose scope was updated.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The operation that was performed on the package scope.</p>
    #   @return [String]
    # @!attribute package_user_list
    #   <p> List of users who have access to the package after the scope update.</p>
    #   @return [Array<String>]
    class UpdatePackageScopeResponse < Struct.new(
      nil,
      :package_id,
      :operation,
      :package_user_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain to reschedule an action for.</p>
    #   @return [String]
    # @!attribute action_id
    #   <p>The unique identifier of the action to reschedule. To retrieve this ID, send a <a href="https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_ListScheduledActions.html">ListScheduledActions</a> request.</p>
    #   @return [String]
    # @!attribute action_type
    #   <p>The type of action to reschedule. Can be one of <code>SERVICE_SOFTWARE_UPDATE</code>,
    #                   <code>JVM_HEAP_SIZE_TUNING</code>, or <code>JVM_YOUNG_GEN_TUNING</code>. To retrieve
    #               this value, send a <a href="https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_ListScheduledActions.html">ListScheduledActions</a> request.</p>
    #   @return [String]
    # @!attribute schedule_at
    #   <p>When to schedule the action.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NOW</code> - Immediately schedules the update to happen in the current
    #                       hour if there's capacity available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TIMESTAMP</code> - Lets you specify a custom date and time to apply the
    #                       update. If you specify this value, you must also provide a value for
    #                           <code>DesiredStartTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OFF_PEAK_WINDOW</code> - Marks the action to be picked up during an
    #                       upcoming off-peak window. There's no guarantee that the change will be
    #                       implemented during the next immediate window. Depending on capacity, it might
    #                       happen in subsequent days.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute desired_start_time
    #   <p>The time to implement the change, in Coordinated Universal Time (UTC). Only specify
    #               this parameter if you set <code>ScheduleAt</code> to <code>TIMESTAMP</code>.</p>
    #   @return [Integer]
    class UpdateScheduledActionRequest < Struct.new(
      nil,
      :domain_name,
      :action_id,
      :action_type,
      :schedule_at,
      :desired_start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_action
    #   <p>Information about the rescheduled action.</p>
    #   @return [Types::ScheduledAction]
    class UpdateScheduledActionResponse < Struct.new(
      nil,
      :scheduled_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint_id
    #   <p>The unique identifier of the endpoint.</p>
    #   @return [String]
    # @!attribute vpc_options
    #   <p>The security groups and/or subnets to add, remove, or modify.</p>
    #   @return [Types::VPCOptions]
    class UpdateVpcEndpointRequest < Struct.new(
      nil,
      :vpc_endpoint_id,
      :vpc_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint
    #   <p>The endpoint to be updated.</p>
    #   @return [Types::VpcEndpoint]
    class UpdateVpcEndpointResponse < Struct.new(
      nil,
      :vpc_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the request parameters to the <code>UpgradeDomain</code>
    #             operation.</p>
    # @!attribute domain_name
    #   <p>Name of the OpenSearch Service domain that you want to upgrade.</p>
    #   @return [String]
    # @!attribute target_version
    #   <p>OpenSearch or Elasticsearch version to which you want to upgrade, in the format
    #               Opensearch_X.Y or Elasticsearch_X.Y.</p>
    #   @return [String]
    # @!attribute perform_check_only
    #   <p>When true, indicates that an upgrade eligibility check needs to be performed. Does not
    #               actually perform the upgrade.</p>
    #   @return [Boolean]
    # @!attribute advanced_options
    #   <p>Only supports the <code>override_main_response_version</code> parameter and not other
    #               advanced options. You can only include this option when upgrading to an OpenSearch
    #               version. Specifies whether the domain reports its version as 7.10 so that it continues
    #               to work with Elasticsearch OSS clients and plugins.</p>
    #   @return [Hash<String, String>]
    class UpgradeDomainRequest < Struct.new(
      nil,
      :domain_name,
      :target_version,
      :perform_check_only,
      :advanced_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the response returned by <code>UpgradeDomain</code> operation.</p>
    # @!attribute upgrade_id
    #   <p>The unique identifier of the domain upgrade.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The name of the domain that was upgraded.</p>
    #   @return [String]
    # @!attribute target_version
    #   <p>OpenSearch or Elasticsearch version that the domain was upgraded to.</p>
    #   @return [String]
    # @!attribute perform_check_only
    #   <p>When true, indicates that an upgrade eligibility check was performed.</p>
    #   @return [Boolean]
    # @!attribute advanced_options
    #   <p>The advanced options configuration for the domain.</p>
    #   @return [Hash<String, String>]
    # @!attribute change_progress_details
    #   <p>Container for information about a configuration change happening on a domain.</p>
    #   @return [Types::ChangeProgressDetails]
    class UpgradeDomainResponse < Struct.new(
      nil,
      :upgrade_id,
      :domain_name,
      :target_version,
      :perform_check_only,
      :advanced_options,
      :change_progress_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>History of the last 10 upgrades and upgrade eligibility checks for an Amazon
    #             OpenSearch Service domain.</p>
    # @!attribute upgrade_name
    #   <p>A string that describes the upgrade.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>UTC timestamp at which the upgrade API call was made, in the format
    #                   <code>yyyy-MM-ddTHH:mm:ssZ</code>.</p>
    #   @return [Time]
    # @!attribute upgrade_status
    #   <p> The current status of the upgrade. The status can take one of the following values: </p>
    #            <ul>
    #               <li>
    #                  <p>In Progress</p>
    #               </li>
    #               <li>
    #                  <p>Succeeded</p>
    #               </li>
    #               <li>
    #                  <p>Succeeded with Issues</p>
    #               </li>
    #               <li>
    #                  <p>Failed</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute steps_list
    #   <p>A list of each step performed as part of a specific upgrade or upgrade eligibility
    #               check.</p>
    #   @return [Array<Types::UpgradeStepItem>]
    class UpgradeHistory < Struct.new(
      nil,
      :upgrade_name,
      :start_timestamp,
      :upgrade_status,
      :steps_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single step of an upgrade or upgrade eligibility check workflow.</p>
    # @!attribute upgrade_step
    #   <p> One of three steps that an upgrade or upgrade eligibility check goes through: </p>
    #            <ul>
    #               <li>
    #                  <p>PreUpgradeCheck</p>
    #               </li>
    #               <li>
    #                  <p>Snapshot</p>
    #               </li>
    #               <li>
    #                  <p>Upgrade</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute upgrade_step_status
    #   <p> The current status of the upgrade. The status can take one of the following values: </p>
    #            <ul>
    #               <li>
    #                  <p>In Progress</p>
    #               </li>
    #               <li>
    #                  <p>Succeeded</p>
    #               </li>
    #               <li>
    #                  <p>Succeeded with Issues</p>
    #               </li>
    #               <li>
    #                  <p>Failed</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute issues
    #   <p>A list of strings containing detailed information about the errors encountered in a
    #               particular step.</p>
    #   @return [Array<String>]
    # @!attribute progress_percent
    #   <p>The floating point value representing the progress percentage of a particular
    #               step.</p>
    #   @return [Float]
    class UpgradeStepItem < Struct.new(
      nil,
      :upgrade_step,
      :upgrade_step_status,
      :issues,
      :progress_percent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the use case for the domain.</p>
    # @!attribute options
    #   <p>The use case configured for the domain.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the use case for the domain.</p>
    #   @return [Types::OptionStatus]
    class UseCaseStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the subnets and security groups for an Amazon OpenSearch Service
    #             domain provisioned within a virtual private cloud (VPC). For more information, see
    #                 <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html">Launching your Amazon OpenSearch Service domains using a VPC</a>. This
    #             information only exists if the domain was created with <code>VPCOptions</code>.</p>
    # @!attribute vpc_id
    #   <p>The ID for your VPC. Amazon VPC generates this value when you create a VPC.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs associated with the VPC endpoints for the domain.</p>
    #   @return [Array<String>]
    # @!attribute availability_zones
    #   <p>The list of Availability Zones associated with the VPC subnets.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The list of security group IDs associated with the VPC endpoints for the
    #               domain.</p>
    #   @return [Array<String>]
    # @!attribute egress_enabled
    #   <p>Indicates whether egress traffic from the domain is routed through the customer VPC.
    #               When <code>true</code>, outbound traffic flows through the VPC. When
    #               <code>false</code>, outbound traffic goes through the public internet.</p>
    #   @return [Boolean]
    class VPCDerivedInfo < Struct.new(
      nil,
      :vpc_id,
      :subnet_ids,
      :availability_zones,
      :security_group_ids,
      :egress_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Status of the VPC options for a specified domain.</p>
    # @!attribute options
    #   <p>The VPC options for the specified domain.</p>
    #   @return [Types::VPCDerivedInfo]
    # @!attribute status
    #   <p>The status of the VPC options for the specified domain.</p>
    #   @return [Types::OptionStatus]
    class VPCDerivedInfoStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options to specify the subnets and security groups for an Amazon OpenSearch Service
    #             VPC endpoint. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html">Launching your Amazon
    #                 OpenSearch Service domains using a VPC</a>.</p>
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs associated with the VPC endpoints for the domain. If your domain uses
    #           multiple Availability Zones, you need to provide two subnet IDs, one per zone. Otherwise, provide
    #           only one.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The list of security group IDs associated with the VPC endpoints for the domain. If
    #               you do not provide a security group ID, OpenSearch Service uses the default security
    #               group for the VPC.</p>
    #   @return [Array<String>]
    # @!attribute egress_enabled
    #   <p>Controls whether egress traffic from the domain is routed through the customer VPC.
    #               When <code>true</code>, outbound traffic flows through the VPC. When
    #               <code>false</code>, outbound traffic goes through the public internet.</p>
    #   @return [Boolean]
    class VPCOptions < Struct.new(
      nil,
      :subnet_ids,
      :security_group_ids,
      :egress_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception for accessing or deleting a resource that doesn't exist.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A validation failure that occurred as the result of a pre-update validation check
    #             (verbose dry run) on a domain.</p>
    # @!attribute code
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message corresponding to the failure.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity of the validation failure.</p>
    #   @return [String]
    class ValidationFailure < Struct.new(
      nil,
      :code,
      :message,
      :severity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the the OpenSearch or Elasticsearch version options for the specified
    #             Amazon OpenSearch Service domain.</p>
    # @!attribute options
    #   <p>The OpenSearch or Elasticsearch version for the specified domain.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the version options for the specified domain.</p>
    #   @return [Types::OptionStatus]
    class VersionStatus < Struct.new(
      nil,
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The connection endpoint for connecting to an Amazon OpenSearch Service domain through
    #             a proxy.</p>
    # @!attribute vpc_endpoint_id
    #   <p>The unique identifier of the endpoint.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_owner
    #   <p>The creator of the endpoint.</p>
    #   @return [String]
    # @!attribute domain_arn
    #   <p>The Amazon Resource Name (ARN) of the domain associated with the endpoint.</p>
    #   @return [String]
    # @!attribute vpc_options
    #   <p>Options to specify the subnets and security groups for an Amazon OpenSearch Service
    #               VPC endpoint.</p>
    #   @return [Types::VPCDerivedInfo]
    # @!attribute status
    #   <p>The current status of the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The connection endpoint ID for connecting to the domain.</p>
    #   @return [String]
    class VpcEndpoint < Struct.new(
      nil,
      :vpc_endpoint_id,
      :vpc_endpoint_owner,
      :domain_arn,
      :vpc_options,
      :status,
      :endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error information when attempting to describe an Amazon OpenSearch Service-managed VPC
    #             endpoint.</p>
    # @!attribute vpc_endpoint_id
    #   <p>The unique identifier of the endpoint.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The code associated with the error.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class VpcEndpointError < Struct.new(
      nil,
      :vpc_endpoint_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information for an Amazon OpenSearch Service-managed VPC endpoint.</p>
    # @!attribute vpc_endpoint_id
    #   <p>The unique identifier of the endpoint.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_owner
    #   <p>The creator of the endpoint.</p>
    #   @return [String]
    # @!attribute domain_arn
    #   <p>The Amazon Resource Name (ARN) of the domain associated with the endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the endpoint.</p>
    #   @return [String]
    class VpcEndpointSummary < Struct.new(
      nil,
      :vpc_endpoint_id,
      :vpc_endpoint_owner,
      :domain_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The desired start time for an <a href="https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_OffPeakWindow.html">off-peak
    #                 maintenance window</a>.</p>
    # @!attribute hours
    #   <p>The start hour of the window in Coordinated Universal Time (UTC), using 24-hour time.
    #               For example, <code>17</code> refers to 5:00 P.M. UTC.</p>
    #   @return [Integer]
    # @!attribute minutes
    #   <p>The start minute of the window, in UTC.</p>
    #   @return [Integer]
    class WindowStartTime < Struct.new(
      nil,
      :hours,
      :minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:hours] = 0 unless options.key?(:hours)
        options[:minutes] = 0 unless options.key?(:minutes)
        super
      end
    end

    # <p>Configuration for creating a new workspace when attaching a data source to an OpenSearch application. The workspace is created after the data source is successfully attached.</p>
    # @!attribute name
    #   <p>The name of the workspace to create. Must be between 1 and 40 characters and can contain alphanumeric characters, parentheses, brackets, hyphens, underscores, and spaces.</p>
    #   @return [String]
    # @!attribute workspace_type
    #   <p>The type of workspace to create, which determines the use-case features enabled for the workspace. Valid values are <code>OBSERVABILITY</code>, <code>SECURITY_ANALYTICS</code>, and <code>SEARCH</code>.</p>
    #   @return [String]
    class WorkspaceConfigurationInput < Struct.new(
      nil,
      :name,
      :workspace_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The zone awareness configuration for an Amazon OpenSearch Service domain.</p>
    # @!attribute availability_zone_count
    #   <p>If you enabled multiple Availability Zones, this value is the number of zones that you
    #               want the domain to use. Valid values are <code>2</code> and <code>3</code>. If your
    #               domain is provisioned within a VPC, this value be equal to number of subnets.</p>
    #   @return [Integer]
    class ZoneAwarenessConfig < Struct.new(
      nil,
      :availability_zone_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
