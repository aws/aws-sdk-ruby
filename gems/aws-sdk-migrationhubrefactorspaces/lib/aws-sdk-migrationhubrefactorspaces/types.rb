# frozen_string_literal: true

# This is generated code!

module Aws::MigrationHubRefactorSpaces
  # This module contains the types returned by client operations.
  module Types

    # <p>The user does not have sufficient access to perform this action. </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A wrapper object holding the Amazon API Gateway proxy configuration. </p>
    # @!attribute proxy_url
    #   <p>The endpoint URL of the API Gateway proxy. </p>
    #   @return [String]
    # @!attribute api_gateway_id
    #   <p>The resource ID of the API Gateway for the proxy. </p>
    #   @return [String]
    # @!attribute vpc_link_id
    #   <p>The <code>VpcLink</code> ID of the API Gateway proxy. </p>
    #   @return [String]
    # @!attribute nlb_arn
    #   <p>The Amazon Resource Name (ARN) of the Network Load Balancer configured by the API Gateway proxy. </p>
    #   @return [String]
    # @!attribute nlb_name
    #   <p>The name of the Network Load Balancer that is configured by the API Gateway proxy.
    #       </p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of API Gateway endpoint created. </p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the API Gateway stage. The name defaults to <code>prod</code>. </p>
    #   @return [String]
    class ApiGatewayProxyConfig < Struct.new(
      :proxy_url,
      :api_gateway_id,
      :vpc_link_id,
      :nlb_arn,
      :nlb_name,
      :endpoint_type,
      :stage_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A wrapper object holding the Amazon API Gateway endpoint input. </p>
    # @!attribute endpoint_type
    #   <p>The type of endpoint to use for the API Gateway proxy. If no value is specified in
    #         the request, the value is set to <code>REGIONAL</code> by default.</p>
    #            <p>If the value is set to <code>PRIVATE</code> in the request, this creates a private API
    #         endpoint that is isolated from the public internet. The private endpoint can only be accessed
    #         by using Amazon Virtual Private Cloud (Amazon VPC) interface endpoints for the Amazon API Gateway that has been granted access.
    #       For more information about creating a private connection with Refactor Spaces and interface
    #       endpoint (Amazon Web Services PrivateLink) availability, see <a href="https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/userguide/vpc-interface-endpoints.html">Access
    #         Refactor Spaces using an interface endpoint (Amazon Web Services PrivateLink)</a>.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the API Gateway stage. The name defaults to <code>prod</code>. </p>
    #   @return [String]
    class ApiGatewayProxyInput < Struct.new(
      :endpoint_type,
      :stage_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A wrapper object holding the Amazon API Gateway proxy summary. </p>
    # @!attribute proxy_url
    #   <p>The endpoint URL of the API Gateway proxy. </p>
    #   @return [String]
    # @!attribute api_gateway_id
    #   <p>The resource ID of the API Gateway for the proxy. </p>
    #   @return [String]
    # @!attribute vpc_link_id
    #   <p>The <code>VpcLink</code> ID of the API Gateway proxy. </p>
    #   @return [String]
    # @!attribute nlb_arn
    #   <p>The Amazon Resource Name (ARN) of the Network Load Balancer configured by the API Gateway proxy. </p>
    #   @return [String]
    # @!attribute nlb_name
    #   <p>The name of the Network Load Balancer that is configured by the API Gateway proxy.
    #       </p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of API Gateway endpoint created. </p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the API Gateway stage. The name defaults to <code>prod</code>. </p>
    #   @return [String]
    class ApiGatewayProxySummary < Struct.new(
      :proxy_url,
      :api_gateway_id,
      :vpc_link_id,
      :nlb_arn,
      :nlb_name,
      :endpoint_type,
      :stage_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The list of <code>ApplicationSummary</code> objects. </p>
    # @!attribute name
    #   <p>The name of the application. </p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the application. </p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the application owner (which is always the same as
    #         the environment owner account ID).</p>
    #   @return [String]
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the application creator. </p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the application. </p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the environment. </p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the virtual private cloud (VPC). </p>
    #   @return [String]
    # @!attribute proxy_type
    #   <p>The proxy type of the proxy created within the application. </p>
    #   @return [String]
    # @!attribute api_gateway_proxy
    #   <p>The endpoint URL of the Amazon API Gateway proxy. </p>
    #   @return [Types::ApiGatewayProxySummary]
    # @!attribute state
    #   <p>The current state of the application. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the application. </p>
    #   @return [Hash<String, String>]
    # @!attribute error
    #   <p>Any error associated with the application resource. </p>
    #   @return [Types::ErrorResponse]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the application was last updated. </p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>A timestamp that indicates when the application is created. </p>
    #   @return [Time]
    class ApplicationSummary < Struct.new(
      :name,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :application_id,
      :environment_id,
      :vpc_id,
      :proxy_type,
      :api_gateway_proxy,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource. </p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name to use for the application. </p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The unique identifier of the environment.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the virtual private cloud (VPC).</p>
    #   @return [String]
    # @!attribute proxy_type
    #   <p>The proxy type of the proxy created within the application. </p>
    #   @return [String]
    # @!attribute api_gateway_proxy
    #   <p>A wrapper object holding the API Gateway endpoint type and stage name for the
    #         proxy. </p>
    #   @return [Types::ApiGatewayProxyInput]
    # @!attribute tags
    #   <p>The tags to assign to the application. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    #   @return [String]
    class CreateApplicationInput < Struct.new(
      :name,
      :environment_identifier,
      :vpc_id,
      :proxy_type,
      :api_gateway_proxy,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is 
    #   <code>arn:aws:refactor-spaces:<i>region</i>:<i>account-id</i>:<i>resource-type/resource-id</i>
    #               </code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the application owner (which is always the same as
    #         the environment owner account ID).</p>
    #   @return [String]
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of application creator.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment in which the application is created.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the Amazon VPC. </p>
    #   @return [String]
    # @!attribute proxy_type
    #   <p>The proxy type of the proxy created within the application. </p>
    #   @return [String]
    # @!attribute api_gateway_proxy
    #   <p>A wrapper object holding the API Gateway endpoint type and stage name for the
    #         proxy. </p>
    #   @return [Types::ApiGatewayProxyInput]
    # @!attribute state
    #   <p>The current state of the application. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the application. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>
    #   @return [Hash<String, String>]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the application was last updated. </p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>A timestamp that indicates when the application is created.</p>
    #   @return [Time]
    class CreateApplicationOutput < Struct.new(
      :name,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :application_id,
      :environment_id,
      :vpc_id,
      :proxy_type,
      :api_gateway_proxy,
      :state,
      :tags,
      :last_updated_time,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment.</p>
    #   @return [String]
    # @!attribute network_fabric_type
    #   <p>The network fabric type of the environment.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the environment. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    #   @return [String]
    class CreateEnvironmentInput < Struct.new(
      :name,
      :description,
      :network_fabric_type,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the environment.</p>
    #   @return [String]
    # @!attribute network_fabric_type
    #   <p>The network fabric type of the environment.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of environment owner.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the environment. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the created environment. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair..</p>
    #   @return [Hash<String, String>]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the environment was last updated.</p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>A timestamp that indicates when the environment is created.</p>
    #   @return [Time]
    class CreateEnvironmentOutput < Struct.new(
      :name,
      :arn,
      :description,
      :environment_id,
      :network_fabric_type,
      :owner_account_id,
      :state,
      :tags,
      :last_updated_time,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment in which the route is created.</p>
    #   @return [String]
    # @!attribute application_identifier
    #   <p>The ID of the application within which the route is being created.</p>
    #   @return [String]
    # @!attribute service_identifier
    #   <p>The ID of the service in which the route is created. Traffic that matches this route is
    #         forwarded to this service.</p>
    #   @return [String]
    # @!attribute route_type
    #   <p>The route type of the route. <code>DEFAULT</code> indicates that all traffic that does not
    #         match another route is forwarded to the default route. Applications must have a default route
    #         before any other routes can be created. <code>URI_PATH</code> indicates a route that is based
    #         on a URI path.</p>
    #   @return [String]
    # @!attribute default_route
    #   <p> Configuration for the default route type. </p>
    #   @return [Types::DefaultRouteInput]
    # @!attribute uri_path_route
    #   <p>The configuration for the URI path route type. </p>
    #   @return [Types::UriPathRouteInput]
    # @!attribute tags
    #   <p>The tags to assign to the route. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.. </p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    #   @return [String]
    class CreateRouteInput < Struct.new(
      :environment_identifier,
      :application_identifier,
      :service_identifier,
      :route_type,
      :default_route,
      :uri_path_route,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute route_id
    #   <p>The unique identifier of the route.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the route. The format for this ARN is 
    #   <code>arn:aws:refactor-spaces:<i>region</i>:<i>account-id</i>:<i>resource-type/resource-id</i>
    #               </code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the route owner.</p>
    #   @return [String]
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the route creator.</p>
    #   @return [String]
    # @!attribute route_type
    #   <p>The route type of the route.</p>
    #   @return [String]
    # @!attribute service_id
    #   <p>The ID of service in which the route is created. Traffic that matches this route is
    #         forwarded to this service.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The ID of the application in which the route is created.</p>
    #   @return [String]
    # @!attribute uri_path_route
    #   <p>Configuration for the URI path route type. </p>
    #   @return [Types::UriPathRouteInput]
    # @!attribute state
    #   <p>The current state of the route. Activation state only allows <code>ACTIVE</code> or
    #           <code>INACTIVE</code> as user inputs. <code>FAILED</code> is a route state that is system
    #         generated.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the created route. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>
    #   @return [Hash<String, String>]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the route was last updated. </p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>A timestamp that indicates when the route is created.</p>
    #   @return [Time]
    class CreateRouteOutput < Struct.new(
      :route_id,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :route_type,
      :service_id,
      :application_id,
      :uri_path_route,
      :state,
      :tags,
      :last_updated_time,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the service.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The ID of the environment in which the service is created.</p>
    #   @return [String]
    # @!attribute application_identifier
    #   <p>The ID of the application which the service is created.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC.</p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of endpoint to use for the service. The type can be a URL in a VPC or an Lambda function.</p>
    #   @return [String]
    # @!attribute url_endpoint
    #   <p>The configuration for the URL endpoint type. When creating a route to a service, Refactor Spaces
    #         automatically resolves the address in the <code>UrlEndpointInput</code> object URL when the
    #         Domain Name System (DNS) time-to-live (TTL) expires, or every 60 seconds for TTLs less than 60
    #         seconds.</p>
    #   @return [Types::UrlEndpointInput]
    # @!attribute lambda_endpoint
    #   <p>The configuration for the Lambda endpoint type.</p>
    #   @return [Types::LambdaEndpointInput]
    # @!attribute tags
    #   <p>The tags to assign to the service. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.. </p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    #   @return [String]
    class CreateServiceInput < Struct.new(
      :name,
      :description,
      :environment_identifier,
      :application_identifier,
      :vpc_id,
      :endpoint_type,
      :url_endpoint,
      :lambda_endpoint,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_id
    #   <p>The unique identifier of the service.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the service owner.</p>
    #   @return [String]
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the service creator.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the created service.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the environment.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The ID of the application that the created service belongs to. </p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC. </p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The endpoint type of the service.</p>
    #   @return [String]
    # @!attribute url_endpoint
    #   <p>The configuration for the URL endpoint type. </p>
    #   @return [Types::UrlEndpointInput]
    # @!attribute lambda_endpoint
    #   <p>The configuration for the Lambda endpoint type.</p>
    #   @return [Types::LambdaEndpointInput]
    # @!attribute state
    #   <p>The current state of the service. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the created service. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.. </p>
    #   @return [Hash<String, String>]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the service was last updated. </p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>A timestamp that indicates when the service is created.</p>
    #   @return [Time]
    class CreateServiceOutput < Struct.new(
      :service_id,
      :name,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :description,
      :environment_id,
      :application_id,
      :vpc_id,
      :endpoint_type,
      :url_endpoint,
      :lambda_endpoint,
      :state,
      :tags,
      :last_updated_time,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration for the default route type. </p>
    # @!attribute activation_state
    #   <p>If set to <code>ACTIVE</code>, traffic is forwarded to this route’s service after the
    #         route is created. </p>
    #   @return [String]
    class DefaultRouteInput < Struct.new(
      :activation_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment. </p>
    #   @return [String]
    # @!attribute application_identifier
    #   <p>The ID of the application.</p>
    #   @return [String]
    class DeleteApplicationInput < Struct.new(
      :environment_identifier,
      :application_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the application’s environment.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the application. </p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the environment was last updated. </p>
    #   @return [Time]
    class DeleteApplicationOutput < Struct.new(
      :name,
      :arn,
      :application_id,
      :environment_id,
      :state,
      :last_updated_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment. </p>
    #   @return [String]
    class DeleteEnvironmentInput < Struct.new(
      :environment_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the environment.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the environment. </p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the environment was last updated. </p>
    #   @return [Time]
    class DeleteEnvironmentOutput < Struct.new(
      :name,
      :arn,
      :environment_id,
      :state,
      :last_updated_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>Amazon Resource Name (ARN) of the resource associated with the policy. </p>
    #   @return [String]
    class DeleteResourcePolicyInput < Struct.new(
      :identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteResourcePolicyOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment to delete the route from.</p>
    #   @return [String]
    # @!attribute application_identifier
    #   <p>The ID of the application to delete the route from.</p>
    #   @return [String]
    # @!attribute route_identifier
    #   <p>The ID of the route to delete.</p>
    #   @return [String]
    class DeleteRouteInput < Struct.new(
      :environment_identifier,
      :application_identifier,
      :route_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute route_id
    #   <p>The ID of the route to delete.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the route.</p>
    #   @return [String]
    # @!attribute service_id
    #   <p>The ID of the service that the route belongs to.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The ID of the application that the route belongs to.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the route. </p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the route was last updated. </p>
    #   @return [Time]
    class DeleteRouteOutput < Struct.new(
      :route_id,
      :arn,
      :service_id,
      :application_id,
      :state,
      :last_updated_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment that the service is in.</p>
    #   @return [String]
    # @!attribute application_identifier
    #   <p>Deletes a Refactor Spaces service.</p>
    #            <note>
    #               <p>The <code>RefactorSpacesSecurityGroup</code> security group must be removed from all
    #           Amazon Web Services resources in the virtual private cloud (VPC) prior to deleting a service with a URL
    #           endpoint in a VPC.</p>
    #            </note>
    #   @return [String]
    # @!attribute service_identifier
    #   <p>The ID of the service to delete.</p>
    #   @return [String]
    class DeleteServiceInput < Struct.new(
      :environment_identifier,
      :application_identifier,
      :service_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_id
    #   <p>The unique identifier of the service.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the environment.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The ID of the application that the service is in.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the service. </p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the service was last updated. </p>
    #   @return [Time]
    class DeleteServiceOutput < Struct.new(
      :service_id,
      :name,
      :arn,
      :environment_id,
      :application_id,
      :state,
      :last_updated_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary information for environments as a response to <code>ListEnvironments</code>.
    #     </p>
    # @!attribute name
    #   <p>The name of the environment. </p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the environment. </p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the environment. </p>
    #   @return [String]
    # @!attribute network_fabric_type
    #   <p>The network fabric type of the environment. </p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the environment owner.</p>
    #   @return [String]
    # @!attribute transit_gateway_id
    #   <p>The ID of the Transit Gateway set up by the environment. </p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the environment. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the environment. </p>
    #   @return [Hash<String, String>]
    # @!attribute error
    #   <p>Any error associated with the environment resource. </p>
    #   @return [Types::ErrorResponse]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the environment was last updated. </p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>A timestamp that indicates when the environment is created. </p>
    #   @return [Time]
    class EnvironmentSummary < Struct.new(
      :name,
      :arn,
      :description,
      :environment_id,
      :network_fabric_type,
      :owner_account_id,
      :transit_gateway_id,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information for the <code>EnvironmentVpc</code> resource as a response to
    #         <code>ListEnvironmentVpc</code>.</p>
    # @!attribute environment_id
    #   <p>The unique identifier of the environment. </p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC. </p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the virtual private cloud (VPC) owner. </p>
    #   @return [String]
    # @!attribute cidr_blocks
    #   <p>The list of Amazon Virtual Private Cloud (Amazon VPC) CIDR blocks. </p>
    #   @return [Array<String>]
    # @!attribute vpc_name
    #   <p>The name of the VPC at the time it is added to the environment. </p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the VPC was last updated by the environment. </p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>A timestamp that indicates when the VPC is first added to the environment. </p>
    #   @return [Time]
    class EnvironmentVpc < Struct.new(
      :environment_id,
      :vpc_id,
      :account_id,
      :cidr_blocks,
      :vpc_name,
      :last_updated_time,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Error associated with a resource returned for a Get or List resource response. </p>
    # @!attribute code
    #   <p>The error code associated with the error. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The message associated with the error. </p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the resource owner. </p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>The ID of the resource. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource. </p>
    #   @return [String]
    # @!attribute additional_details
    #   <p>Additional details about the error. </p>
    #   @return [Hash<String, String>]
    class ErrorResponse < Struct.new(
      :code,
      :message,
      :account_id,
      :resource_identifier,
      :resource_type,
      :additional_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment. </p>
    #   @return [String]
    # @!attribute application_identifier
    #   <p>The ID of the application.</p>
    #   @return [String]
    class GetApplicationInput < Struct.new(
      :environment_identifier,
      :application_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the application owner (which is always the same as
    #         the environment owner account ID).</p>
    #   @return [String]
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the application creator. </p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the environment.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the virtual private cloud (VPC). </p>
    #   @return [String]
    # @!attribute proxy_type
    #   <p>The proxy type of the proxy created within the application. </p>
    #   @return [String]
    # @!attribute api_gateway_proxy
    #   <p>The endpoint URL of the API Gateway proxy. </p>
    #   @return [Types::ApiGatewayProxyConfig]
    # @!attribute state
    #   <p>The current state of the application. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the application. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>
    #   @return [Hash<String, String>]
    # @!attribute error
    #   <p>Any error associated with the application resource. </p>
    #   @return [Types::ErrorResponse]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the application was last updated. </p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>A timestamp that indicates when the application is created. </p>
    #   @return [Time]
    class GetApplicationOutput < Struct.new(
      :name,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :application_id,
      :environment_id,
      :vpc_id,
      :proxy_type,
      :api_gateway_proxy,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment.</p>
    #   @return [String]
    class GetEnvironmentInput < Struct.new(
      :environment_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment. </p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the environment. </p>
    #   @return [String]
    # @!attribute network_fabric_type
    #   <p>The network fabric type of the environment. </p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the environment owner.</p>
    #   @return [String]
    # @!attribute transit_gateway_id
    #   <p>The ID of the Transit Gateway set up by the environment, if applicable.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the environment. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the environment. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>
    #   @return [Hash<String, String>]
    # @!attribute error
    #   <p>Any error associated with the environment resource. </p>
    #   @return [Types::ErrorResponse]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the environment was last updated. </p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>A timestamp that indicates when the environment is created. </p>
    #   @return [Time]
    class GetEnvironmentOutput < Struct.new(
      :name,
      :arn,
      :description,
      :environment_id,
      :network_fabric_type,
      :owner_account_id,
      :transit_gateway_id,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The Amazon Resource Name (ARN) of the resource associated with the policy. </p>
    #   @return [String]
    class GetResourcePolicyInput < Struct.new(
      :identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>A JSON-formatted string for an Amazon Web Services resource-based policy. </p>
    #   @return [String]
    class GetResourcePolicyOutput < Struct.new(
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment.</p>
    #   @return [String]
    # @!attribute application_identifier
    #   <p>The ID of the application. </p>
    #   @return [String]
    # @!attribute route_identifier
    #   <p>The ID of the route.</p>
    #   @return [String]
    class GetRouteInput < Struct.new(
      :environment_identifier,
      :application_identifier,
      :route_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute route_id
    #   <p>The unique identifier of the route.</p>
    #            <p>
    #               <b>DEFAULT</b>: All traffic that does not match another route is
    #         forwarded to the default route. Applications must have a default route before any other routes
    #         can be created.</p>
    #            <p>
    #               <b>URI_PATH</b>: A route that is based on a URI path.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the route.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the route owner.</p>
    #   @return [String]
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the route creator.</p>
    #   @return [String]
    # @!attribute route_type
    #   <p>The type of route.</p>
    #   @return [String]
    # @!attribute service_id
    #   <p>The unique identifier of the service.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The ID of the application that the route belongs to. </p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>Unique identifier of the environment.</p>
    #   @return [String]
    # @!attribute source_path
    #   <p>This is the path that Refactor Spaces uses to match traffic. Paths must start with <code>/</code> and are relative to
    #         the base of the application. To use path parameters in the source path, add a variable in curly braces. 
    #         For example, the resource path {user} represents a path parameter called 'user'.</p>
    #   @return [String]
    # @!attribute methods
    #   <p>A list of HTTP methods to match. An empty list matches all values. If a method is present,
    #         only HTTP requests using that method are forwarded to this route’s service. </p>
    #   @return [Array<String>]
    # @!attribute include_child_paths
    #   <p>Indicates whether to match all subpaths of the given source path. If this value is
    #           <code>false</code>, requests must match the source path exactly before they are forwarded to
    #         this route's service. </p>
    #   @return [Boolean]
    # @!attribute path_resource_to_id
    #   <p>A mapping of Amazon API Gateway path resources to resource IDs. </p>
    #   @return [Hash<String, String>]
    # @!attribute state
    #   <p>The current state of the route. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the route. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>
    #   @return [Hash<String, String>]
    # @!attribute error
    #   <p>Any error associated with the route resource. </p>
    #   @return [Types::ErrorResponse]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the route was last updated. </p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>The timestamp of when the route is created. </p>
    #   @return [Time]
    # @!attribute append_source_path
    #   <p>If set to <code>true</code>, this option appends the source path to the service URL endpoint.</p>
    #   @return [Boolean]
    class GetRouteOutput < Struct.new(
      :route_id,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :route_type,
      :service_id,
      :application_id,
      :environment_id,
      :source_path,
      :methods,
      :include_child_paths,
      :path_resource_to_id,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      :append_source_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment.</p>
    #   @return [String]
    # @!attribute application_identifier
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute service_identifier
    #   <p>The ID of the service.</p>
    #   @return [String]
    class GetServiceInput < Struct.new(
      :environment_identifier,
      :application_identifier,
      :service_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_id
    #   <p>The unique identifier of the service.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the service owner.</p>
    #   @return [String]
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the service creator.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the service. </p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the environment.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the virtual private cloud (VPC). </p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The endpoint type of the service.</p>
    #   @return [String]
    # @!attribute url_endpoint
    #   <p>The configuration for the URL endpoint type.</p>
    #            <p>The <b>Url</b> isthe URL of the endpoint type.</p>
    #            <p>The <b>HealthUrl</b> is the health check URL of the endpoint
    #         type. </p>
    #   @return [Types::UrlEndpointConfig]
    # @!attribute lambda_endpoint
    #   <p>The configuration for the Lambda endpoint type.</p>
    #            <p>The <b>Arn</b> is the Amazon Resource Name (ARN) of the Lambda function associated with this service. </p>
    #   @return [Types::LambdaEndpointConfig]
    # @!attribute state
    #   <p>The current state of the service. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the service. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>
    #   @return [Hash<String, String>]
    # @!attribute error
    #   <p>Any error associated with the service resource. </p>
    #   @return [Types::ErrorResponse]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the service was last updated. </p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>The timestamp of when the service is created.</p>
    #   @return [Time]
    class GetServiceOutput < Struct.new(
      :service_id,
      :name,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :description,
      :environment_id,
      :application_id,
      :vpc_id,
      :endpoint_type,
      :url_endpoint,
      :lambda_endpoint,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred while processing the request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource policy is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidResourcePolicyException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the Lambda endpoint type. </p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda endpoint. </p>
    #   @return [String]
    class LambdaEndpointConfig < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the Lambda endpoint type. </p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function or alias.</p>
    #   @return [String]
    class LambdaEndpointInput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary for the Lambda endpoint type. </p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda endpoint. </p>
    #   @return [String]
    class LambdaEndpointSummary < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    class ListApplicationsInput < Struct.new(
      :environment_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_summary_list
    #   <p>The list of <code>ApplicationSummary</code> objects. </p>
    #   @return [Array<Types::ApplicationSummary>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListApplicationsOutput < Struct.new(
      :application_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    class ListEnvironmentVpcsInput < Struct.new(
      :environment_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_vpc_list
    #   <p>The list of <code>EnvironmentVpc</code> objects. </p>
    #   @return [Array<Types::EnvironmentVpc>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListEnvironmentVpcsOutput < Struct.new(
      :environment_vpc_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    class ListEnvironmentsInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_summary_list
    #   <p>The list of <code>EnvironmentSummary</code> objects. </p>
    #   @return [Array<Types::EnvironmentSummary>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListEnvironmentsOutput < Struct.new(
      :environment_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment. </p>
    #   @return [String]
    # @!attribute application_identifier
    #   <p>The ID of the application. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    class ListRoutesInput < Struct.new(
      :environment_identifier,
      :application_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute route_summary_list
    #   <p>The list of <code>RouteSummary</code> objects. </p>
    #   @return [Array<Types::RouteSummary>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListRoutesOutput < Struct.new(
      :route_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment. </p>
    #   @return [String]
    # @!attribute application_identifier
    #   <p>The ID of the application. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    class ListServicesInput < Struct.new(
      :environment_identifier,
      :application_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_summary_list
    #   <p> The list of <code>ServiceSummary</code> objects. </p>
    #   @return [Array<Types::ServiceSummary>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListServicesOutput < Struct.new(
      :service_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags assigned to the resource. </p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the policy is being attached.
    #       </p>
    #   @return [String]
    # @!attribute policy
    #   <p>A JSON-formatted string for an Amazon Web Services resource-based policy. </p>
    #   @return [String]
    class PutResourcePolicyInput < Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutResourcePolicyOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request references a resource that does not exist. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource. </p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary information for the routes as a response to <code>ListRoutes</code>. </p>
    # @!attribute route_id
    #   <p>The unique identifier of the route. </p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the route. </p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the route owner.</p>
    #   @return [String]
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the route creator. </p>
    #   @return [String]
    # @!attribute route_type
    #   <p>The route type of the route. </p>
    #   @return [String]
    # @!attribute service_id
    #   <p>The unique identifier of the service. </p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the application. </p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the environment. </p>
    #   @return [String]
    # @!attribute source_path
    #   <p>This is the path that Refactor Spaces uses to match traffic. Paths must start with <code>/</code> and are relative to
    #         the base of the application. To use path parameters in the source path, add a variable in curly braces. For example, the resource path {user} represents a path parameter called 'user'.</p>
    #   @return [String]
    # @!attribute methods
    #   <p>A list of HTTP methods to match. An empty list matches all values. If a method is present,
    #         only HTTP requests using that method are forwarded to this route’s service. </p>
    #   @return [Array<String>]
    # @!attribute include_child_paths
    #   <p>Indicates whether to match all subpaths of the given source path. If this value is
    #           <code>false</code>, requests must match the source path exactly before they are forwarded to
    #         this route's service.</p>
    #   @return [Boolean]
    # @!attribute path_resource_to_id
    #   <p>A mapping of Amazon API Gateway path resources to resource IDs. </p>
    #   @return [Hash<String, String>]
    # @!attribute state
    #   <p>The current state of the route. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the route. </p>
    #   @return [Hash<String, String>]
    # @!attribute error
    #   <p>Any error associated with the route resource. </p>
    #   @return [Types::ErrorResponse]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the route was last updated. </p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>A timestamp that indicates when the route is created. </p>
    #   @return [Time]
    # @!attribute append_source_path
    #   <p>If set to <code>true</code>, this option appends the source path to the service URL endpoint.</p>
    #   @return [Boolean]
    class RouteSummary < Struct.new(
      :route_id,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :route_type,
      :service_id,
      :application_id,
      :environment_id,
      :source_path,
      :methods,
      :include_child_paths,
      :path_resource_to_id,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      :append_source_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request would cause a service quota to be exceeded. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource. </p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Service quota requirement to identify originating quota. Reached throttling quota
    #         exception. </p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Service quota requirement to identify originating service. Reached throttling quota
    #         exception service code. </p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary for the service as a response to <code>ListServices</code>. </p>
    # @!attribute service_id
    #   <p>The unique identifier of the service. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service. </p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service. </p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the service owner.</p>
    #   @return [String]
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the service creator. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the service. </p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the environment. </p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the application. </p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the virtual private cloud (VPC). </p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The endpoint type of the service. </p>
    #   @return [String]
    # @!attribute url_endpoint
    #   <p>The summary of the configuration for the URL endpoint type. </p>
    #   @return [Types::UrlEndpointSummary]
    # @!attribute lambda_endpoint
    #   <p>A summary of the configuration for the Lambda endpoint type. </p>
    #   @return [Types::LambdaEndpointSummary]
    # @!attribute state
    #   <p>The current state of the service. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the service. </p>
    #   @return [Hash<String, String>]
    # @!attribute error
    #   <p>Any error associated with the service resource. </p>
    #   @return [Types::ErrorResponse]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the service was last updated. </p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>A timestamp that indicates when the service is created. </p>
    #   @return [Time]
    class ServiceSummary < Struct.new(
      :service_id,
      :name,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :description,
      :environment_id,
      :application_id,
      :vpc_id,
      :endpoint_type,
      :url_endpoint,
      :lambda_endpoint,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The new or modified tags for the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request was denied because the request was throttled. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute quota_code
    #   <p>Service quota requirement to identify originating quota. Reached throttling quota
    #         exception. </p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Service quota requirement to identify originating service. Reached throttling quota
    #         exception service code. </p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying. </p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of keys of the tags to be removed from the resource. </p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_identifier
    #   <p> The ID of the environment in which the route is being updated. </p>
    #   @return [String]
    # @!attribute application_identifier
    #   <p> The ID of the application within which the route is being updated. </p>
    #   @return [String]
    # @!attribute route_identifier
    #   <p> The unique identifier of the route to update. </p>
    #   @return [String]
    # @!attribute activation_state
    #   <p> If set to <code>ACTIVE</code>, traffic is forwarded to this route’s service after the
    #         route is updated. </p>
    #   @return [String]
    class UpdateRouteInput < Struct.new(
      :environment_identifier,
      :application_identifier,
      :route_identifier,
      :activation_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute route_id
    #   <p> The unique identifier of the route. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the route. The format for this ARN is 
    #   <code>arn:aws:refactor-spaces:<i>region</i>:<i>account-id</i>:<i>resource-type/resource-id</i>
    #               </code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i>. </p>
    #   @return [String]
    # @!attribute service_id
    #   <p> The ID of service in which the route was created. Traffic that matches this route is
    #         forwarded to this service. </p>
    #   @return [String]
    # @!attribute application_id
    #   <p> The ID of the application in which the route is being updated. </p>
    #   @return [String]
    # @!attribute state
    #   <p> The current state of the route. </p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p> A timestamp that indicates when the route was last updated. </p>
    #   @return [Time]
    class UpdateRouteOutput < Struct.new(
      :route_id,
      :arn,
      :service_id,
      :application_id,
      :state,
      :last_updated_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the URI path route type. </p>
    # @!attribute source_path
    #   <p>This is the path that Refactor Spaces uses to match traffic. Paths must start with <code>/</code> and are relative to
    #         the base of the application. To use path parameters in the source path, add a variable in curly braces.
    #         For example, the resource path {user} represents a path parameter called 'user'.</p>
    #   @return [String]
    # @!attribute activation_state
    #   <p>If set to <code>ACTIVE</code>, traffic is forwarded to this route’s service after the
    #         route is created. </p>
    #   @return [String]
    # @!attribute methods
    #   <p>A list of HTTP methods to match. An empty list matches all values. If a method is present,
    #         only HTTP requests using that method are forwarded to this route’s service. </p>
    #   @return [Array<String>]
    # @!attribute include_child_paths
    #   <p>Indicates whether to match all subpaths of the given source path. If this value is
    #           <code>false</code>, requests must match the source path exactly before they are forwarded to
    #         this route's service. </p>
    #   @return [Boolean]
    # @!attribute append_source_path
    #   <p>If set to <code>true</code>, this option appends the source path to the service URL endpoint.</p>
    #   @return [Boolean]
    class UriPathRouteInput < Struct.new(
      :source_path,
      :activation_state,
      :methods,
      :include_child_paths,
      :append_source_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the URL endpoint type. </p>
    # @!attribute url
    #   <p>The HTTP URL endpoint. </p>
    #   @return [String]
    # @!attribute health_url
    #   <p>The health check URL of the URL endpoint type. </p>
    #   @return [String]
    class UrlEndpointConfig < Struct.new(
      :url,
      :health_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the URL endpoint type. </p>
    # @!attribute url
    #   <p>The URL to route traffic to. The URL must be an <a href="https://datatracker.ietf.org/doc/html/rfc3986">rfc3986-formatted URL</a>. If the
    #         host is a domain name, the name must be resolvable over the public internet. If the scheme is
    #           <code>https</code>, the top level domain of the host must be listed in the <a href="https://www.iana.org/domains/root/db">IANA root zone database</a>. </p>
    #   @return [String]
    # @!attribute health_url
    #   <p>The health check URL of the URL endpoint type. If the URL is a public endpoint, the
    #           <code>HealthUrl</code> must also be a public endpoint. If the URL is a private endpoint
    #         inside a virtual private cloud (VPC), the health URL must also be a private endpoint, and the
    #         host must be the same as the URL. </p>
    #   @return [String]
    class UrlEndpointInput < Struct.new(
      :url,
      :health_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the configuration for the URL endpoint type. </p>
    # @!attribute url
    #   <p> The URL to route traffic to. The URL must be an <a href="https://datatracker.ietf.org/doc/html/rfc3986">rfc3986-formatted URL</a>. If the
    #         host is a domain name, the name must be resolvable over the public internet. If the scheme is
    #           <code>https</code>, the top level domain of the host must be listed in the <a href="https://www.iana.org/domains/root/db">IANA root zone database</a>. </p>
    #   @return [String]
    # @!attribute health_url
    #   <p>The health check URL of the URL endpoint type. If the URL is a public endpoint, the
    #           <code>HealthUrl</code> must also be a public endpoint. If the URL is a private endpoint
    #         inside a virtual private cloud (VPC), the health URL must also be a private endpoint, and the
    #         host must be the same as the URL.</p>
    #   @return [String]
    class UrlEndpointSummary < Struct.new(
      :url,
      :health_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input does not satisfy the constraints specified by an Amazon Web Service.
    #     </p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
