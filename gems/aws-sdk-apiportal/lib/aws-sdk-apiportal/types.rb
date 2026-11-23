# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::APIPortal
  module Types

    # A custom domain for the portal and the ACM certificate that covers it.
    #
    # @!attribute [rw] domain_name
    #   The custom domain name for the portal.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The ARN of the ACM certificate for the domain. The certificate must
    #   be in us-east-1, issued, not private, and must cover the domain
    #   name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ACMManaged AWS API Documentation
    #
    class ACMManaged < Struct.new(
      :domain_name,
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # You do not have permission to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the API an API page documents.
    #
    # @!attribute [rw] identifier_parts
    #   The resource, method, and path that identify the API.
    #   @return [Types::IdentifierParts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ApiId AWS API Documentation
    #
    class ApiId < Struct.new(
      :identifier_parts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters for listing API inventory items. All supplied filters must
    # match.
    #
    # @!attribute [rw] discovery_source
    #   The AWS service that is the SOURCE of discovered APIs — i.e. the
    #   front-door service type whose resources discovery crawls to find
    #   APIs. New source services may be added over time, so clients MUST
    #   treat any unrecognized value gracefully.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   Return only APIs served by this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ApiInventoryFilters AWS API Documentation
    #
    class ApiInventoryFilters < Struct.new(
      :discovery_source,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An API found by discovery.
    #
    # @!attribute [rw] method
    #   The HTTP method of the API.
    #   @return [String]
    #
    # @!attribute [rw] host
    #   A discovered API's front-door hostname (e.g. an ALB, CloudFront, or
    #   API Gateway DNS name), bounded by the DNS name limit (RFC 1035).
    #   Usually literal, but may contain placeholders: &lt;*&gt; - stands
    #   for one dot-separated part of the hostname. When 10 or more hosts
    #   differ only in that part, they fold into one, e.g. a.example.com,
    #   b.example.com, ... become "&lt;*&gt;.example.com". Deeper levels
    #   fold the same way ("&lt;*&gt;.&lt;*&gt;.example.com"). The
    #   registrable domain never folds. <ip> - an IP-literal host.</p> </ip>
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port the API listens on, from 0 to 65535.
    #   @return [Integer]
    #
    # @!attribute [rw] path
    #   The request path of the API.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID that owns the API.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource that serves the API, such as an API Gateway
    #   stage or a load balancer.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region the API was discovered in.
    #   @return [String]
    #
    # @!attribute [rw] discovery_source
    #   The AWS service that is the SOURCE of discovered APIs — i.e. the
    #   front-door service type whose resources discovery crawls to find
    #   APIs. New source services may be added over time, so clients MUST
    #   treat any unrecognized value gracefully.
    #   @return [String]
    #
    # @!attribute [rw] first_seen
    #   When discovery first observed the API.
    #   @return [Time]
    #
    # @!attribute [rw] last_seen
    #   When discovery most recently observed the API.
    #   @return [Time]
    #
    # @!attribute [rw] visibility
    #   Whether a discovered API is reachable publicly or only from within a
    #   private network.
    #   @return [String]
    #
    # @!attribute [rw] waf_status
    #   Whether a WAF web ACL is attached to the API's front-door service.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   Whether any account has created a ManagedApi for a discovered API,
    #   and for a managed API whether it is unused or no longer in the
    #   caller's organization. SHADOW - no account has created a ManagedApi
    #   for this item. MANAGED - some account in the caller's organization
    #   has created a ManagedApi for this item. MANAGED\_ZOMBIE - managed
    #   and unused: no traffic for at least the account's no-traffic
    #   window. The API is still reachable, so this clears once traffic
    #   resumes. MANAGED\_ORPHANED - managed, but the account hosting the
    #   API has left the caller's organization or been closed. The item is
    #   a last-known snapshot: it is no longer rediscovered, and its
    #   findings are not authorized for the caller. An organizational unit
    #   move is not a trigger.
    #
    #   MANAGED\_ZOMBIE and MANAGED\_ORPHANED add detail to a MANAGED item,
    #   so neither is returned for an item the caller does not manage, and
    #   MANAGED\_ORPHANED takes priority over MANAGED\_ZOMBIE. Both are
    #   derived per request rather than stored, so neither expires on its
    #   own.
    #   @return [String]
    #
    # @!attribute [rw] managed_by
    #   Who manages a MANAGED item, relative to the caller. Absent when the
    #   item is SHADOW. SELF - the caller account has created the
    #   ManagedApi. ORGANIZATION - some other account in the caller's
    #   organization has, but the caller has not.
    #   @return [String]
    #
    # @!attribute [rw] workloads
    #   AI protocols seen in this API's traffic, each listed at most once.
    #   Absent when none has been reported, which includes an account that
    #   has not enabled AI discovery.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ApiInventoryItem AWS API Documentation
    #
    class ApiInventoryItem < Struct.new(
      :method,
      :host,
      :port,
      :path,
      :account_id,
      :resource_arn,
      :region,
      :discovery_source,
      :first_seen,
      :last_seen,
      :visibility,
      :waf_status,
      :classification,
      :managed_by,
      :workloads)
      SENSITIVE = []
      include Aws::Structure
    end

    # The full details of an API found by discovery.
    #
    # @!attribute [rw] method
    #   The HTTP method of the API.
    #   @return [String]
    #
    # @!attribute [rw] host
    #   A discovered API's front-door hostname (e.g. an ALB, CloudFront, or
    #   API Gateway DNS name), bounded by the DNS name limit (RFC 1035).
    #   Usually literal, but may contain placeholders: &lt;*&gt; - stands
    #   for one dot-separated part of the hostname. When 10 or more hosts
    #   differ only in that part, they fold into one, e.g. a.example.com,
    #   b.example.com, ... become "&lt;*&gt;.example.com". Deeper levels
    #   fold the same way ("&lt;*&gt;.&lt;*&gt;.example.com"). The
    #   registrable domain never folds. <ip> - an IP-literal host.</p> </ip>
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port the API listens on, from 0 to 65535.
    #   @return [Integer]
    #
    # @!attribute [rw] path
    #   The request path of the API.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID that owns the API.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource that serves the API, such as an API Gateway
    #   stage or a load balancer.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region the API was discovered in.
    #   @return [String]
    #
    # @!attribute [rw] discovery_source
    #   The AWS service that is the SOURCE of discovered APIs — i.e. the
    #   front-door service type whose resources discovery crawls to find
    #   APIs. New source services may be added over time, so clients MUST
    #   treat any unrecognized value gracefully.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   Whether a discovered API is reachable publicly or only from within a
    #   private network.
    #   @return [String]
    #
    # @!attribute [rw] waf_status
    #   Whether a WAF web ACL is attached to the API's front-door service.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   Whether any account has created a ManagedApi for a discovered API,
    #   and for a managed API whether it is unused or no longer in the
    #   caller's organization. SHADOW - no account has created a ManagedApi
    #   for this item. MANAGED - some account in the caller's organization
    #   has created a ManagedApi for this item. MANAGED\_ZOMBIE - managed
    #   and unused: no traffic for at least the account's no-traffic
    #   window. The API is still reachable, so this clears once traffic
    #   resumes. MANAGED\_ORPHANED - managed, but the account hosting the
    #   API has left the caller's organization or been closed. The item is
    #   a last-known snapshot: it is no longer rediscovered, and its
    #   findings are not authorized for the caller. An organizational unit
    #   move is not a trigger.
    #
    #   MANAGED\_ZOMBIE and MANAGED\_ORPHANED add detail to a MANAGED item,
    #   so neither is returned for an item the caller does not manage, and
    #   MANAGED\_ORPHANED takes priority over MANAGED\_ZOMBIE. Both are
    #   derived per request rather than stored, so neither expires on its
    #   own.
    #   @return [String]
    #
    # @!attribute [rw] managed_by
    #   Who manages a MANAGED item, relative to the caller. Absent when the
    #   item is SHADOW. SELF - the caller account has created the
    #   ManagedApi. ORGANIZATION - some other account in the caller's
    #   organization has, but the caller has not.
    #   @return [String]
    #
    # @!attribute [rw] workloads
    #   AI protocols seen in this API's traffic, each listed at most once.
    #   Absent when none has been reported, which includes an account that
    #   has not enabled AI discovery.
    #   @return [Array<String>]
    #
    # @!attribute [rw] managed_api_id
    #   The identifier of the Managed API created from this API. Absent if
    #   there is none.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ApiInventoryItemDetail AWS API Documentation
    #
    class ApiInventoryItemDetail < Struct.new(
      :method,
      :host,
      :port,
      :path,
      :account_id,
      :resource_arn,
      :region,
      :discovery_source,
      :visibility,
      :waf_status,
      :classification,
      :managed_by,
      :workloads,
      :managed_api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exactly one of the members is set: `none` to use default display
    # content, or `overrides` to customize it. Modeled as a union so the
    # "exactly one" choice is enforced by type.
    #
    # @note ApiPageDisplayContent is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] none
    #   Use the content generated from the Managed API.
    #   @return [Types::None]
    #
    # @!attribute [rw] overrides
    #   Replace the generated content with your own.
    #   @return [Types::DisplayContentOverrides]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ApiPageDisplayContent AWS API Documentation
    #
    class ApiPageDisplayContent < Struct.new(
      :none,
      :overrides,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class None < ApiPageDisplayContent; end
      class Overrides < ApiPageDisplayContent; end
      class Unknown < ApiPageDisplayContent; end
    end

    # The content shown on an API page.
    #
    # @!attribute [rw] operation_name
    #   The operation name shown as the page title.
    #   @return [String]
    #
    # @!attribute [rw] api_url
    #   The invoke URL shown on the page and used by Try-It.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The Markdown body of the page. Absent while the page is
    #   `IN_PROGRESS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ApiPageDisplayContentResponse AWS API Documentation
    #
    class ApiPageDisplayContentResponse < Struct.new(
      :operation_name,
      :api_url,
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # How Managed APIs are selected for a product. With `CUSTOM`, you
    # associate APIs yourself. With `RULE_BASED`, the APIs that match
    # `ruleFilters` are selected.
    #
    # @!attribute [rw] api_selection_mode
    #   How a product's member Managed APIs are chosen. CUSTOM - the
    #   customer associates and disassociates Managed APIs explicitly.
    #   RULE\_BASED - membership is derived from ruleFilters: every Managed
    #   API in the account that matches is associated, and nothing else is.
    #   BatchAssociateManagedApi and BatchDisassociateManagedApi are
    #   rejected for these products.
    #
    #   Fixed at create time. UpdateProduct cannot change the mode of an
    #   existing product.
    #   @return [String]
    #
    # @!attribute [rw] rule_filters
    #   Required for RULE\_BASED, rejected for CUSTOM. Filters are combined
    #   with AND, the values within one filter with OR, and evaluated only
    #   over the account's Managed APIs. Replaced as a whole on update, not
    #   merged.
    #   @return [Array<Types::RuleFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ApiSelectionConfiguration AWS API Documentation
    #
    class ApiSelectionConfiguration < Struct.new(
      :api_selection_mode,
      :rule_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The attributes that identify an API.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource that serves the API.
    #   @return [String]
    #
    # @!attribute [rw] method
    #   The HTTP method of the API.
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   The host name the API is served on.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port the API listens on, from 0 to 65535.
    #   @return [Integer]
    #
    # @!attribute [rw] path
    #   The request path of the API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ApiSignature AWS API Documentation
    #
    class ApiSignature < Struct.new(
      :resource_arn,
      :method,
      :hostname,
      :port,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product to associate the Managed APIs with.
    #   @return [String]
    #
    # @!attribute [rw] managed_api_ids
    #   Bounded list of Managed API IDs, used as the request payload for
    #   batch associate/disassociate.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/AssociateManagedApisRequest AWS API Documentation
    #
    class AssociateManagedApisRequest < Struct.new(
      :product_id,
      :managed_api_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_items
    #   The Managed APIs that could not be processed. IDs not listed here
    #   succeeded.
    #   @return [Array<Types::FailedManagedApiItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/AssociateManagedApisResponse AWS API Documentation
    #
    class AssociateManagedApisResponse < Struct.new(
      :failed_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # How readers sign in to a portal.
    #
    # @!attribute [rw] authorization_config
    #   Exactly one of the members is set: `none` for no authorization, or
    #   `cognitoConfig` for Cognito. Modeled as a union so the "exactly one"
    #   choice is enforced by type.
    #   @return [Types::AuthorizationConfig]
    #
    # @!attribute [rw] fine_grained_access_control
    #   Whether access to individual products in the portal is controlled
    #   per reader.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/Authorization AWS API Documentation
    #
    class Authorization < Struct.new(
      :authorization_config,
      :fine_grained_access_control)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exactly one of the members is set: `none` for no authorization, or
    # `cognitoConfig` for Cognito. Modeled as a union so the "exactly one"
    # choice is enforced by type.
    #
    # @note AuthorizationConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AuthorizationConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AuthorizationConfig corresponding to the set member.
    #
    # @!attribute [rw] none
    #   The portal is public and readers do not sign in.
    #   @return [Types::None]
    #
    # @!attribute [rw] cognito_config
    #   Readers sign in through an Amazon Cognito user pool.
    #   @return [Types::CognitoConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/AuthorizationConfig AWS API Documentation
    #
    class AuthorizationConfig < Struct.new(
      :none,
      :cognito_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class None < AuthorizationConfig; end
      class CognitoConfig < AuthorizationConfig; end
      class Unknown < AuthorizationConfig; end
    end

    # The request is not valid. The message identifies the field or value
    # that failed validation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Cognito resources readers use to sign in to a portal.
    #
    # @!attribute [rw] user_pool_arn
    #   The ARN of the Cognito user pool.
    #   @return [String]
    #
    # @!attribute [rw] app_client_id
    #   The ID of the user pool app client the portal uses.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_domain
    #   The domain of the user pool's hosted sign-in pages.
    #   @return [String]
    #
    # @!attribute [rw] identity_pool_id
    #   The ID of the Cognito identity pool. Required only for fine-grained
    #   access control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CognitoConfig AWS API Documentation
    #
    class CognitoConfig < Struct.new(
      :user_pool_arn,
      :app_client_id,
      :user_pool_domain,
      :identity_pool_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request conflicts with the current state of the resource, for
    # example because another operation on it is still in progress.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_signature
    #   The resource, method, host, port, and path that identify the API.
    #   @return [Types::ApiSignature]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreateManagedApiRequest AWS API Documentation
    #
    class CreateManagedApiRequest < Struct.new(
      :api_signature,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_api_id
    #   The identifier of the Managed API.
    #   @return [String]
    #
    # @!attribute [rw] managed_api_arn
    #   The ARN of the Managed API.
    #   @return [String]
    #
    # @!attribute [rw] api_signature
    #   The attributes that identify the API.
    #   @return [Types::ApiSignature]
    #
    # @!attribute [rw] created_at
    #   When the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreateManagedApiResponse AWS API Documentation
    #
    class CreateManagedApiResponse < Struct.new(
      :managed_api_id,
      :managed_api_arn,
      :api_signature,
      :created_at,
      :updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_id
    #   The identifier of the portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreatePortalPreviewRequest AWS API Documentation
    #
    class CreatePortalPreviewRequest < Struct.new(
      :portal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_content
    #   The portal's display name, description, and theme.
    #   @return [Types::PortalContent]
    #
    # @!attribute [rw] endpoint_configuration
    #   Exactly one of the members is set: `none` for no custom domain, or
    #   `acmManaged` to bring a domain + ACM certificate. Modeled as a union
    #   so the "exactly one" choice is enforced by type.
    #   @return [Types::EndpointConfigurationRequest]
    #
    # @!attribute [rw] authorization
    #   How readers sign in to the portal, and whether fine-grained access
    #   control is on.
    #   @return [Types::Authorization]
    #
    # @!attribute [rw] included_product_arns
    #   The ARNs of the products the portal includes, up to 200.
    #   @return [Array<String>]
    #
    # @!attribute [rw] logo_uri
    #   The S3 location of the portal logo, in the form `s3://bucket/key`.
    #   @return [String]
    #
    # @!attribute [rw] rum_app_monitor_name
    #   The name of the CloudWatch RUM app monitor that collects reader
    #   telemetry for the portal.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreatePortalRequest AWS API Documentation
    #
    class CreatePortalRequest < Struct.new(
      :portal_content,
      :endpoint_configuration,
      :authorization,
      :included_product_arns,
      :logo_uri,
      :rum_app_monitor_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_id
    #   The identifier of the portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The ARN of the portal.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_configuration
    #   The domain configuration of the portal.
    #   @return [Types::EndpointConfigurationResponse]
    #
    # @!attribute [rw] authorization
    #   How readers sign in to the portal, and whether fine-grained access
    #   control is on.
    #   @return [Types::Authorization]
    #
    # @!attribute [rw] portal_content
    #   The portal's display name, description, and theme.
    #   @return [Types::PortalContent]
    #
    # @!attribute [rw] included_product_arns
    #   The ARNs of the products the portal includes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] publish_status
    #   The publish status of the portal. Absent if the portal has never
    #   been published.
    #   @return [String]
    #
    # @!attribute [rw] status_exception
    #   Failure detail attached to a Portal's publish/preview status: a
    #   typed reason plus an optional human-readable message.
    #   @return [Types::PortalStatusException]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] published_at
    #   When the portal was last published.
    #   @return [Time]
    #
    # @!attribute [rw] publish_description
    #   The description supplied with the most recent publish request.
    #   @return [String]
    #
    # @!attribute [rw] rum_app_monitor_name
    #   The name of the CloudWatch RUM app monitor that collects reader
    #   telemetry for the portal.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreatePortalResponse AWS API Documentation
    #
    class CreatePortalResponse < Struct.new(
      :portal_id,
      :portal_arn,
      :endpoint_configuration,
      :authorization,
      :portal_content,
      :included_product_arns,
      :publish_status,
      :status_exception,
      :updated_at,
      :published_at,
      :publish_description,
      :rum_app_monitor_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] managed_api_id
    #   The Managed API this page documents. It must already be associated
    #   with the product, and the page's API identifier is taken from the
    #   Managed API rather than supplied by the caller.
    #   @return [String]
    #
    # @!attribute [rw] display_content
    #   Exactly one of the members is set: `none` to use default display
    #   content, or `overrides` to customize it. Modeled as a union so the
    #   "exactly one" choice is enforced by type.
    #   @return [Types::ApiPageDisplayContent]
    #
    # @!attribute [rw] try_it_state
    #   Whether readers can call the API from the page with Try-It. Defaults
    #   to `DISABLED`. To enable it, the page's API URL must use HTTPS on a
    #   domain that supports Try-It.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreateProductApiPageRequest AWS API Documentation
    #
    class CreateProductApiPageRequest < Struct.new(
      :product_id,
      :managed_api_id,
      :display_content,
      :try_it_state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_api_page_id
    #   The identifier of the API page.
    #   @return [String]
    #
    # @!attribute [rw] product_api_page_arn
    #   The ARN of the API page.
    #   @return [String]
    #
    # @!attribute [rw] api_id
    #   The API the page documents.
    #   @return [Types::ApiId]
    #
    # @!attribute [rw] display_content
    #   The content shown on the page.
    #   @return [Types::ApiPageDisplayContentResponse]
    #
    # @!attribute [rw] try_it_state
    #   Whether Try-It is enabled on the page.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the page content: `IN_PROGRESS` while it is generated,
    #   then `AVAILABLE` or `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] status_exception
    #   Failure detail attached to a ProductApiPage's status: a typed
    #   reason plus an optional human-readable message.
    #   @return [Types::ProductApiPageStatusException]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreateProductApiPageResponse AWS API Documentation
    #
    class CreateProductApiPageResponse < Struct.new(
      :product_api_page_id,
      :product_api_page_arn,
      :api_id,
      :display_content,
      :try_it_state,
      :updated_at,
      :status,
      :status_exception,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] display_content
    #   The title and body of the page.
    #   @return [Types::DisplayContent]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreateProductPageRequest AWS API Documentation
    #
    class CreateProductPageRequest < Struct.new(
      :product_id,
      :display_content,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_page_id
    #   The identifier of the product page.
    #   @return [String]
    #
    # @!attribute [rw] product_page_arn
    #   The ARN of the product page.
    #   @return [String]
    #
    # @!attribute [rw] display_content
    #   The title and body of the page.
    #   @return [Types::DisplayContent]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreateProductPageResponse AWS API Documentation
    #
    class CreateProductPageResponse < Struct.new(
      :product_page_id,
      :product_page_arn,
      :display_content,
      :updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] display_name
    #   The name of the product, from 1 to 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the product, up to 1024 characters.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] api_selection_configuration
    #   How Managed APIs are selected for the product. The selection mode
    #   can't be changed after the product is created.
    #   @return [Types::ApiSelectionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreateProductRequest AWS API Documentation
    #
    class CreateProductRequest < Struct.new(
      :display_name,
      :description,
      :tags,
      :api_selection_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] product_arn
    #   The ARN of the product.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the product, from 1 to 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] display_order
    #   The order of the product's pages and API page sections in the
    #   portal navigation.
    #   @return [Types::DisplayOrder]
    #
    # @!attribute [rw] description
    #   A description of the product, up to 1024 characters.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] api_selection_configuration
    #   How Managed APIs are selected for the product.
    #   @return [Types::ApiSelectionConfiguration]
    #
    # @!attribute [rw] status
    #   Whether the product's member APIs match its
    #   apiSelectionConfiguration. ACTIVE - membership matches. The only
    #   status a CUSTOM product reports. IN\_PROGRESS - ruleFilters changed
    #   and membership is still being evaluated. FAILED - evaluation could
    #   not finish and membership is incomplete; failureReason says why.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   Reason a product's rules could not be fully applied, present only
    #   when `status` is `FAILED`. New reasons may be added over time, so
    #   clients MUST treat any unrecognized value as `UNKNOWN` and fall back
    #   to generic handling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreateProductResponse AWS API Documentation
    #
    class CreateProductResponse < Struct.new(
      :product_id,
      :product_arn,
      :display_name,
      :display_order,
      :description,
      :updated_at,
      :tags,
      :api_selection_configuration,
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The colors of a portal. Each value is a color string of up to 16
    # characters.
    #
    # @!attribute [rw] background_color
    #   The page background color.
    #   @return [String]
    #
    # @!attribute [rw] navigation_color
    #   The navigation pane color.
    #   @return [String]
    #
    # @!attribute [rw] header_color
    #   The header color.
    #   @return [String]
    #
    # @!attribute [rw] text_color
    #   The text color.
    #   @return [String]
    #
    # @!attribute [rw] accent_color
    #   The color of links, buttons, and other highlighted elements.
    #   @return [String]
    #
    # @!attribute [rw] error_validation_color
    #   The color of error and validation messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CustomColors AWS API Documentation
    #
    class CustomColors < Struct.new(
      :background_color,
      :navigation_color,
      :header_color,
      :text_color,
      :accent_color,
      :error_validation_color)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeleteDiscoveryConfigurationRequest AWS API Documentation
    #
    class DeleteDiscoveryConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] managed_api_id
    #   The identifier of the Managed API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeleteManagedApiRequest AWS API Documentation
    #
    class DeleteManagedApiRequest < Struct.new(
      :managed_api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeleteManagedApiResponse AWS API Documentation
    #
    class DeleteManagedApiResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeleteOrganizationDiscoveryConfigurationRequest AWS API Documentation
    #
    class DeleteOrganizationDiscoveryConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] portal_id
    #   The identifier of the portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeletePortalRequest AWS API Documentation
    #
    class DeletePortalRequest < Struct.new(
      :portal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] product_api_page_id
    #   The identifier of the API page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeleteProductApiPageRequest AWS API Documentation
    #
    class DeleteProductApiPageRequest < Struct.new(
      :product_id,
      :product_api_page_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] product_page_id
    #   The identifier of the product page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeleteProductPageRequest AWS API Documentation
    #
    class DeleteProductPageRequest < Struct.new(
      :product_id,
      :product_page_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeleteProductRequest AWS API Documentation
    #
    class DeleteProductRequest < Struct.new(
      :product_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeleteProductSharingPolicyRequest AWS API Documentation
    #
    class DeleteProductSharingPolicyRequest < Struct.new(
      :product_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product to disassociate the Managed APIs from.
    #   @return [String]
    #
    # @!attribute [rw] managed_api_ids
    #   Bounded list of Managed API IDs, used as the request payload for
    #   batch associate/disassociate.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DisassociateManagedApisRequest AWS API Documentation
    #
    class DisassociateManagedApisRequest < Struct.new(
      :product_id,
      :managed_api_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_items
    #   The Managed APIs that could not be processed. IDs not listed here
    #   succeeded.
    #   @return [Array<Types::FailedManagedApiItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DisassociateManagedApisResponse AWS API Documentation
    #
    class DisassociateManagedApisResponse < Struct.new(
      :failed_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # An account-level discovery configuration.
    #
    # @!attribute [rw] arn
    #   The ARN of the discovery configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the discovery configuration.
    #   @return [String]
    #
    # @!attribute [rw] discovery_sources
    #   The sources APIs are discovered from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] excluded_resources
    #   The ARNs of resources left out of discovery.
    #   @return [Array<String>]
    #
    # @!attribute [rw] features
    #   Optional capabilities enabled for this configuration. Absent when
    #   none are.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   When the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DiscoveryConfigurationData AWS API Documentation
    #
    class DiscoveryConfigurationData < Struct.new(
      :arn,
      :status,
      :discovery_sources,
      :excluded_resources,
      :features,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exclusion filters for organization-scoped discovery. Resources
    # matching any of these filters are excluded from discovery.
    #
    # @!attribute [rw] organizational_unit_ids
    #   List of organizational unit IDs to exclude from discovery.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_ids
    #   List of AWS account IDs to exclude from discovery.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_arns
    #   List of resource ARNs to exclude. Only ELB and CloudFront resource
    #   ARNs are supported.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DiscoveryExclusionFilters AWS API Documentation
    #
    class DiscoveryExclusionFilters < Struct.new(
      :organizational_unit_ids,
      :account_ids,
      :resource_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Inclusion filters for organization-scoped discovery. Only Resources
    # matching any of these filters are included in discovery.
    #
    # @!attribute [rw] organizational_unit_ids
    #   List of organizational unit IDs to include in discovery.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_ids
    #   List of AWS account IDs to include in discovery.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DiscoveryInclusionFilters AWS API Documentation
    #
    class DiscoveryInclusionFilters < Struct.new(
      :organizational_unit_ids,
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The state of API discovery for one discovery source.
    #
    # @!attribute [rw] account_id
    #   The AWS account ID the status applies to.
    #   @return [String]
    #
    # @!attribute [rw] discovery_source
    #   The AWS service that is the SOURCE of discovered APIs — i.e. the
    #   front-door service type whose resources discovery crawls to find
    #   APIs. New source services may be added over time, so clients MUST
    #   treat any unrecognized value gracefully.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of discovery for this source.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   Typed reason for failure, present only when `status` is `FAILED`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DiscoveryStatus AWS API Documentation
    #
    class DiscoveryStatus < Struct.new(
      :account_id,
      :discovery_source,
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The content of a product page.
    #
    # @!attribute [rw] title
    #   The page title, from 1 to 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The Markdown body of the page, from 1 to 32,768 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DisplayContent AWS API Documentation
    #
    class DisplayContent < Struct.new(
      :title,
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # Content that replaces the defaults generated for an API page.
    #
    # @!attribute [rw] operation_name
    #   The operation name shown as the page title, from 1 to 255
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] api_url
    #   The invoke URL shown on the page and used for Try-It and the
    #   portal's allowed-domain list: http(s)://host\[:port\]\[/path\],
    #   with no whitespace, quotes or angle brackets. On this request member
    #   only, as ApiEndpoint is also returned in responses.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The Markdown body of the page, from 1 to 32,768 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DisplayContentOverrides AWS API Documentation
    #
    class DisplayContentOverrides < Struct.new(
      :operation_name,
      :api_url,
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # The order of a product's content in the portal navigation.
    #
    # @!attribute [rw] overview_page_arn
    #   The ARN of the product page shown as the product overview.
    #   @return [String]
    #
    # @!attribute [rw] product_page_arns
    #   A product has at most
    #   DocHubLimits.DEFAULT\_PAGES\_PER\_PRODUCT\_LIMIT (40) pages,
    #   enforced by LimitsHelper.
    #   @return [Array<String>]
    #
    # @!attribute [rw] contents
    #   Sections in a product's navigation. No service-side limit exists
    #   today; this bound caps request size.
    #   @return [Array<Types::Section>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DisplayOrder AWS API Documentation
    #
    class DisplayOrder < Struct.new(
      :overview_page_arn,
      :product_page_arns,
      :contents)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exactly one of the members is set: `none` for no custom domain, or
    # `acmManaged` to bring a domain + ACM certificate. Modeled as a union
    # so the "exactly one" choice is enforced by type.
    #
    # @note EndpointConfigurationRequest is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] none
    #   Serve the portal only on its default domain.
    #   @return [Types::None]
    #
    # @!attribute [rw] acm_managed
    #   Serve the portal on your own domain, using a certificate from AWS
    #   Certificate Manager.
    #   @return [Types::ACMManaged]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/EndpointConfigurationRequest AWS API Documentation
    #
    class EndpointConfigurationRequest < Struct.new(
      :none,
      :acm_managed,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class None < EndpointConfigurationRequest; end
      class AcmManaged < EndpointConfigurationRequest; end
      class Unknown < EndpointConfigurationRequest; end
    end

    # The domains a portal is served on.
    #
    # @!attribute [rw] domain_name
    #   The custom domain name of the portal. Absent if the portal has no
    #   custom domain.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The ARN of the ACM certificate for the custom domain. Absent if the
    #   portal has no custom domain.
    #   @return [String]
    #
    # @!attribute [rw] portal_domain_hosted_zone_id
    #   The ID of the hosted zone for the portal's distribution. Use it to
    #   create an alias record for a custom domain.
    #   @return [String]
    #
    # @!attribute [rw] portal_default_domain_name
    #   The default domain name assigned to the portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/EndpointConfigurationResponse AWS API Documentation
    #
    class EndpointConfigurationResponse < Struct.new(
      :domain_name,
      :certificate_arn,
      :portal_domain_hosted_zone_id,
      :portal_default_domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # One entry per Managed API ID that could not be processed in a batch
    # call. Ids that succeed are omitted from the response — callers infer
    # success by absence.
    #
    # @!attribute [rw] managed_api_id
    #   The identifier of the Managed API that could not be processed.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Machine-readable reason a Managed API ID couldn't be processed in a
    #   batch call. Clients should key retry logic off this enum rather than
    #   parsing errorMessage.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A description of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/FailedManagedApiItem AWS API Documentation
    #
    class FailedManagedApiItem < Struct.new(
      :managed_api_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] method
    #   The HTTP method of the API.
    #   @return [String]
    #
    # @!attribute [rw] host
    #   A discovered API's front-door hostname (e.g. an ALB, CloudFront, or
    #   API Gateway DNS name), bounded by the DNS name limit (RFC 1035).
    #   Usually literal, but may contain placeholders: &lt;*&gt; - stands
    #   for one dot-separated part of the hostname. When 10 or more hosts
    #   differ only in that part, they fold into one, e.g. a.example.com,
    #   b.example.com, ... become "&lt;*&gt;.example.com". Deeper levels
    #   fold the same way ("&lt;*&gt;.&lt;*&gt;.example.com"). The
    #   registrable domain never folds. <ip> - an IP-literal host.</p> </ip>
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port the API listens on, from 0 to 65535.
    #   @return [Integer]
    #
    # @!attribute [rw] path
    #   The request path of the API.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource that serves the API, such as an API Gateway
    #   stage or a load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetApiInventoryItemRequest AWS API Documentation
    #
    class GetApiInventoryItemRequest < Struct.new(
      :method,
      :host,
      :port,
      :path,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] item
    #   The details of the API inventory item.
    #   @return [Types::ApiInventoryItemDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetApiInventoryItemResponse AWS API Documentation
    #
    class GetApiInventoryItemResponse < Struct.new(
      :item)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetDiscoveryConfigurationRequest AWS API Documentation
    #
    class GetDiscoveryConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] discovery_configuration
    #   The discovery configuration for the account.
    #   @return [Types::DiscoveryConfigurationData]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetDiscoveryConfigurationResponse AWS API Documentation
    #
    class GetDiscoveryConfigurationResponse < Struct.new(
      :discovery_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_api_id
    #   The identifier of the Managed API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetManagedApiRequest AWS API Documentation
    #
    class GetManagedApiRequest < Struct.new(
      :managed_api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_api_id
    #   The identifier of the Managed API.
    #   @return [String]
    #
    # @!attribute [rw] managed_api_arn
    #   The ARN of the Managed API.
    #   @return [String]
    #
    # @!attribute [rw] api_signature
    #   The attributes that identify the API.
    #   @return [Types::ApiSignature]
    #
    # @!attribute [rw] created_at
    #   When the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] findings
    #   The security posture findings for the API, up to 100.
    #   @return [Array<Types::ManagedApiFinding>]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetManagedApiResponse AWS API Documentation
    #
    class GetManagedApiResponse < Struct.new(
      :managed_api_id,
      :managed_api_arn,
      :api_signature,
      :created_at,
      :updated_at,
      :findings,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetOrganizationDiscoveryConfigurationRequest AWS API Documentation
    #
    class GetOrganizationDiscoveryConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] discovery_configuration
    #   The discovery configuration for the organization.
    #   @return [Types::OrganizationDiscoveryConfigurationData]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetOrganizationDiscoveryConfigurationResponse AWS API Documentation
    #
    class GetOrganizationDiscoveryConfigurationResponse < Struct.new(
      :discovery_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_id
    #   The identifier of the portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetPortalRequest AWS API Documentation
    #
    class GetPortalRequest < Struct.new(
      :portal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_id
    #   The identifier of the portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The ARN of the portal.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_configuration
    #   The domain configuration of the portal.
    #   @return [Types::EndpointConfigurationResponse]
    #
    # @!attribute [rw] authorization
    #   How readers sign in to the portal, and whether fine-grained access
    #   control is on.
    #   @return [Types::Authorization]
    #
    # @!attribute [rw] portal_content
    #   The portal's display name, description, and theme.
    #   @return [Types::PortalContent]
    #
    # @!attribute [rw] included_product_arns
    #   The ARNs of the products the portal includes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] publish_status
    #   The publish status of the portal. Absent if the portal has never
    #   been published.
    #   @return [String]
    #
    # @!attribute [rw] status_exception
    #   Failure detail attached to a Portal's publish/preview status: a
    #   typed reason plus an optional human-readable message.
    #   @return [Types::PortalStatusException]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] published_at
    #   When the portal was last published.
    #   @return [Time]
    #
    # @!attribute [rw] publish_description
    #   The description supplied with the most recent publish request.
    #   @return [String]
    #
    # @!attribute [rw] rum_app_monitor_name
    #   The name of the CloudWatch RUM app monitor that collects reader
    #   telemetry for the portal.
    #   @return [String]
    #
    # @!attribute [rw] preview
    #   The most recent preview of the portal. Absent if no preview has been
    #   created.
    #   @return [Types::Preview]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetPortalResponse AWS API Documentation
    #
    class GetPortalResponse < Struct.new(
      :portal_id,
      :portal_arn,
      :endpoint_configuration,
      :authorization,
      :portal_content,
      :included_product_arns,
      :publish_status,
      :status_exception,
      :updated_at,
      :published_at,
      :publish_description,
      :rum_app_monitor_name,
      :preview,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] product_api_page_id
    #   The identifier of the API page.
    #   @return [String]
    #
    # @!attribute [rw] resource_owner_account_id
    #   The AWS account ID that owns the product. Supply it to read a
    #   product shared with you by another account. Omit it for products in
    #   your own account.
    #   @return [String]
    #
    # @!attribute [rw] include_raw_display_content
    #   Set to `true` to also return the page body in `rawDisplayContent`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetProductApiPageRequest AWS API Documentation
    #
    class GetProductApiPageRequest < Struct.new(
      :product_id,
      :product_api_page_id,
      :resource_owner_account_id,
      :include_raw_display_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_api_page_id
    #   The identifier of the API page.
    #   @return [String]
    #
    # @!attribute [rw] product_api_page_arn
    #   The ARN of the API page.
    #   @return [String]
    #
    # @!attribute [rw] api_id
    #   The API the page documents.
    #   @return [Types::ApiId]
    #
    # @!attribute [rw] display_content
    #   The content shown on the page.
    #   @return [Types::ApiPageDisplayContentResponse]
    #
    # @!attribute [rw] try_it_state
    #   Whether Try-It is enabled on the page.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the page content: `IN_PROGRESS` while it is generated,
    #   then `AVAILABLE` or `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] raw_display_content
    #   The Markdown body of the page. Returned only when
    #   `includeRawDisplayContent` is `true`.
    #   @return [String]
    #
    # @!attribute [rw] status_exception
    #   Failure detail attached to a ProductApiPage's status: a typed
    #   reason plus an optional human-readable message.
    #   @return [Types::ProductApiPageStatusException]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetProductApiPageResponse AWS API Documentation
    #
    class GetProductApiPageResponse < Struct.new(
      :product_api_page_id,
      :product_api_page_arn,
      :api_id,
      :display_content,
      :try_it_state,
      :updated_at,
      :status,
      :raw_display_content,
      :status_exception,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] product_page_id
    #   The identifier of the product page.
    #   @return [String]
    #
    # @!attribute [rw] resource_owner_account_id
    #   The AWS account ID that owns the product. Supply it to read a
    #   product shared with you by another account. Omit it for products in
    #   your own account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetProductPageRequest AWS API Documentation
    #
    class GetProductPageRequest < Struct.new(
      :product_id,
      :product_page_id,
      :resource_owner_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_page_id
    #   The identifier of the product page.
    #   @return [String]
    #
    # @!attribute [rw] product_page_arn
    #   The ARN of the product page.
    #   @return [String]
    #
    # @!attribute [rw] display_content
    #   The title and body of the page.
    #   @return [Types::DisplayContent]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetProductPageResponse AWS API Documentation
    #
    class GetProductPageResponse < Struct.new(
      :product_page_id,
      :product_page_arn,
      :display_content,
      :updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] resource_owner_account_id
    #   The AWS account ID that owns the product. Supply it to read a
    #   product shared with you by another account. Omit it for products in
    #   your own account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetProductRequest AWS API Documentation
    #
    class GetProductRequest < Struct.new(
      :product_id,
      :resource_owner_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] product_arn
    #   The ARN of the product.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the product, from 1 to 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] display_order
    #   The order of the product's pages and API page sections in the
    #   portal navigation.
    #   @return [Types::DisplayOrder]
    #
    # @!attribute [rw] description
    #   A description of the product, up to 1024 characters.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] api_selection_configuration
    #   How Managed APIs are selected for the product.
    #   @return [Types::ApiSelectionConfiguration]
    #
    # @!attribute [rw] status
    #   Whether the product's member APIs match its
    #   apiSelectionConfiguration. ACTIVE - membership matches. The only
    #   status a CUSTOM product reports. IN\_PROGRESS - ruleFilters changed
    #   and membership is still being evaluated. FAILED - evaluation could
    #   not finish and membership is incomplete; failureReason says why.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   Reason a product's rules could not be fully applied, present only
    #   when `status` is `FAILED`. New reasons may be added over time, so
    #   clients MUST treat any unrecognized value as `UNKNOWN` and fall back
    #   to generic handling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetProductResponse AWS API Documentation
    #
    class GetProductResponse < Struct.new(
      :product_id,
      :product_arn,
      :display_name,
      :display_order,
      :description,
      :updated_at,
      :tags,
      :api_selection_configuration,
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetProductSharingPolicyRequest AWS API Documentation
    #
    class GetProductSharingPolicyRequest < Struct.new(
      :product_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The sharing policy as a JSON resource policy document.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetProductSharingPolicyResponse AWS API Documentation
    #
    class GetProductSharingPolicyResponse < Struct.new(
      :product_id,
      :policy_document,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parts that together identify an API.
    #
    # @!attribute [rw] path
    #   The request path of the API.
    #   @return [String]
    #
    # @!attribute [rw] method
    #   The HTTP method of the API.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource that serves the API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/IdentifierParts AWS API Documentation
    #
    class IdentifierParts < Struct.new(
      :path,
      :method,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service encountered an internal error. Try the request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request rate or a service quota was exceeded. Reduce the request
    # rate or the number of resources and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters that limit the results. Omit it to list every discovered
    #   API.
    #   @return [Types::ApiInventoryFilters]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one page, from 1 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListApiInventoryItemsRequest AWS API Documentation
    #
    class ListApiInventoryItemsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The discovered APIs in this page of results.
    #   @return [Array<Types::ApiInventoryItem>]
    #
    # @!attribute [rw] next_token
    #   The token to pass in the next request to get the next page. Absent
    #   when there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListApiInventoryItemsResponse AWS API Documentation
    #
    class ListApiInventoryItemsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discovery_source
    #   The AWS service that is the SOURCE of discovered APIs — i.e. the
    #   front-door service type whose resources discovery crawls to find
    #   APIs. New source services may be added over time, so clients MUST
    #   treat any unrecognized value gracefully.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one page, from 1 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListDiscoveryStatusesRequest AWS API Documentation
    #
    class ListDiscoveryStatusesRequest < Struct.new(
      :discovery_source,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The discovery status for each account and discovery source.
    #   @return [Array<Types::DiscoveryStatus>]
    #
    # @!attribute [rw] next_token
    #   The token to pass in the next request to get the next page. Absent
    #   when there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListDiscoveryStatusesResponse AWS API Documentation
    #
    class ListDiscoveryStatusesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_api_id
    #   The identifier of the Managed API.
    #   @return [String]
    #
    # @!attribute [rw] started_after
    #   Inclusive lower bound on each event's start time; only events that
    #   started at or after this time are returned. Optional; defaults to 30
    #   days before the current time.
    #   @return [Time]
    #
    # @!attribute [rw] started_before
    #   Exclusive upper bound on each event's start time; only events that
    #   started before this time are returned. Optional; defaults to the
    #   current time.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one page, from 1 to 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListManagedApiEventsRequest AWS API Documentation
    #
    class ListManagedApiEventsRequest < Struct.new(
      :managed_api_id,
      :started_after,
      :started_before,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A page of security events for a managed API. Page size is bounded by
    #   the operation's maxResults; callers retrieve all events by
    #   following nextToken.
    #   @return [Array<Types::ManagedApiEventSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to pass in the next request to get the next page. Absent
    #   when there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListManagedApiEventsResponse AWS API Documentation
    #
    class ListManagedApiEventsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in one page, from 1 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   Optional filter: when supplied, only Managed APIs associated with
    #   this product are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListManagedApisRequest AWS API Documentation
    #
    class ListManagedApisRequest < Struct.new(
      :max_results,
      :next_token,
      :product_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to pass in the next request to get the next page. Absent
    #   when there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The Managed APIs in this page of results.
    #   @return [Array<Types::ManagedApiSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListManagedApisResponse AWS API Documentation
    #
    class ListManagedApisResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in one page, from 1 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListPortalsRequest AWS API Documentation
    #
    class ListPortalsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The portals in this page of results.
    #   @return [Array<Types::PortalSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to pass in the next request to get the next page. Absent
    #   when there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListPortalsResponse AWS API Documentation
    #
    class ListPortalsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one page, from 1 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_owner_account_id
    #   The AWS account ID that owns the product. Supply it to read a
    #   product shared with you by another account. Omit it for products in
    #   your own account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListProductApiPagesRequest AWS API Documentation
    #
    class ListProductApiPagesRequest < Struct.new(
      :product_id,
      :next_token,
      :max_results,
      :resource_owner_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to pass in the next request to get the next page. Absent
    #   when there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The API pages in this page of results.
    #   @return [Array<Types::ProductApiPageSummaryNoBody>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListProductApiPagesResponse AWS API Documentation
    #
    class ListProductApiPagesResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one page, from 1 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_owner_account_id
    #   The AWS account ID that owns the product. Supply it to read a
    #   product shared with you by another account. Omit it for products in
    #   your own account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListProductPagesRequest AWS API Documentation
    #
    class ListProductPagesRequest < Struct.new(
      :product_id,
      :next_token,
      :max_results,
      :resource_owner_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to pass in the next request to get the next page. Absent
    #   when there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The product pages in this page of results.
    #   @return [Array<Types::ProductPageSummaryNoBody>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListProductPagesResponse AWS API Documentation
    #
    class ListProductPagesResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in one page, from 1 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   Whose products to return: `SELF` for your own, `OTHER_ACCOUNTS` for
    #   products shared with you, or `ALL`. Defaults to `ALL`, or to `SELF`
    #   when `managedApiId` is supplied.
    #   @return [String]
    #
    # @!attribute [rw] managed_api_id
    #   Optional filter: when supplied, only Products this Managed API is
    #   associated with are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListProductsRequest AWS API Documentation
    #
    class ListProductsRequest < Struct.new(
      :max_results,
      :next_token,
      :resource_owner,
      :managed_api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to pass in the next request to get the next page. Absent
    #   when there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The products in this page of results.
    #   @return [Array<Types::ProductSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListProductsResponse AWS API Documentation
    #
    class ListProductsResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a single security event attributed to a managed API. This
    # is the list view; full per-event detail will come from
    # GetManagedApiEvent in future.
    #
    # @!attribute [rw] event_id
    #   Event identifier; row identity and input to GetManagedApiEvent.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   Always WAF\_API\_SECURITY today.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Lifecycle status of a security event.
    #   @return [String]
    #
    # @!attribute [rw] waf_api_security_event_detail
    #   Detail specific to a WAF API-security event; populated when
    #   eventType is WAF\_API\_SECURITY.
    #   @return [Types::WafApiSecurityEventDetail]
    #
    # @!attribute [rw] started_at
    #   When the event was first observed.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   When the event completed; absent while it is still in progress.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   When the event was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ManagedApiEventSummary AWS API Documentation
    #
    class ManagedApiEventSummary < Struct.new(
      :event_id,
      :event_type,
      :status,
      :waf_api_security_event_detail,
      :started_at,
      :ended_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Security posture finding attached to this API. Shape mirrors the
    # inventory's Finding sub-document.
    #
    # @!attribute [rw] posture_id
    #   The identifier of the posture check that produced the finding.
    #   @return [String]
    #
    # @!attribute [rw] posture_status
    #   Values are spelled exactly as the inventory document stores them, so
    #   the same string means the same thing at both layers and no second
    #   translation sits between the index and the wire.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Why a posture is not satisfied, or why no verdict was reached.
    #   Present only when `postureStatus` is `FALSE` or `INSUFFICIENT_DATA`.
    #   New reasons may be added over time, so clients MUST treat any
    #   unrecognized value as `UNKNOWN` and fall back to generic handling.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   When the finding was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ManagedApiFinding AWS API Documentation
    #
    class ManagedApiFinding < Struct.new(
      :posture_id,
      :posture_status,
      :reason,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a Managed API.
    #
    # @!attribute [rw] managed_api_id
    #   The identifier of the Managed API.
    #   @return [String]
    #
    # @!attribute [rw] managed_api_arn
    #   The ARN of the Managed API.
    #   @return [String]
    #
    # @!attribute [rw] api_signature
    #   The attributes that identify the API.
    #   @return [Types::ApiSignature]
    #
    # @!attribute [rw] created_at
    #   When the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ManagedApiSummary AWS API Documentation
    #
    class ManagedApiSummary < Struct.new(
      :managed_api_id,
      :managed_api_arn,
      :api_signature,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An empty value, used in a union to choose the option that has no
    # settings.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/None AWS API Documentation
    #
    class None < Aws::EmptyStructure; end

    # An organization-level discovery configuration.
    #
    # @!attribute [rw] arn
    #   The ARN of the organization discovery configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the discovery configuration.
    #   @return [String]
    #
    # @!attribute [rw] discovery_sources
    #   The sources APIs are discovered from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclusion_filters
    #   Exclusion filters for organization-scoped discovery. @deprecated.
    #   Remove this once client (Console) moves to discoveryFilters
    #   @return [Types::DiscoveryExclusionFilters]
    #
    # @!attribute [rw] discovery_filters
    #   The accounts or organizational units included in or excluded from
    #   discovery.
    #   @return [Types::OrganizationDiscoveryFilters]
    #
    # @!attribute [rw] features
    #   Optional capabilities enabled for this configuration. Absent when
    #   none are.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   When the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/OrganizationDiscoveryConfigurationData AWS API Documentation
    #
    class OrganizationDiscoveryConfigurationData < Struct.new(
      :arn,
      :status,
      :discovery_sources,
      :exclusion_filters,
      :discovery_filters,
      :features,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Limits organization-scoped discovery. Set exactly one member:
    # `inclusionFilters` to discover only the matching targets, or
    # `exclusionFilters` to discover everything except them.
    #
    # @note OrganizationDiscoveryFilters is a union - when making an API calls you must set exactly one of the members.
    #
    # @note OrganizationDiscoveryFilters is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OrganizationDiscoveryFilters corresponding to the set member.
    #
    # @!attribute [rw] exclusion_filters
    #   Exclusion filters for organization-scoped discovery. Resources
    #   matching any of these filters are excluded from discovery.
    #   @return [Types::DiscoveryExclusionFilters]
    #
    # @!attribute [rw] inclusion_filters
    #   Inclusion filters for organization-scoped discovery. Only Resources
    #   matching any of these filters are included in discovery.
    #   @return [Types::DiscoveryInclusionFilters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/OrganizationDiscoveryFilters AWS API Documentation
    #
    class OrganizationDiscoveryFilters < Struct.new(
      :exclusion_filters,
      :inclusion_filters,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ExclusionFilters < OrganizationDiscoveryFilters; end
      class InclusionFilters < OrganizationDiscoveryFilters; end
      class Unknown < OrganizationDiscoveryFilters; end
    end

    # The display settings of a portal.
    #
    # @!attribute [rw] display_name
    #   The name shown in the portal, from 3 to 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the portal, up to 1024 characters.
    #   @return [String]
    #
    # @!attribute [rw] theme
    #   The colors and logo of the portal.
    #   @return [Types::PortalTheme]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/PortalContent AWS API Documentation
    #
    class PortalContent < Struct.new(
      :display_name,
      :description,
      :theme)
      SENSITIVE = []
      include Aws::Structure
    end

    # Failure detail attached to a Portal's publish/preview status: a typed
    # reason plus an optional human-readable message.
    #
    # @!attribute [rw] exception
    #   Treat any unrecognized value as INTERNAL\_FAILURE.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/PortalStatusException AWS API Documentation
    #
    class PortalStatusException < Struct.new(
      :exception,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a portal.
    #
    # @!attribute [rw] portal_id
    #   The identifier of the portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The ARN of the portal.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_configuration
    #   The domain configuration of the portal.
    #   @return [Types::EndpointConfigurationResponse]
    #
    # @!attribute [rw] authorization
    #   How readers sign in to the portal, and whether fine-grained access
    #   control is on.
    #   @return [Types::Authorization]
    #
    # @!attribute [rw] portal_content
    #   The portal's display name, description, and theme.
    #   @return [Types::PortalContent]
    #
    # @!attribute [rw] included_product_arns
    #   The ARNs of the products the portal includes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] publish_status
    #   The publish status of the portal. Absent if the portal has never
    #   been published.
    #   @return [String]
    #
    # @!attribute [rw] status_exception
    #   Failure detail attached to a Portal's publish/preview status: a
    #   typed reason plus an optional human-readable message.
    #   @return [Types::PortalStatusException]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] published_at
    #   When the portal was last published.
    #   @return [Time]
    #
    # @!attribute [rw] publish_description
    #   The description supplied with the most recent publish request.
    #   @return [String]
    #
    # @!attribute [rw] rum_app_monitor_name
    #   The name of the CloudWatch RUM app monitor that collects reader
    #   telemetry for the portal.
    #   @return [String]
    #
    # @!attribute [rw] preview
    #   The most recent preview of the portal. Absent if no preview has been
    #   created.
    #   @return [Types::Preview]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/PortalSummary AWS API Documentation
    #
    class PortalSummary < Struct.new(
      :portal_id,
      :portal_arn,
      :endpoint_configuration,
      :authorization,
      :portal_content,
      :included_product_arns,
      :publish_status,
      :status_exception,
      :updated_at,
      :published_at,
      :publish_description,
      :rum_app_monitor_name,
      :preview)
      SENSITIVE = []
      include Aws::Structure
    end

    # The visual theme of a portal.
    #
    # @!attribute [rw] custom_colors
    #   The colors used in the portal.
    #   @return [Types::CustomColors]
    #
    # @!attribute [rw] logo_uploaded_at
    #   When the portal logo was last uploaded. Absent if the portal has no
    #   logo.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/PortalTheme AWS API Documentation
    #
    class PortalTheme < Struct.new(
      :custom_colors,
      :logo_uploaded_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A preview of a portal.
    #
    # @!attribute [rw] preview_status
    #   The status of the preview.
    #   @return [String]
    #
    # @!attribute [rw] status_exception
    #   Failure detail attached to a Portal's publish/preview status: a
    #   typed reason plus an optional human-readable message.
    #   @return [Types::PortalStatusException]
    #
    # @!attribute [rw] preview_url
    #   The URL to view the preview. Present when `previewStatus` is
    #   `PREVIEW_READY`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/Preview AWS API Documentation
    #
    class Preview < Struct.new(
      :preview_status,
      :status_exception,
      :preview_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Failure detail attached to a ProductApiPage's status: a typed reason
    # plus an optional human-readable message.
    #
    # @!attribute [rw] exception
    #   treat any unrecognized value as INTERNAL\_FAILURE.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ProductApiPageStatusException AWS API Documentation
    #
    class ProductApiPageStatusException < Struct.new(
      :exception,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of an API page, without its body.
    #
    # @!attribute [rw] product_api_page_id
    #   The identifier of the API page.
    #   @return [String]
    #
    # @!attribute [rw] product_api_page_arn
    #   The ARN of the API page.
    #   @return [String]
    #
    # @!attribute [rw] api_id
    #   The API the page documents.
    #   @return [Types::ApiId]
    #
    # @!attribute [rw] operation_name
    #   The operation name shown as the page title.
    #   @return [String]
    #
    # @!attribute [rw] api_url
    #   The invoke URL shown on the page and used by Try-It.
    #   @return [String]
    #
    # @!attribute [rw] try_it_state
    #   Whether Try-It is enabled on the page.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the page content: `IN_PROGRESS` while it is generated,
    #   then `AVAILABLE` or `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] status_exception
    #   Failure detail attached to a ProductApiPage's status: a typed
    #   reason plus an optional human-readable message.
    #   @return [Types::ProductApiPageStatusException]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ProductApiPageSummaryNoBody AWS API Documentation
    #
    class ProductApiPageSummaryNoBody < Struct.new(
      :product_api_page_id,
      :product_api_page_arn,
      :api_id,
      :operation_name,
      :api_url,
      :try_it_state,
      :updated_at,
      :status,
      :status_exception)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a product page, without its body.
    #
    # @!attribute [rw] product_page_id
    #   The identifier of the product page.
    #   @return [String]
    #
    # @!attribute [rw] product_page_arn
    #   The ARN of the product page.
    #   @return [String]
    #
    # @!attribute [rw] page_title
    #   The page title.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ProductPageSummaryNoBody AWS API Documentation
    #
    class ProductPageSummaryNoBody < Struct.new(
      :product_page_id,
      :product_page_arn,
      :page_title,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a product.
    #
    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] product_arn
    #   The ARN of the product.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the product, from 1 to 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the product, up to 1024 characters.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] api_selection_configuration
    #   How Managed APIs are selected for the product.
    #   @return [Types::ApiSelectionConfiguration]
    #
    # @!attribute [rw] status
    #   Whether the product's member APIs match its
    #   apiSelectionConfiguration. ACTIVE - membership matches. The only
    #   status a CUSTOM product reports. IN\_PROGRESS - ruleFilters changed
    #   and membership is still being evaluated. FAILED - evaluation could
    #   not finish and membership is incomplete; failureReason says why.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   Reason a product's rules could not be fully applied, present only
    #   when `status` is `FAILED`. New reasons may be added over time, so
    #   clients MUST treat any unrecognized value as `UNKNOWN` and fall back
    #   to generic handling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ProductSummary AWS API Documentation
    #
    class ProductSummary < Struct.new(
      :product_id,
      :product_arn,
      :display_name,
      :description,
      :updated_at,
      :api_selection_configuration,
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discovery_sources
    #   The sources to discover APIs from. Omitting it removes all sources,
    #   which stops discovery for this configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] excluded_resources
    #   The ARNs of resources to leave out of discovery, up to 50.
    #   @return [Array<String>]
    #
    # @!attribute [rw] features
    #   Optional capabilities to enable. Omitting it disables all of them,
    #   as with the other fields.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/PutDiscoveryConfigurationRequest AWS API Documentation
    #
    class PutDiscoveryConfigurationRequest < Struct.new(
      :discovery_sources,
      :excluded_resources,
      :features,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discovery_configuration
    #   The discovery configuration for the account.
    #   @return [Types::DiscoveryConfigurationData]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/PutDiscoveryConfigurationResponse AWS API Documentation
    #
    class PutDiscoveryConfigurationResponse < Struct.new(
      :discovery_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discovery_sources
    #   The sources to discover APIs from. Omitting it removes all sources,
    #   which stops discovery for this configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclusion_filters
    #   Exclusion filters for organization-scoped discovery. @deprecated.
    #   Remove this once client (Console) moves to discoveryFilters
    #   @return [Types::DiscoveryExclusionFilters]
    #
    # @!attribute [rw] discovery_filters
    #   The accounts or organizational units to include in or exclude from
    #   discovery.
    #   @return [Types::OrganizationDiscoveryFilters]
    #
    # @!attribute [rw] features
    #   Optional capabilities to enable. Omitting it disables all of them,
    #   as with the other fields.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/PutOrganizationDiscoveryConfigurationRequest AWS API Documentation
    #
    class PutOrganizationDiscoveryConfigurationRequest < Struct.new(
      :discovery_sources,
      :exclusion_filters,
      :discovery_filters,
      :features,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discovery_configuration
    #   The discovery configuration for the organization.
    #   @return [Types::OrganizationDiscoveryConfigurationData]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/PutOrganizationDiscoveryConfigurationResponse AWS API Documentation
    #
    class PutOrganizationDiscoveryConfigurationResponse < Struct.new(
      :discovery_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The sharing policy as a JSON resource policy document.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/PutProductSharingPolicyRequest AWS API Documentation
    #
    class PutProductSharingPolicyRequest < Struct.new(
      :product_id,
      :policy_document,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource does not exist, or you do not have access to
    # it.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Values are compared to the attribute as literals: exact and
    # case-sensitive, no wildcards.
    #
    # @!attribute [rw] key
    #   The Managed API attribute a RuleFilter compares against.
    #   RESOURCE\_ARN - apiSignature.resourceArn HOST -
    #   apiSignature.hostname METHOD - apiSignature.method, so values must
    #   be HttpMethod names PATH - apiSignature.path PORT -
    #   apiSignature.port, compared as its decimal string, so values must be
    #   0-65535 with no leading zeros ACCOUNT - the account hosting the API,
    #   which for an ORGANIZATION-scoped Managed API is the member account
    #   rather than the account that created it
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to match. The filter matches when the attribute equals
    #   any of them.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/RuleFilter AWS API Documentation
    #
    class RuleFilter < Struct.new(
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A named group of API pages in the portal navigation.
    #
    # @!attribute [rw] section_name
    #   Shown in the portal navigation. Same bound as page titles and
    #   operation names, and no control characters (the service rejects a
    #   blank name).
    #   @return [String]
    #
    # @!attribute [rw] product_api_page_arns
    #   API pages in one section. No service-side limit exists today; this
    #   bound caps request size.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/Section AWS API Documentation
    #
    class Section < Struct.new(
      :section_name,
      :product_api_page_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Identifier of the discovery configuration to start. Required. Today
    #   this is the configuration ARN, which carries the owner account id so
    #   a delegated admin or org admin can start an org-scoped configuration
    #   that lives in a different account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/StartDiscoveryRequest AWS API Documentation
    #
    class StartDiscoveryRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Identifier of the discovery configuration to stop. Required. Today
    #   this is the configuration ARN, which carries the owner account id so
    #   a delegated admin or org admin can stop an org-scoped configuration
    #   that lives in a different account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/StopDiscoveryRequest AWS API Documentation
    #
    class StopDiscoveryRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove, up to 50.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] portal_id
    #   The identifier of the portal.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The terminal publish state a caller can request for a portal via
    #   UpdatePortalPublishStatus. Only the two client-requestable targets
    #   are modeled here; the transient and failed states in PublishStatus
    #   are set by the service and are not valid caller input.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of this publish request, up to 1024 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UpdatePortalPublishStatusRequest AWS API Documentation
    #
    class UpdatePortalPublishStatusRequest < Struct.new(
      :portal_id,
      :status,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_id
    #   The identifier of the portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_content
    #   The new display name, description, and theme. Omit it to keep the
    #   current values.
    #   @return [Types::PortalContent]
    #
    # @!attribute [rw] endpoint_configuration
    #   Exactly one of the members is set: `none` for no custom domain, or
    #   `acmManaged` to bring a domain + ACM certificate. Modeled as a union
    #   so the "exactly one" choice is enforced by type.
    #   @return [Types::EndpointConfigurationRequest]
    #
    # @!attribute [rw] authorization
    #   The new authorization settings. Omit it to keep the current
    #   settings.
    #   @return [Types::Authorization]
    #
    # @!attribute [rw] rum_app_monitor_name
    #   The new CloudWatch RUM app monitor name. Omit it to keep the current
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] included_product_arns
    #   The new list of product ARNs, up to 200. It replaces the current
    #   list. Omit it to keep the current list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] logo_uri
    #   The new S3 location of the portal logo, in the form
    #   `s3://bucket/key`. An empty string removes the logo. Omit it to keep
    #   the current logo.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UpdatePortalRequest AWS API Documentation
    #
    class UpdatePortalRequest < Struct.new(
      :portal_id,
      :portal_content,
      :endpoint_configuration,
      :authorization,
      :rum_app_monitor_name,
      :included_product_arns,
      :logo_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_id
    #   The identifier of the portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The ARN of the portal.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_configuration
    #   The domain configuration of the portal.
    #   @return [Types::EndpointConfigurationResponse]
    #
    # @!attribute [rw] authorization
    #   How readers sign in to the portal, and whether fine-grained access
    #   control is on.
    #   @return [Types::Authorization]
    #
    # @!attribute [rw] portal_content
    #   The portal's display name, description, and theme.
    #   @return [Types::PortalContent]
    #
    # @!attribute [rw] included_product_arns
    #   The ARNs of the products the portal includes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] publish_status
    #   The publish status of the portal. Absent if the portal has never
    #   been published.
    #   @return [String]
    #
    # @!attribute [rw] status_exception
    #   Failure detail attached to a Portal's publish/preview status: a
    #   typed reason plus an optional human-readable message.
    #   @return [Types::PortalStatusException]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] published_at
    #   When the portal was last published.
    #   @return [Time]
    #
    # @!attribute [rw] publish_description
    #   The description supplied with the most recent publish request.
    #   @return [String]
    #
    # @!attribute [rw] rum_app_monitor_name
    #   The name of the CloudWatch RUM app monitor that collects reader
    #   telemetry for the portal.
    #   @return [String]
    #
    # @!attribute [rw] preview
    #   The most recent preview of the portal. Absent if no preview has been
    #   created.
    #   @return [Types::Preview]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UpdatePortalResponse AWS API Documentation
    #
    class UpdatePortalResponse < Struct.new(
      :portal_id,
      :portal_arn,
      :endpoint_configuration,
      :authorization,
      :portal_content,
      :included_product_arns,
      :publish_status,
      :status_exception,
      :updated_at,
      :published_at,
      :publish_description,
      :rum_app_monitor_name,
      :preview)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] product_api_page_id
    #   The identifier of the API page.
    #   @return [String]
    #
    # @!attribute [rw] display_content
    #   Exactly one of the members is set: `none` to use default display
    #   content, or `overrides` to customize it. Modeled as a union so the
    #   "exactly one" choice is enforced by type.
    #   @return [Types::ApiPageDisplayContent]
    #
    # @!attribute [rw] try_it_state
    #   The new Try-It setting. Omit it to keep the current setting. To
    #   enable it, the page's API URL must use HTTPS on a domain that
    #   supports Try-It.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UpdateProductApiPageRequest AWS API Documentation
    #
    class UpdateProductApiPageRequest < Struct.new(
      :product_id,
      :product_api_page_id,
      :display_content,
      :try_it_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_api_page_id
    #   The identifier of the API page.
    #   @return [String]
    #
    # @!attribute [rw] product_api_page_arn
    #   The ARN of the API page.
    #   @return [String]
    #
    # @!attribute [rw] api_id
    #   The API the page documents.
    #   @return [Types::ApiId]
    #
    # @!attribute [rw] display_content
    #   The content shown on the page.
    #   @return [Types::ApiPageDisplayContentResponse]
    #
    # @!attribute [rw] try_it_state
    #   Whether Try-It is enabled on the page.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the page content: `IN_PROGRESS` while it is generated,
    #   then `AVAILABLE` or `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] status_exception
    #   Failure detail attached to a ProductApiPage's status: a typed
    #   reason plus an optional human-readable message.
    #   @return [Types::ProductApiPageStatusException]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UpdateProductApiPageResponse AWS API Documentation
    #
    class UpdateProductApiPageResponse < Struct.new(
      :product_api_page_id,
      :product_api_page_arn,
      :api_id,
      :display_content,
      :try_it_state,
      :updated_at,
      :status,
      :status_exception)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] product_page_id
    #   The identifier of the product page.
    #   @return [String]
    #
    # @!attribute [rw] display_content
    #   The new title and body of the page. Omit it to keep the current
    #   content.
    #   @return [Types::DisplayContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UpdateProductPageRequest AWS API Documentation
    #
    class UpdateProductPageRequest < Struct.new(
      :product_id,
      :product_page_id,
      :display_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_page_id
    #   The identifier of the product page.
    #   @return [String]
    #
    # @!attribute [rw] product_page_arn
    #   The ARN of the product page.
    #   @return [String]
    #
    # @!attribute [rw] display_content
    #   The title and body of the page.
    #   @return [Types::DisplayContent]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UpdateProductPageResponse AWS API Documentation
    #
    class UpdateProductPageResponse < Struct.new(
      :product_page_id,
      :product_page_arn,
      :display_content,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The new name of the product. Omit it to keep the current name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description of the product. Omit it to keep the current
    #   description.
    #   @return [String]
    #
    # @!attribute [rw] display_order
    #   The new page order. Omit it to keep the current order.
    #   @return [Types::DisplayOrder]
    #
    # @!attribute [rw] api_selection_configuration
    #   The new API selection settings. The selection mode must match the
    #   mode the product was created with. Omit it to keep the current
    #   settings.
    #   @return [Types::ApiSelectionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UpdateProductRequest AWS API Documentation
    #
    class UpdateProductRequest < Struct.new(
      :product_id,
      :display_name,
      :description,
      :display_order,
      :api_selection_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] product_arn
    #   The ARN of the product.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the product, from 1 to 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] display_order
    #   The order of the product's pages and API page sections in the
    #   portal navigation.
    #   @return [Types::DisplayOrder]
    #
    # @!attribute [rw] description
    #   A description of the product, up to 1024 characters.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   When the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] api_selection_configuration
    #   How Managed APIs are selected for the product.
    #   @return [Types::ApiSelectionConfiguration]
    #
    # @!attribute [rw] status
    #   Whether the product's member APIs match its
    #   apiSelectionConfiguration. ACTIVE - membership matches. The only
    #   status a CUSTOM product reports. IN\_PROGRESS - ruleFilters changed
    #   and membership is still being evaluated. FAILED - evaluation could
    #   not finish and membership is incomplete; failureReason says why.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   Reason a product's rules could not be fully applied, present only
    #   when `status` is `FAILED`. New reasons may be added over time, so
    #   clients MUST treat any unrecognized value as `UNKNOWN` and fall back
    #   to generic handling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UpdateProductResponse AWS API Documentation
    #
    class UpdateProductResponse < Struct.new(
      :product_id,
      :product_arn,
      :display_name,
      :display_order,
      :description,
      :updated_at,
      :api_selection_configuration,
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detail specific to a WAF API-security event.
    #
    # @!attribute [rw] label
    #   Detection label (attack type + confidence tier).
    #   @return [String]
    #
    # @!attribute [rw] category
    #   OWASP class — the primary display value (e.g. "API2:2023").
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Confidence tier of the detection.
    #   @return [String]
    #
    # @!attribute [rw] web_acl_arn
    #   WebACL that produced the event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/WafApiSecurityEventDetail AWS API Documentation
    #
    class WafApiSecurityEventDetail < Struct.new(
      :label,
      :category,
      :confidence,
      :web_acl_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

