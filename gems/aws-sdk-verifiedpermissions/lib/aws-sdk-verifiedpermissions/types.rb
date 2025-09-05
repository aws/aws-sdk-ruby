# frozen_string_literal: true

# This is generated code!

module Aws::VerifiedPermissions
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an action for a request for which an authorization decision is made.</p> <p>This data type is used as a request parameter to the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html">IsAuthorized</a>, <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_BatchIsAuthorized.html">BatchIsAuthorized</a>, and <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html">IsAuthorizedWithToken</a> operations.</p> <p>Example: <code>{ "actionId": "&lt;action name&gt;", "actionType": "Action" }</code> </p>
    # @!attribute action_type
    #   <p>The type of an action.</p>
    #   @return [String]
    # @!attribute action_id
    #   <p>The ID of an action.</p>
    #   @return [String]
    class ActionIdentifier < Struct.new(
      :action_type,
      :action_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The value of an attribute.</p> <p>Contains information about the runtime context for a request for which an authorization decision is made. </p> <p>This data type is used as a member of the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ContextDefinition.html">ContextDefinition</a> structure which is uses as a request parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html">IsAuthorized</a>, <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_BatchIsAuthorized.html">BatchIsAuthorized</a>, and <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html">IsAuthorizedWithToken</a> operations.</p>
    # @!attribute boolean
    #   <p>An attribute value of <a href="https://docs.cedarpolicy.com/policies/syntax-datatypes.html#boolean">Boolean</a> type.</p> <p>Example: <code>{"boolean": true}</code> </p>
    #   @return [Boolean]
    # @!attribute entity_identifier
    #   <p>An attribute value of type <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_EntityIdentifier.html">EntityIdentifier</a>.</p> <p>Example: <code>"entityIdentifier": { "entityId": "&lt;id&gt;", "entityType": "&lt;entity type&gt;"}</code> </p>
    #   @return [Types::EntityIdentifier]
    # @!attribute long
    #   <p>An attribute value of <a href="https://docs.cedarpolicy.com/policies/syntax-datatypes.html#long">Long</a> type.</p> <p>Example: <code>{"long": 0}</code> </p>
    #   @return [Integer]
    # @!attribute string
    #   <p>An attribute value of <a href="https://docs.cedarpolicy.com/policies/syntax-datatypes.html#string">String</a> type.</p> <p>Example: <code>{"string": "abc"}</code> </p>
    #   @return [String]
    # @!attribute set
    #   <p>An attribute value of <a href="https://docs.cedarpolicy.com/policies/syntax-datatypes.html#set">Set</a> type.</p> <p>Example: <code>{"set": [ {} ] }</code> </p>
    #   @return [Array<Types::AttributeValue>]
    # @!attribute record
    #   <p>An attribute value of <a href="https://docs.cedarpolicy.com/policies/syntax-datatypes.html#record">Record</a> type.</p> <p>Example: <code>{"record": { "keyName": {} } }</code> </p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute ipaddr
    #   <p>An attribute value of <a href="https://docs.cedarpolicy.com/policies/syntax-datatypes.html#datatype-ipaddr">ipaddr</a> type.</p> <p>Example: <code>{"ip": "192.168.1.100"}</code> </p>
    #   @return [String]
    # @!attribute decimal
    #   <p>An attribute value of <a href="https://docs.cedarpolicy.com/policies/syntax-datatypes.html#datatype-decimal">decimal</a> type.</p> <p>Example: <code>{"decimal": "1.1"}</code> </p>
    #   @return [String]
    class AttributeValue < Struct.new(
      :boolean,
      :entity_identifier,
      :long,
      :string,
      :set,
      :record,
      :ipaddr,
      :decimal,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Boolean < AttributeValue; end
      class EntityIdentifier < AttributeValue; end
      class Long < AttributeValue; end
      class String < AttributeValue; end
      class Set < AttributeValue; end
      class Record < AttributeValue; end
      class Ipaddr < AttributeValue; end
      class Decimal < AttributeValue; end
      class Unknown < AttributeValue; end
    end

    # <p>Contains the information about an error resulting from a <code>BatchGetPolicy</code> API call.</p>
    # @!attribute code
    #   <p>The error code that was returned.</p>
    #   @return [String]
    # @!attribute policy_store_id
    #   <p>The identifier of the policy store associated with the failed request.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The identifier of the policy associated with the failed request.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class BatchGetPolicyErrorItem < Struct.new(
      :code,
      :policy_store_id,
      :policy_id,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute requests
    #   <p>An array of up to 100 policies you want information about.</p>
    #   @return [Array<Types::BatchGetPolicyInputItem>]
    class BatchGetPolicyInput < Struct.new(
      :requests,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a policy that you include in a <code>BatchGetPolicy</code> API request.</p>
    # @!attribute policy_store_id
    #   <p>The identifier of the policy store where the policy you want information about is stored.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The identifier of the policy you want information about.</p>
    #   @return [String]
    class BatchGetPolicyInputItem < Struct.new(
      :policy_store_id,
      :policy_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>Information about the policies listed in the request that were successfully returned. These results are returned in the order they were requested.</p>
    #   @return [Array<Types::BatchGetPolicyOutputItem>]
    # @!attribute errors
    #   <p>Information about the policies from the request that resulted in an error. These results are returned in the order they were requested.</p>
    #   @return [Array<Types::BatchGetPolicyErrorItem>]
    class BatchGetPolicyOutput < Struct.new(
      :results,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a policy returned from a <code>BatchGetPolicy</code> API request.</p>
    # @!attribute policy_store_id
    #   <p>The identifier of the policy store where the policy you want information about is stored.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The identifier of the policy you want information about.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The type of the policy. This is one of the following values:</p> <ul> <li> <p> <code>STATIC</code> </p> </li> <li> <p> <code>TEMPLATE_LINKED</code> </p> </li> </ul>
    #   @return [String]
    # @!attribute definition
    #   <p>The policy definition of an item in the list of policies returned.</p>
    #   @return [Types::PolicyDefinitionDetail]
    # @!attribute created_date
    #   <p>The date and time the policy was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The date and time the policy was most recently updated.</p>
    #   @return [Time]
    class BatchGetPolicyOutputItem < Struct.new(
      :policy_store_id,
      :policy_id,
      :policy_type,
      :definition,
      :created_date,
      :last_updated_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store. Policies in this policy store will be used to make the authorization decisions for the input.</p>
    #   @return [String]
    # @!attribute entities
    #   <p>(Optional) Specifies the list of resources and principals and their associated attributes that Verified Permissions can examine when evaluating the policies. These additional entities and their attributes can be referenced and checked by conditional elements in the policies in the specified policy store.</p> <note> <p>You can include only principal and resource entities in this parameter; you can't include actions. You must specify actions in the schema.</p> </note>
    #   @return [Types::EntitiesDefinition]
    # @!attribute requests
    #   <p>An array of up to 30 requests that you want Verified Permissions to evaluate.</p>
    #   @return [Array<Types::BatchIsAuthorizedInputItem>]
    class BatchIsAuthorizedInput < Struct.new(
      :policy_store_id,
      :entities,
      :requests,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An authorization request that you include in a <code>BatchIsAuthorized</code> API request.</p>
    # @!attribute principal
    #   <p>Specifies the principal for which the authorization decision is to be made.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute action
    #   <p>Specifies the requested action to be authorized. For example, <code>PhotoFlash::ReadPhoto</code>.</p>
    #   @return [Types::ActionIdentifier]
    # @!attribute resource
    #   <p>Specifies the resource that you want an authorization decision for. For example, <code>PhotoFlash::Photo</code>.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute context
    #   <p>Specifies additional context that can be used to make more granular authorization decisions.</p>
    #   @return [Types::ContextDefinition]
    class BatchIsAuthorizedInputItem < Struct.new(
      :principal,
      :action,
      :resource,
      :context,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>A series of <code>Allow</code> or <code>Deny</code> decisions for each request, and the policies that produced them. These results are returned in the order they were requested.</p>
    #   @return [Array<Types::BatchIsAuthorizedOutputItem>]
    class BatchIsAuthorizedOutput < Struct.new(
      :results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The decision, based on policy evaluation, from an individual authorization request in a <code>BatchIsAuthorized</code> API request.</p>
    # @!attribute request
    #   <p>The authorization request that initiated the decision.</p>
    #   @return [Types::BatchIsAuthorizedInputItem]
    # @!attribute decision
    #   <p>An authorization decision that indicates if the authorization request should be allowed or denied.</p>
    #   @return [String]
    # @!attribute determining_policies
    #   <p>The list of determining policies used to make the authorization decision. For example, if there are two matching policies, where one is a forbid and the other is a permit, then the forbid policy will be the determining policy. In the case of multiple matching permit policies then there would be multiple determining policies. In the case that no policies match, and hence the response is DENY, there would be no determining policies.</p>
    #   @return [Array<Types::DeterminingPolicyItem>]
    # @!attribute errors
    #   <p>Errors that occurred while making an authorization decision. For example, a policy might reference an entity or attribute that doesn't exist in the request.</p>
    #   @return [Array<Types::EvaluationErrorItem>]
    class BatchIsAuthorizedOutputItem < Struct.new(
      :request,
      :decision,
      :determining_policies,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store. Policies in this policy store will be used to make an authorization decision for the input.</p>
    #   @return [String]
    # @!attribute identity_token
    #   <p>Specifies an identity (ID) token for the principal that you want to authorize in each request. This token is provided to you by the identity provider (IdP) associated with the specified identity source. You must specify either an <code>accessToken</code>, an <code>identityToken</code>, or both.</p> <p>Must be an ID token. Verified Permissions returns an error if the <code>token_use</code> claim in the submitted token isn't <code>id</code>.</p>
    #   @return [String]
    # @!attribute access_token
    #   <p>Specifies an access token for the principal that you want to authorize in each request. This token is provided to you by the identity provider (IdP) associated with the specified identity source. You must specify either an <code>accessToken</code>, an <code>identityToken</code>, or both.</p> <p>Must be an access token. Verified Permissions returns an error if the <code>token_use</code> claim in the submitted token isn't <code>access</code>.</p>
    #   @return [String]
    # @!attribute entities
    #   <p>(Optional) Specifies the list of resources and their associated attributes that Verified Permissions can examine when evaluating the policies. These additional entities and their attributes can be referenced and checked by conditional elements in the policies in the specified policy store.</p> <important> <p>You can't include principals in this parameter, only resource and action entities. This parameter can't include any entities of a type that matches the user or group entity types that you defined in your identity source.</p> <ul> <li> <p>The <code>BatchIsAuthorizedWithToken</code> operation takes principal attributes from <b> <i>only</i> </b> the <code>identityToken</code> or <code>accessToken</code> passed to the operation.</p> </li> <li> <p>For action entities, you can include only their <code>Identifier</code> and <code>EntityType</code>. </p> </li> </ul> </important>
    #   @return [Types::EntitiesDefinition]
    # @!attribute requests
    #   <p>An array of up to 30 requests that you want Verified Permissions to evaluate.</p>
    #   @return [Array<Types::BatchIsAuthorizedWithTokenInputItem>]
    class BatchIsAuthorizedWithTokenInput < Struct.new(
      :policy_store_id,
      :identity_token,
      :access_token,
      :entities,
      :requests,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An authorization request that you include in a <code>BatchIsAuthorizedWithToken</code> API request.</p>
    # @!attribute action
    #   <p>Specifies the requested action to be authorized. For example, <code>PhotoFlash::ReadPhoto</code>.</p>
    #   @return [Types::ActionIdentifier]
    # @!attribute resource
    #   <p>Specifies the resource that you want an authorization decision for. For example, <code>PhotoFlash::Photo</code>.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute context
    #   <p>Specifies additional context that can be used to make more granular authorization decisions.</p>
    #   @return [Types::ContextDefinition]
    class BatchIsAuthorizedWithTokenInputItem < Struct.new(
      :action,
      :resource,
      :context,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute principal
    #   <p>The identifier of the principal in the ID or access token.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute results
    #   <p>A series of <code>Allow</code> or <code>Deny</code> decisions for each request, and the policies that produced them. These results are returned in the order they were requested.</p>
    #   @return [Array<Types::BatchIsAuthorizedWithTokenOutputItem>]
    class BatchIsAuthorizedWithTokenOutput < Struct.new(
      :principal,
      :results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The decision, based on policy evaluation, from an individual authorization request in a <code>BatchIsAuthorizedWithToken</code> API request.</p>
    # @!attribute request
    #   <p>The authorization request that initiated the decision.</p>
    #   @return [Types::BatchIsAuthorizedWithTokenInputItem]
    # @!attribute decision
    #   <p>An authorization decision that indicates if the authorization request should be allowed or denied.</p>
    #   @return [String]
    # @!attribute determining_policies
    #   <p>The list of determining policies used to make the authorization decision. For example, if there are two matching policies, where one is a forbid and the other is a permit, then the forbid policy will be the determining policy. In the case of multiple matching permit policies then there would be multiple determining policies. In the case that no policies match, and hence the response is DENY, there would be no determining policies.</p>
    #   @return [Array<Types::DeterminingPolicyItem>]
    # @!attribute errors
    #   <p>Errors that occurred while making an authorization decision. For example, a policy might reference an entity or attribute that doesn't exist in the request.</p>
    #   @return [Array<Types::EvaluationErrorItem>]
    class BatchIsAuthorizedWithTokenOutputItem < Struct.new(
      :request,
      :decision,
      :determining_policies,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The type of entity that a policy store maps to groups from an Amazon Cognito user pool identity source.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CognitoUserPoolConfiguration.html">CognitoUserPoolConfiguration</a> structure and is a request parameter in <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreateIdentitySource.html">CreateIdentitySource</a>.</p>
    # @!attribute group_entity_type
    #   <p>The name of the schema entity type that's mapped to the user pool group. Defaults to <code>AWS::CognitoGroup</code>.</p>
    #   @return [String]
    class CognitoGroupConfiguration < Struct.new(
      :group_entity_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The type of entity that a policy store maps to groups from an Amazon Cognito user pool identity source.</p> <p>This data type is part of an <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CognitoUserPoolConfigurationItem.html">CognitoUserPoolConfigurationDetail</a> structure and is a response parameter to <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_GetIdentitySource.html">GetIdentitySource</a>.</p>
    # @!attribute group_entity_type
    #   <p>The name of the schema entity type that's mapped to the user pool group. Defaults to <code>AWS::CognitoGroup</code>.</p>
    #   @return [String]
    class CognitoGroupConfigurationDetail < Struct.new(
      :group_entity_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The type of entity that a policy store maps to groups from an Amazon Cognito user pool identity source.</p> <p>This data type is part of an <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CognitoUserPoolConfigurationDetail.html">CognitoUserPoolConfigurationItem</a> structure and is a response parameter to <a href="http://forums.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListIdentitySources.html">ListIdentitySources</a>.</p>
    # @!attribute group_entity_type
    #   <p>The name of the schema entity type that's mapped to the user pool group. Defaults to <code>AWS::CognitoGroup</code>.</p>
    #   @return [String]
    class CognitoGroupConfigurationItem < Struct.new(
      :group_entity_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an identity source that represents a connection to an Amazon Cognito user pool used as an identity provider for Verified Permissions.</p> <p>This data type part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_Configuration.html">Configuration</a> structure that is used as a parameter to <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreateIdentitySource.html">CreateIdentitySource</a>.</p> <p>Example:<code>"CognitoUserPoolConfiguration":{"UserPoolArn":"arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5","ClientIds": ["a1b2c3d4e5f6g7h8i9j0kalbmc"],"groupConfiguration": {"groupEntityType": "MyCorp::Group"}}</code> </p>
    # @!attribute user_pool_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the Amazon Cognito user pool that contains the identities to be authorized.</p> <p>Example: <code>"UserPoolArn": "arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5"</code> </p>
    #   @return [String]
    # @!attribute client_ids
    #   <p>The unique application client IDs that are associated with the specified Amazon Cognito user pool.</p> <p>Example: <code>"ClientIds": ["&amp;ExampleCogClientId;"]</code> </p>
    #   @return [Array<String>]
    # @!attribute group_configuration
    #   <p>The type of entity that a policy store maps to groups from an Amazon Cognito user pool identity source.</p>
    #   @return [Types::CognitoGroupConfiguration]
    class CognitoUserPoolConfiguration < Struct.new(
      :user_pool_arn,
      :client_ids,
      :group_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an identity source that represents a connection to an Amazon Cognito user pool used as an identity provider for Verified Permissions.</p> <p>This data type is used as a field that is part of an <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ConfigurationDetail.html">ConfigurationDetail</a> structure that is part of the response to <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_GetIdentitySource.html">GetIdentitySource</a>.</p> <p>Example:<code>"CognitoUserPoolConfiguration":{"UserPoolArn":"arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5","ClientIds": ["a1b2c3d4e5f6g7h8i9j0kalbmc"],"groupConfiguration": {"groupEntityType": "MyCorp::Group"}}</code> </p>
    # @!attribute user_pool_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the Amazon Cognito user pool that contains the identities to be authorized.</p> <p>Example: <code>"userPoolArn": "arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5"</code> </p>
    #   @return [String]
    # @!attribute client_ids
    #   <p>The unique application client IDs that are associated with the specified Amazon Cognito user pool.</p> <p>Example: <code>"clientIds": ["&amp;ExampleCogClientId;"]</code> </p>
    #   @return [Array<String>]
    # @!attribute issuer
    #   <p>The OpenID Connect (OIDC) <code>issuer</code> ID of the Amazon Cognito user pool that contains the identities to be authorized.</p> <p>Example: <code>"issuer": "https://cognito-idp.us-east-1.amazonaws.com/us-east-1_1a2b3c4d5"</code> </p>
    #   @return [String]
    # @!attribute group_configuration
    #   <p>The type of entity that a policy store maps to groups from an Amazon Cognito user pool identity source.</p>
    #   @return [Types::CognitoGroupConfigurationDetail]
    class CognitoUserPoolConfigurationDetail < Struct.new(
      :user_pool_arn,
      :client_ids,
      :issuer,
      :group_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an identity source that represents a connection to an Amazon Cognito user pool used as an identity provider for Verified Permissions.</p> <p>This data type is used as a field that is part of the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ConfigurationItem.html">ConfigurationItem</a> structure that is part of the response to <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListIdentitySources.html">ListIdentitySources</a>.</p> <p>Example:<code>"CognitoUserPoolConfiguration":{"UserPoolArn":"arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5","ClientIds": ["a1b2c3d4e5f6g7h8i9j0kalbmc"],"groupConfiguration": {"groupEntityType": "MyCorp::Group"}}</code> </p>
    # @!attribute user_pool_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the Amazon Cognito user pool that contains the identities to be authorized.</p> <p>Example: <code>"userPoolArn": "arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5"</code> </p>
    #   @return [String]
    # @!attribute client_ids
    #   <p>The unique application client IDs that are associated with the specified Amazon Cognito user pool.</p> <p>Example: <code>"clientIds": ["&amp;ExampleCogClientId;"]</code> </p>
    #   @return [Array<String>]
    # @!attribute issuer
    #   <p>The OpenID Connect (OIDC) <code>issuer</code> ID of the Amazon Cognito user pool that contains the identities to be authorized.</p> <p>Example: <code>"issuer": "https://cognito-idp.us-east-1.amazonaws.com/us-east-1_1a2b3c4d5"</code> </p>
    #   @return [String]
    # @!attribute group_configuration
    #   <p>The type of entity that a policy store maps to groups from an Amazon Cognito user pool identity source.</p>
    #   @return [Types::CognitoGroupConfigurationItem]
    class CognitoUserPoolConfigurationItem < Struct.new(
      :user_pool_arn,
      :client_ids,
      :issuer,
      :group_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration information used when creating a new identity source.</p> <p>This data type is used as a request parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreateIdentitySource.html">CreateIdentitySource</a> operation.</p>
    # @!attribute cognito_user_pool_configuration
    #   <p>Contains configuration details of a Amazon Cognito user pool that Verified Permissions can use as a source of authenticated identities as entities. It specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of a Amazon Cognito user pool and one or more application client IDs.</p> <p>Example: <code>"configuration":{"cognitoUserPoolConfiguration":{"userPoolArn":"arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5","clientIds": ["a1b2c3d4e5f6g7h8i9j0kalbmc"],"groupConfiguration": {"groupEntityType": "MyCorp::Group"}}}</code> </p>
    #   @return [Types::CognitoUserPoolConfiguration]
    # @!attribute open_id_connect_configuration
    #   <p>Contains configuration details of an OpenID Connect (OIDC) identity provider, or identity source, that Verified Permissions can use to generate entities from authenticated identities. It specifies the issuer URL, token type that you want to use, and policy store entity details.</p> <p>Example:<code>"configuration":{"openIdConnectConfiguration":{"issuer":"https://auth.example.com","tokenSelection":{"accessTokenOnly":{"audiences":["https://myapp.example.com","https://myapp2.example.com"],"principalIdClaim":"sub"}},"entityIdPrefix":"MyOIDCProvider","groupConfiguration":{"groupClaim":"groups","groupEntityType":"MyCorp::UserGroup"}}}</code> </p>
    #   @return [Types::OpenIdConnectConfiguration]
    class Configuration < Struct.new(
      :cognito_user_pool_configuration,
      :open_id_connect_configuration,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class CognitoUserPoolConfiguration < Configuration; end
      class OpenIdConnectConfiguration < Configuration; end
      class Unknown < Configuration; end
    end

    # <p>Contains configuration information about an identity source.</p> <p>This data type is a response parameter to the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_GetIdentitySource.html">GetIdentitySource</a> operation.</p>
    # @!attribute cognito_user_pool_configuration
    #   <p>Contains configuration details of a Amazon Cognito user pool that Verified Permissions can use as a source of authenticated identities as entities. It specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of a Amazon Cognito user pool, the policy store entity that you want to assign to user groups, and one or more application client IDs.</p> <p>Example: <code>"configuration":{"cognitoUserPoolConfiguration":{"userPoolArn":"arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5","clientIds": ["a1b2c3d4e5f6g7h8i9j0kalbmc"],"groupConfiguration": {"groupEntityType": "MyCorp::Group"}}}</code> </p>
    #   @return [Types::CognitoUserPoolConfigurationDetail]
    # @!attribute open_id_connect_configuration
    #   <p>Contains configuration details of an OpenID Connect (OIDC) identity provider, or identity source, that Verified Permissions can use to generate entities from authenticated identities. It specifies the issuer URL, token type that you want to use, and policy store entity details.</p> <p>Example:<code>"configuration":{"openIdConnectConfiguration":{"issuer":"https://auth.example.com","tokenSelection":{"accessTokenOnly":{"audiences":["https://myapp.example.com","https://myapp2.example.com"],"principalIdClaim":"sub"}},"entityIdPrefix":"MyOIDCProvider","groupConfiguration":{"groupClaim":"groups","groupEntityType":"MyCorp::UserGroup"}}}</code> </p>
    #   @return [Types::OpenIdConnectConfigurationDetail]
    class ConfigurationDetail < Struct.new(
      :cognito_user_pool_configuration,
      :open_id_connect_configuration,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class CognitoUserPoolConfiguration < ConfigurationDetail; end
      class OpenIdConnectConfiguration < ConfigurationDetail; end
      class Unknown < ConfigurationDetail; end
    end

    # <p>Contains configuration information about an identity source.</p> <p>This data type is a response parameter to the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListIdentitySources.html">ListIdentitySources</a> operation.</p>
    # @!attribute cognito_user_pool_configuration
    #   <p>Contains configuration details of a Amazon Cognito user pool that Verified Permissions can use as a source of authenticated identities as entities. It specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of a Amazon Cognito user pool, the policy store entity that you want to assign to user groups, and one or more application client IDs.</p> <p>Example: <code>"configuration":{"cognitoUserPoolConfiguration":{"userPoolArn":"arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5","clientIds": ["a1b2c3d4e5f6g7h8i9j0kalbmc"],"groupConfiguration": {"groupEntityType": "MyCorp::Group"}}}</code> </p>
    #   @return [Types::CognitoUserPoolConfigurationItem]
    # @!attribute open_id_connect_configuration
    #   <p>Contains configuration details of an OpenID Connect (OIDC) identity provider, or identity source, that Verified Permissions can use to generate entities from authenticated identities. It specifies the issuer URL, token type that you want to use, and policy store entity details.</p> <p>Example:<code>"configuration":{"openIdConnectConfiguration":{"issuer":"https://auth.example.com","tokenSelection":{"accessTokenOnly":{"audiences":["https://myapp.example.com","https://myapp2.example.com"],"principalIdClaim":"sub"}},"entityIdPrefix":"MyOIDCProvider","groupConfiguration":{"groupClaim":"groups","groupEntityType":"MyCorp::UserGroup"}}}</code> </p>
    #   @return [Types::OpenIdConnectConfigurationItem]
    class ConfigurationItem < Struct.new(
      :cognito_user_pool_configuration,
      :open_id_connect_configuration,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class CognitoUserPoolConfiguration < ConfigurationItem; end
      class OpenIdConnectConfiguration < ConfigurationItem; end
      class Unknown < ConfigurationItem; end
    end

    # <p>The request failed because another request to modify a resource occurred at the same.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resources
    #   <p>The list of resources referenced with this failed request.</p>
    #   @return [Array<Types::ResourceConflict>]
    class ConflictException < Struct.new(
      :message,
      :resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains additional details about the context of the request. Verified Permissions evaluates this information in an authorization request as part of the <code>when</code> and <code>unless</code> clauses in a policy.</p> <p>This data type is used as a request parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html">IsAuthorized</a>, <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_BatchIsAuthorized.html">BatchIsAuthorized</a>, and <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html">IsAuthorizedWithToken</a> operations.</p> <p>If you're passing context as part of the request, exactly one instance of <code>context</code> must be passed. If you don't want to pass context, omit the <code>context</code> parameter from your request rather than sending <code>context {}</code>.</p> <p>Example: <code>"context":{"contextMap":{"&lt;KeyName1&gt;":{"boolean":true},"&lt;KeyName2&gt;":{"long":1234}}}</code> </p>
    # @!attribute context_map
    #   <p>An list of attributes that are needed to successfully evaluate an authorization request. Each attribute in this array must include a map of a data type and its value.</p> <p>Example: <code>"contextMap":{"&lt;KeyName1&gt;":{"boolean":true},"&lt;KeyName2&gt;":{"long":1234}}</code> </p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute cedar_json
    #   <p>A Cedar JSON string representation of the context needed to successfully evaluate an authorization request.</p> <p>Example: <code>{"cedarJson":"{\"&lt;KeyName1&gt;\": true, \"&lt;KeyName2&gt;\": 1234}" }</code> </p>
    #   @return [String]
    class ContextDefinition < Struct.new(
      :context_map,
      :cedar_json,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class ContextMap < ContextDefinition; end
      class CedarJson < ContextDefinition; end
      class Unknown < ContextDefinition; end
    end

    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive ID that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value.</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>ConflictException</code> error.</p> <p>Verified Permissions recognizes a <code>ClientToken</code> for eight hours. After eight hours, the next request with the same parameters performs the operation again regardless of the value of <code>ClientToken</code>.</p>
    #   @return [String]
    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store in which you want to store this identity source. Only policies and requests made using this policy store can reference identities from the identity provider configured in the new identity source.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Specifies the details required to communicate with the identity provider (IdP) associated with this identity source.</p>
    #   @return [Types::Configuration]
    # @!attribute principal_entity_type
    #   <p>Specifies the namespace and data type of the principals generated for identities authenticated by the new identity source.</p>
    #   @return [String]
    class CreateIdentitySourceInput < Struct.new(
      :client_token,
      :policy_store_id,
      :configuration,
      :principal_entity_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute created_date
    #   <p>The date and time the identity source was originally created.</p>
    #   @return [Time]
    # @!attribute identity_source_id
    #   <p>The unique ID of the new identity source.</p>
    #   @return [String]
    # @!attribute last_updated_date
    #   <p>The date and time the identity source was most recently updated.</p>
    #   @return [Time]
    # @!attribute policy_store_id
    #   <p>The ID of the policy store that contains the identity source.</p>
    #   @return [String]
    class CreateIdentitySourceOutput < Struct.new(
      :created_date,
      :identity_source_id,
      :last_updated_date,
      :policy_store_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive ID that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value.</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>ConflictException</code> error.</p> <p>Verified Permissions recognizes a <code>ClientToken</code> for eight hours. After eight hours, the next request with the same parameters performs the operation again regardless of the value of <code>ClientToken</code>.</p>
    #   @return [String]
    # @!attribute policy_store_id
    #   <p>Specifies the <code>PolicyStoreId</code> of the policy store you want to store the policy in.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>A structure that specifies the policy type and content to use for the new policy. You must include either a static or a templateLinked element. The policy content must be written in the Cedar policy language.</p>
    #   @return [Types::PolicyDefinition]
    class CreatePolicyInput < Struct.new(
      :client_token,
      :policy_store_id,
      :definition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>The ID of the policy store that contains the new policy.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The unique ID of the new policy.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The policy type of the new policy.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal specified in the new policy's scope. This response element isn't present when <code>principal</code> isn't specified in the policy content.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute resource
    #   <p>The resource specified in the new policy's scope. This response element isn't present when the <code>resource</code> isn't specified in the policy content.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute actions
    #   <p>The action that a policy permits or forbids. For example, <code>{"actions": [{"actionId": "ViewPhoto", "actionType": "PhotoFlash::Action"}, {"entityID": "SharePhoto", "entityType": "PhotoFlash::Action"}]}</code>.</p>
    #   @return [Array<Types::ActionIdentifier>]
    # @!attribute created_date
    #   <p>The date and time the policy was originally created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The date and time the policy was last updated.</p>
    #   @return [Time]
    # @!attribute effect
    #   <p>The effect of the decision that a policy returns to an authorization request. For example, <code>"effect": "Permit"</code>.</p>
    #   @return [String]
    class CreatePolicyOutput < Struct.new(
      :policy_store_id,
      :policy_id,
      :policy_type,
      :principal,
      :resource,
      :actions,
      :created_date,
      :last_updated_date,
      :effect,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive ID that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value.</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>ConflictException</code> error.</p> <p>Verified Permissions recognizes a <code>ClientToken</code> for eight hours. After eight hours, the next request with the same parameters performs the operation again regardless of the value of <code>ClientToken</code>.</p>
    #   @return [String]
    # @!attribute validation_settings
    #   <p>Specifies the validation setting for this policy store.</p> <p>Currently, the only valid and required value is <code>Mode</code>.</p> <important> <p>We recommend that you turn on <code>STRICT</code> mode only after you define a schema. If a schema doesn't exist, then <code>STRICT</code> mode causes any policy to fail validation, and Verified Permissions rejects the policy. You can turn off validation by using the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyStore">UpdatePolicyStore</a>. Then, when you have a schema defined, use <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyStore">UpdatePolicyStore</a> again to turn validation back on.</p> </important>
    #   @return [Types::ValidationSettings]
    # @!attribute description
    #   <p>Descriptive text that you can provide to help with identification of the current policy store.</p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>Specifies whether the policy store can be deleted. If enabled, the policy store can't be deleted.</p> <p>The default state is <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the policy store.</p>
    #   @return [Hash<String, String>]
    class CreatePolicyStoreInput < Struct.new(
      :client_token,
      :validation_settings,
      :description,
      :deletion_protection,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>The unique ID of the new policy store.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the new policy store.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date and time the policy store was originally created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The date and time the policy store was last updated.</p>
    #   @return [Time]
    class CreatePolicyStoreOutput < Struct.new(
      :policy_store_id,
      :arn,
      :created_date,
      :last_updated_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive ID that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value.</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>ConflictException</code> error.</p> <p>Verified Permissions recognizes a <code>ClientToken</code> for eight hours. After eight hours, the next request with the same parameters performs the operation again regardless of the value of <code>ClientToken</code>.</p>
    #   @return [String]
    # @!attribute policy_store_id
    #   <p>The ID of the policy store in which to create the policy template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Specifies a description for the policy template.</p>
    #   @return [String]
    # @!attribute statement
    #   <p>Specifies the content that you want to use for the new policy template, written in the Cedar policy language.</p>
    #   @return [String]
    class CreatePolicyTemplateInput < Struct.new(
      :client_token,
      :policy_store_id,
      :description,
      :statement,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>The ID of the policy store that contains the policy template.</p>
    #   @return [String]
    # @!attribute policy_template_id
    #   <p>The unique ID of the new policy template.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date and time the policy template was originally created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The date and time the policy template was most recently updated.</p>
    #   @return [Time]
    class CreatePolicyTemplateOutput < Struct.new(
      :policy_store_id,
      :policy_template_id,
      :created_date,
      :last_updated_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store that contains the identity source that you want to delete.</p>
    #   @return [String]
    # @!attribute identity_source_id
    #   <p>Specifies the ID of the identity source that you want to delete.</p>
    #   @return [String]
    class DeleteIdentitySourceInput < Struct.new(
      :policy_store_id,
      :identity_source_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteIdentitySourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store that contains the policy that you want to delete.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>Specifies the ID of the policy that you want to delete.</p>
    #   @return [String]
    class DeletePolicyInput < Struct.new(
      :policy_store_id,
      :policy_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeletePolicyOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store that you want to delete.</p>
    #   @return [String]
    class DeletePolicyStoreInput < Struct.new(
      :policy_store_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeletePolicyStoreOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store that contains the policy template that you want to delete.</p>
    #   @return [String]
    # @!attribute policy_template_id
    #   <p>Specifies the ID of the policy template that you want to delete.</p>
    #   @return [String]
    class DeletePolicyTemplateInput < Struct.new(
      :policy_store_id,
      :policy_template_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeletePolicyTemplateOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about one of the policies that determined an authorization decision.</p> <p>This data type is used as an element in a response parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html">IsAuthorized</a>, <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_BatchIsAuthorized.html">BatchIsAuthorized</a>, and <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html">IsAuthorizedWithToken</a> operations.</p> <p>Example: <code>"determiningPolicies":[{"policyId":"SPEXAMPLEabcdefg111111"}]</code> </p>
    # @!attribute policy_id
    #   <p>The Id of a policy that determined to an authorization decision.</p> <p>Example: <code>"policyId":"SPEXAMPLEabcdefg111111"</code> </p>
    #   @return [String]
    class DeterminingPolicyItem < Struct.new(
      :policy_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the list of entities to be considered during an authorization request. This includes all principals, resources, and actions required to successfully evaluate the request.</p> <p>This data type is used as a field in the response parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html">IsAuthorized</a> and <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html">IsAuthorizedWithToken</a> operations.</p>
    # @!attribute entity_list
    #   <p>An array of entities that are needed to successfully evaluate an authorization request. Each entity in this array must include an identifier for the entity, the attributes of the entity, and a list of any parent entities.</p> <note> <p>If you include multiple entities with the same <code>identifier</code>, only the last one is processed in the request.</p> </note>
    #   @return [Array<Types::EntityItem>]
    # @!attribute cedar_json
    #   <p>A Cedar JSON string representation of the entities needed to successfully evaluate an authorization request.</p> <p>Example: <code>{"cedarJson": "[{\"uid\":{\"type\":\"Photo\",\"id\":\"VacationPhoto94.jpg\"},\"attrs\":{\"accessLevel\":\"public\"},\"parents\":[]}]"}</code> </p>
    #   @return [String]
    class EntitiesDefinition < Struct.new(
      :entity_list,
      :cedar_json,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class EntityList < EntitiesDefinition; end
      class CedarJson < EntitiesDefinition; end
      class Unknown < EntitiesDefinition; end
    end

    # <p>Contains the identifier of an entity, including its ID and type.</p> <p>This data type is used as a request parameter for <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html">IsAuthorized</a> operation, and as a response parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreatePolicy.html">CreatePolicy</a>, <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_GetPolicy.html">GetPolicy</a>, and <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicy.html">UpdatePolicy</a> operations.</p> <p>Example: <code>{"entityId":"<i>string</i>","entityType":"<i>string</i>"}</code> </p>
    # @!attribute entity_type
    #   <p>The type of an entity.</p> <p>Example: <code>"entityType":"<i>typeName</i>"</code> </p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The identifier of an entity.</p> <p> <code>"entityId":"<i>identifier</i>"</code> </p>
    #   @return [String]
    class EntityIdentifier < Struct.new(
      :entity_type,
      :entity_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an entity that can be referenced in a Cedar policy.</p> <p>This data type is used as one of the fields in the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_EntitiesDefinition.html">EntitiesDefinition</a> structure.</p> <p> <code>{ "identifier": { "entityType": "Photo", "entityId": "VacationPhoto94.jpg" }, "attributes": {}, "parents": [ { "entityType": "Album", "entityId": "alice_folder" } ] }</code> </p>
    # @!attribute identifier
    #   <p>The identifier of the entity.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute attributes
    #   <p>A list of attributes for the entity.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute parents
    #   <p>The parent entities in the hierarchy that contains the entity. A principal or resource entity can be defined with at most 99 <i>transitive parents</i> per authorization request. </p> <p>A transitive parent is an entity in the hierarchy of entities including all direct parents, and parents of parents. For example, a user can be a member of 91 groups if one of those groups is a member of eight groups, for a total of 100: one entity, 91 entity parents, and eight parents of parents. </p>
    #   @return [Array<Types::EntityIdentifier>]
    class EntityItem < Struct.new(
      :identifier,
      :attributes,
      :parents,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a principal or resource that can be referenced in a Cedar policy.</p> <p>This data type is used as part of the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_PolicyFilter.html">PolicyFilter</a> structure that is used as a request parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicies.html">ListPolicies</a> operation..</p>
    # @!attribute unspecified
    #   <p>Used to indicate that a principal or resource is not specified. This can be used to search for policies that are not associated with a specific principal or resource.</p>
    #   @return [Boolean]
    # @!attribute identifier
    #   <p>The identifier of the entity. It can consist of either an EntityType and EntityId, a principal, or a resource.</p>
    #   @return [Types::EntityIdentifier]
    class EntityReference < Struct.new(
      :unspecified,
      :identifier,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Unspecified < EntityReference; end
      class Identifier < EntityReference; end
      class Unknown < EntityReference; end
    end

    # <p>Contains a description of an evaluation error.</p> <p>This data type is a response parameter of the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html">IsAuthorized</a>, <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_BatchIsAuthorized.html">BatchIsAuthorized</a>, and <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html">IsAuthorizedWithToken</a> operations.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute error_description
    #   <p>The error description.</p>
    #   @return [String]
    class EvaluationErrorItem < Struct.new(
      :error_description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store that contains the identity source you want information about.</p>
    #   @return [String]
    # @!attribute identity_source_id
    #   <p>Specifies the ID of the identity source you want information about.</p>
    #   @return [String]
    class GetIdentitySourceInput < Struct.new(
      :policy_store_id,
      :identity_source_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute created_date
    #   <p>The date and time that the identity source was originally created.</p>
    #   @return [Time]
    # @!attribute details
    #   <p>A structure that describes the configuration of the identity source.</p>
    #   @deprecated
    #     This attribute has been replaced by configuration.cognitoUserPoolConfiguration
    #   @return [Types::IdentitySourceDetails]
    # @!attribute identity_source_id
    #   <p>The ID of the identity source.</p>
    #   @return [String]
    # @!attribute last_updated_date
    #   <p>The date and time that the identity source was most recently updated.</p>
    #   @return [Time]
    # @!attribute policy_store_id
    #   <p>The ID of the policy store that contains the identity source.</p>
    #   @return [String]
    # @!attribute principal_entity_type
    #   <p>The data type of principals generated for identities authenticated by this identity source.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Contains configuration information about an identity source.</p>
    #   @return [Types::ConfigurationDetail]
    class GetIdentitySourceOutput < Struct.new(
      :created_date,
      :details,
      :identity_source_id,
      :last_updated_date,
      :policy_store_id,
      :principal_entity_type,
      :configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store that contains the policy that you want information about.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>Specifies the ID of the policy you want information about.</p>
    #   @return [String]
    class GetPolicyInput < Struct.new(
      :policy_store_id,
      :policy_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>The ID of the policy store that contains the policy that you want information about.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The unique ID of the policy that you want information about.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The type of the policy.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal specified in the policy's scope. This element isn't included in the response when <code>Principal</code> isn't present in the policy content.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute resource
    #   <p>The resource specified in the policy's scope. This element isn't included in the response when <code>Resource</code> isn't present in the policy content.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute actions
    #   <p>The action that a policy permits or forbids. For example, <code>{"actions": [{"actionId": "ViewPhoto", "actionType": "PhotoFlash::Action"}, {"entityID": "SharePhoto", "entityType": "PhotoFlash::Action"}]}</code>.</p>
    #   @return [Array<Types::ActionIdentifier>]
    # @!attribute definition
    #   <p>The definition of the requested policy.</p>
    #   @return [Types::PolicyDefinitionDetail]
    # @!attribute created_date
    #   <p>The date and time that the policy was originally created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The date and time that the policy was last updated.</p>
    #   @return [Time]
    # @!attribute effect
    #   <p>The effect of the decision that a policy returns to an authorization request. For example, <code>"effect": "Permit"</code>.</p>
    #   @return [String]
    class GetPolicyOutput < Struct.new(
      :policy_store_id,
      :policy_id,
      :policy_type,
      :principal,
      :resource,
      :actions,
      :definition,
      :created_date,
      :last_updated_date,
      :effect,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store that you want information about.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Specifies whether to return the tags that are attached to the policy store. If this parameter is included in the API call, the tags are returned, otherwise they are not returned.</p> <note> <p>If this parameter is included in the API call but there are no tags attached to the policy store, the <code>tags</code> response parameter is omitted from the response.</p> </note>
    #   @return [Boolean]
    class GetPolicyStoreInput < Struct.new(
      :policy_store_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>The ID of the policy store;</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the policy store.</p>
    #   @return [String]
    # @!attribute validation_settings
    #   <p>The current validation settings for the policy store.</p>
    #   @return [Types::ValidationSettings]
    # @!attribute created_date
    #   <p>The date and time that the policy store was originally created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The date and time that the policy store was last updated.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Descriptive text that you can provide to help with identification of the current policy store.</p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>Specifies whether the policy store can be deleted. If enabled, the policy store can't be deleted.</p> <p>The default state is <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute cedar_version
    #   <p>The version of the Cedar language used with policies, policy templates, and schemas in this policy store. For more information, see <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/userguide/cedar4-faq.html">Amazon Verified Permissions upgrade to Cedar v4 FAQ</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags associated with the policy store.</p>
    #   @return [Hash<String, String>]
    class GetPolicyStoreOutput < Struct.new(
      :policy_store_id,
      :arn,
      :validation_settings,
      :created_date,
      :last_updated_date,
      :description,
      :deletion_protection,
      :cedar_version,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store that contains the policy template that you want information about.</p>
    #   @return [String]
    # @!attribute policy_template_id
    #   <p>Specifies the ID of the policy template that you want information about.</p>
    #   @return [String]
    class GetPolicyTemplateInput < Struct.new(
      :policy_store_id,
      :policy_template_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>The ID of the policy store that contains the policy template.</p>
    #   @return [String]
    # @!attribute policy_template_id
    #   <p>The ID of the policy template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the policy template.</p>
    #   @return [String]
    # @!attribute statement
    #   <p>The content of the body of the policy template written in the Cedar policy language.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date and time that the policy template was originally created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The date and time that the policy template was most recently updated.</p>
    #   @return [Time]
    class GetPolicyTemplateOutput < Struct.new(
      :policy_store_id,
      :policy_template_id,
      :description,
      :statement,
      :created_date,
      :last_updated_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store that contains the schema.</p>
    #   @return [String]
    class GetSchemaInput < Struct.new(
      :policy_store_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>The ID of the policy store that contains the schema.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The body of the schema, written in Cedar schema JSON.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date and time that the schema was originally created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The date and time that the schema was most recently updated.</p>
    #   @return [Time]
    # @!attribute namespaces
    #   <p>The namespaces of the entities referenced by this schema.</p>
    #   @return [Array<String>]
    class GetSchemaOutput < Struct.new(
      :policy_store_id,
      :schema,
      :created_date,
      :last_updated_date,
      :namespaces,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains configuration of the identity source.</p> <p>This data type was a response parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_GetIdentitySource.html">GetIdentitySource</a> operation. Replaced by <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ConfigurationDetail.html">ConfigurationDetail</a>.</p>
    # @deprecated
    #   This shape has been replaced by ConfigurationDetail
    # @!attribute client_ids
    #   <p>The application client IDs associated with the specified Amazon Cognito user pool that are enabled for this identity source.</p>
    #   @deprecated
    #     This attribute has been replaced by configuration.cognitoUserPoolConfiguration.clientIds
    #   @return [Array<String>]
    # @!attribute user_pool_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the Amazon Cognito user pool whose identities are accessible to this Verified Permissions policy store.</p>
    #   @deprecated
    #     This attribute has been replaced by configuration.cognitoUserPoolConfiguration.userPoolArn
    #   @return [String]
    # @!attribute discovery_url
    #   <p>The well-known URL that points to this user pool's OIDC discovery endpoint. This is a URL string in the following format. This URL replaces the placeholders for both the Amazon Web Services Region and the user pool identifier with those appropriate for this user pool.</p> <p> <code>https://cognito-idp.<i>&lt;region&gt;</i>.amazonaws.com/<i>&lt;user-pool-id&gt;</i>/.well-known/openid-configuration</code> </p>
    #   @deprecated
    #     This attribute has been replaced by configuration.cognitoUserPoolConfiguration.issuer
    #   @return [String]
    # @!attribute open_id_issuer
    #   <p>A string that identifies the type of OIDC service represented by this identity source. </p> <p>At this time, the only valid value is <code>cognito</code>.</p>
    #   @deprecated
    #     This attribute has been replaced by configuration
    #   @return [String]
    class IdentitySourceDetails < Struct.new(
      :client_ids,
      :user_pool_arn,
      :discovery_url,
      :open_id_issuer,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines characteristics of an identity source that you can use to filter.</p> <p>This data type is a request parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListIdentityStores.html">ListIdentityStores</a> operation.</p>
    # @!attribute principal_entity_type
    #   <p>The Cedar entity type of the principals returned by the identity provider (IdP) associated with this identity source.</p>
    #   @return [String]
    class IdentitySourceFilter < Struct.new(
      :principal_entity_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines an identity source.</p> <p>This data type is a response parameter to the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListIdentitySources.html">ListIdentitySources</a> operation.</p>
    # @!attribute created_date
    #   <p>The date and time the identity source was originally created.</p>
    #   @return [Time]
    # @!attribute details
    #   <p>A structure that contains the details of the associated identity provider (IdP).</p>
    #   @deprecated
    #     This attribute has been replaced by configuration.cognitoUserPoolConfiguration
    #   @return [Types::IdentitySourceItemDetails]
    # @!attribute identity_source_id
    #   <p>The unique identifier of the identity source.</p>
    #   @return [String]
    # @!attribute last_updated_date
    #   <p>The date and time the identity source was most recently updated.</p>
    #   @return [Time]
    # @!attribute policy_store_id
    #   <p>The identifier of the policy store that contains the identity source.</p>
    #   @return [String]
    # @!attribute principal_entity_type
    #   <p>The Cedar entity type of the principals returned from the IdP associated with this identity source.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Contains configuration information about an identity source.</p>
    #   @return [Types::ConfigurationItem]
    class IdentitySourceItem < Struct.new(
      :created_date,
      :details,
      :identity_source_id,
      :last_updated_date,
      :policy_store_id,
      :principal_entity_type,
      :configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains configuration of the identity source.</p> <p>This data type was a response parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListIdentitySources.html">ListIdentitySources</a> operation. Replaced by <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ConfigurationItem.html">ConfigurationItem</a>.</p>
    # @deprecated
    #   This shape has been replaced by ConfigurationItem
    # @!attribute client_ids
    #   <p>The application client IDs associated with the specified Amazon Cognito user pool that are enabled for this identity source.</p>
    #   @deprecated
    #     This attribute has been replaced by configuration.cognitoUserPoolConfiguration.clientIds
    #   @return [Array<String>]
    # @!attribute user_pool_arn
    #   <p>The Amazon Cognito user pool whose identities are accessible to this Verified Permissions policy store.</p>
    #   @deprecated
    #     This attribute has been replaced by configuration.cognitoUserPoolConfiguration.userPoolArn
    #   @return [String]
    # @!attribute discovery_url
    #   <p>The well-known URL that points to this user pool's OIDC discovery endpoint. This is a URL string in the following format. This URL replaces the placeholders for both the Amazon Web Services Region and the user pool identifier with those appropriate for this user pool.</p> <p> <code>https://cognito-idp.<i>&lt;region&gt;</i>.amazonaws.com/<i>&lt;user-pool-id&gt;</i>/.well-known/openid-configuration</code> </p>
    #   @deprecated
    #     This attribute has been replaced by configuration.cognitoUserPoolConfiguration.issuer
    #   @return [String]
    # @!attribute open_id_issuer
    #   <p>A string that identifies the type of OIDC service represented by this identity source. </p> <p>At this time, the only valid value is <code>cognito</code>.</p>
    #   @deprecated
    #     This attribute has been replaced by configuration
    #   @return [String]
    class IdentitySourceItemDetails < Struct.new(
      :client_ids,
      :user_pool_arn,
      :discovery_url,
      :open_id_issuer,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because of an internal error. Try your request again later</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The policy store can't be deleted because deletion protection is enabled. To delete this policy store, disable deletion protection.</p>
    # @!attribute message
    #   @return [String]
    class InvalidStateException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store. Policies in this policy store will be used to make an authorization decision for the input.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>Specifies the principal for which the authorization decision is to be made.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute action
    #   <p>Specifies the requested action to be authorized. For example, is the principal authorized to perform this action on the resource?</p>
    #   @return [Types::ActionIdentifier]
    # @!attribute resource
    #   <p>Specifies the resource for which the authorization decision is to be made.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute context
    #   <p>Specifies additional context that can be used to make more granular authorization decisions.</p>
    #   @return [Types::ContextDefinition]
    # @!attribute entities
    #   <p>(Optional) Specifies the list of resources and principals and their associated attributes that Verified Permissions can examine when evaluating the policies. These additional entities and their attributes can be referenced and checked by conditional elements in the policies in the specified policy store.</p> <note> <p>You can include only principal and resource entities in this parameter; you can't include actions. You must specify actions in the schema.</p> </note>
    #   @return [Types::EntitiesDefinition]
    class IsAuthorizedInput < Struct.new(
      :policy_store_id,
      :principal,
      :action,
      :resource,
      :context,
      :entities,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute decision
    #   <p>An authorization decision that indicates if the authorization request should be allowed or denied.</p>
    #   @return [String]
    # @!attribute determining_policies
    #   <p>The list of determining policies used to make the authorization decision. For example, if there are two matching policies, where one is a forbid and the other is a permit, then the forbid policy will be the determining policy. In the case of multiple matching permit policies then there would be multiple determining policies. In the case that no policies match, and hence the response is DENY, there would be no determining policies.</p>
    #   @return [Array<Types::DeterminingPolicyItem>]
    # @!attribute errors
    #   <p>Errors that occurred while making an authorization decision, for example, a policy references an Entity or entity Attribute that does not exist in the slice.</p>
    #   @return [Array<Types::EvaluationErrorItem>]
    class IsAuthorizedOutput < Struct.new(
      :decision,
      :determining_policies,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store. Policies in this policy store will be used to make an authorization decision for the input.</p>
    #   @return [String]
    # @!attribute identity_token
    #   <p>Specifies an identity token for the principal to be authorized. This token is provided to you by the identity provider (IdP) associated with the specified identity source. You must specify either an <code>accessToken</code>, an <code>identityToken</code>, or both.</p> <p>Must be an ID token. Verified Permissions returns an error if the <code>token_use</code> claim in the submitted token isn't <code>id</code>.</p>
    #   @return [String]
    # @!attribute access_token
    #   <p>Specifies an access token for the principal to be authorized. This token is provided to you by the identity provider (IdP) associated with the specified identity source. You must specify either an <code>accessToken</code>, an <code>identityToken</code>, or both.</p> <p>Must be an access token. Verified Permissions returns an error if the <code>token_use</code> claim in the submitted token isn't <code>access</code>.</p>
    #   @return [String]
    # @!attribute action
    #   <p>Specifies the requested action to be authorized. Is the specified principal authorized to perform this action on the specified resource.</p>
    #   @return [Types::ActionIdentifier]
    # @!attribute resource
    #   <p>Specifies the resource for which the authorization decision is made. For example, is the principal allowed to perform the action on the resource?</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute context
    #   <p>Specifies additional context that can be used to make more granular authorization decisions.</p>
    #   @return [Types::ContextDefinition]
    # @!attribute entities
    #   <p>(Optional) Specifies the list of resources and their associated attributes that Verified Permissions can examine when evaluating the policies. These additional entities and their attributes can be referenced and checked by conditional elements in the policies in the specified policy store.</p> <important> <p>You can't include principals in this parameter, only resource and action entities. This parameter can't include any entities of a type that matches the user or group entity types that you defined in your identity source.</p> <ul> <li> <p>The <code>IsAuthorizedWithToken</code> operation takes principal attributes from <b> <i>only</i> </b> the <code>identityToken</code> or <code>accessToken</code> passed to the operation.</p> </li> <li> <p>For action entities, you can include only their <code>Identifier</code> and <code>EntityType</code>. </p> </li> </ul> </important>
    #   @return [Types::EntitiesDefinition]
    class IsAuthorizedWithTokenInput < Struct.new(
      :policy_store_id,
      :identity_token,
      :access_token,
      :action,
      :resource,
      :context,
      :entities,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute decision
    #   <p>An authorization decision that indicates if the authorization request should be allowed or denied.</p>
    #   @return [String]
    # @!attribute determining_policies
    #   <p>The list of determining policies used to make the authorization decision. For example, if there are multiple matching policies, where at least one is a forbid policy, then because forbid always overrides permit the forbid policies are the determining policies. If all matching policies are permit policies, then those policies are the determining policies. When no policies match and the response is the default DENY, there are no determining policies.</p>
    #   @return [Array<Types::DeterminingPolicyItem>]
    # @!attribute errors
    #   <p>Errors that occurred while making an authorization decision. For example, a policy references an entity or entity attribute that does not exist in the slice.</p>
    #   @return [Array<Types::EvaluationErrorItem>]
    # @!attribute principal
    #   <p>The identifier of the principal in the ID or access token.</p>
    #   @return [Types::EntityIdentifier]
    class IsAuthorizedWithTokenOutput < Struct.new(
      :decision,
      :determining_policies,
      :errors,
      :principal,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store that contains the identity sources that you want to list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p> <p>If you do not specify this parameter, the operation defaults to 10 identity sources per response. You can specify a maximum of 50 identity sources per response.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>Specifies characteristics of an identity source that you can use to limit the output to matching identity sources.</p>
    #   @return [Array<Types::IdentitySourceFilter>]
    class ListIdentitySourcesInput < Struct.new(
      :policy_store_id,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, this value indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. This indicates that this is the last page of results.</p>
    #   @return [String]
    # @!attribute identity_sources
    #   <p>The list of identity sources stored in the specified policy store.</p>
    #   @return [Array<Types::IdentitySourceItem>]
    class ListIdentitySourcesOutput < Struct.new(
      :next_token,
      :identity_sources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store you want to list policies from.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p> <p>If you do not specify this parameter, the operation defaults to 10 policies per response. You can specify a maximum of 50 policies per response.</p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>Specifies a filter that limits the response to only policies that match the specified criteria. For example, you list only the policies that reference a specified principal.</p>
    #   @return [Types::PolicyFilter]
    class ListPoliciesInput < Struct.new(
      :policy_store_id,
      :next_token,
      :max_results,
      :filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, this value indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. This indicates that this is the last page of results.</p>
    #   @return [String]
    # @!attribute policies
    #   <p>Lists all policies that are available in the specified policy store.</p>
    #   @return [Array<Types::PolicyItem>]
    class ListPoliciesOutput < Struct.new(
      :next_token,
      :policies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p> <p>If you do not specify this parameter, the operation defaults to 10 policy stores per response. You can specify a maximum of 50 policy stores per response.</p>
    #   @return [Integer]
    class ListPolicyStoresInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, this value indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. This indicates that this is the last page of results.</p>
    #   @return [String]
    # @!attribute policy_stores
    #   <p>The list of policy stores in the account.</p>
    #   @return [Array<Types::PolicyStoreItem>]
    class ListPolicyStoresOutput < Struct.new(
      :next_token,
      :policy_stores,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store that contains the policy templates you want to list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p> <p>If you do not specify this parameter, the operation defaults to 10 policy templates per response. You can specify a maximum of 50 policy templates per response.</p>
    #   @return [Integer]
    class ListPolicyTemplatesInput < Struct.new(
      :policy_store_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, this value indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. This indicates that this is the last page of results.</p>
    #   @return [String]
    # @!attribute policy_templates
    #   <p>The list of the policy templates in the specified policy store.</p>
    #   @return [Array<Types::PolicyTemplateItem>]
    class ListPolicyTemplatesOutput < Struct.new(
      :next_token,
      :policy_templates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource for which you want to view tags.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of an OpenID Connect (OIDC) identity source for handling access token claims. Contains the claim that you want to identify as the principal in an authorization request, and the values of the <code>aud</code> claim, or audiences, that you want to accept.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_OpenIdConnectTokenSelection.html">OpenIdConnectTokenSelection</a> structure, which is a parameter of <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreateIdentitySource.html">CreateIdentitySource</a>.</p>
    # @!attribute principal_id_claim
    #   <p>The claim that determines the principal in OIDC access tokens. For example, <code>sub</code>.</p>
    #   @return [String]
    # @!attribute audiences
    #   <p>The access token <code>aud</code> claim values that you want to accept in your policy store. For example, <code>https://myapp.example.com, https://myapp2.example.com</code>.</p>
    #   @return [Array<String>]
    class OpenIdConnectAccessTokenConfiguration < Struct.new(
      :principal_id_claim,
      :audiences,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:principal_id_claim] = 'sub' unless options.key?(:principal_id_claim)
        super
      end
    end

    # <p>The configuration of an OpenID Connect (OIDC) identity source for handling access token claims. Contains the claim that you want to identify as the principal in an authorization request, and the values of the <code>aud</code> claim, or audiences, that you want to accept.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_OpenIdConnectTokenSelectionDetail.html">OpenIdConnectTokenSelectionDetail</a> structure, which is a parameter of <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_GetIdentitySource.html">GetIdentitySource</a>.</p>
    # @!attribute principal_id_claim
    #   <p>The claim that determines the principal in OIDC access tokens. For example, <code>sub</code>.</p>
    #   @return [String]
    # @!attribute audiences
    #   <p>The access token <code>aud</code> claim values that you want to accept in your policy store. For example, <code>https://myapp.example.com, https://myapp2.example.com</code>.</p>
    #   @return [Array<String>]
    class OpenIdConnectAccessTokenConfigurationDetail < Struct.new(
      :principal_id_claim,
      :audiences,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:principal_id_claim] = 'sub' unless options.key?(:principal_id_claim)
        super
      end
    end

    # <p>The configuration of an OpenID Connect (OIDC) identity source for handling access token claims. Contains the claim that you want to identify as the principal in an authorization request, and the values of the <code>aud</code> claim, or audiences, that you want to accept.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_OpenIdConnectTokenSelectionItem.html">OpenIdConnectTokenSelectionItem</a> structure, which is a parameter of <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListIdentitySources.html">ListIdentitySources</a>.</p>
    # @!attribute principal_id_claim
    #   <p>The claim that determines the principal in OIDC access tokens. For example, <code>sub</code>.</p>
    #   @return [String]
    # @!attribute audiences
    #   <p>The access token <code>aud</code> claim values that you want to accept in your policy store. For example, <code>https://myapp.example.com, https://myapp2.example.com</code>.</p>
    #   @return [Array<String>]
    class OpenIdConnectAccessTokenConfigurationItem < Struct.new(
      :principal_id_claim,
      :audiences,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:principal_id_claim] = 'sub' unless options.key?(:principal_id_claim)
        super
      end
    end

    # <p>Contains configuration details of an OpenID Connect (OIDC) identity provider, or identity source, that Verified Permissions can use to generate entities from authenticated identities. It specifies the issuer URL, token type that you want to use, and policy store entity details.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_Configuration.html">Configuration</a> structure, which is a parameter to <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreateIdentitySource.html">CreateIdentitySource</a>.</p>
    # @!attribute issuer
    #   <p>The issuer URL of an OIDC identity provider. This URL must have an OIDC discovery endpoint at the path <code>.well-known/openid-configuration</code>.</p>
    #   @return [String]
    # @!attribute entity_id_prefix
    #   <p>A descriptive string that you want to prefix to user entities from your OIDC identity provider. For example, if you set an <code>entityIdPrefix</code> of <code>MyOIDCProvider</code>, you can reference principals in your policies in the format <code>MyCorp::User::MyOIDCProvider|Carlos</code>.</p>
    #   @return [String]
    # @!attribute group_configuration
    #   <p>The claim in OIDC identity provider tokens that indicates a user's group membership, and the entity type that you want to map it to. For example, this object can map the contents of a <code>groups</code> claim to <code>MyCorp::UserGroup</code>.</p>
    #   @return [Types::OpenIdConnectGroupConfiguration]
    # @!attribute token_selection
    #   <p>The token type that you want to process from your OIDC identity provider. Your policy store can process either identity (ID) or access tokens from a given OIDC identity source.</p>
    #   @return [Types::OpenIdConnectTokenSelection]
    class OpenIdConnectConfiguration < Struct.new(
      :issuer,
      :entity_id_prefix,
      :group_configuration,
      :token_selection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration details of an OpenID Connect (OIDC) identity provider, or identity source, that Verified Permissions can use to generate entities from authenticated identities. It specifies the issuer URL, token type that you want to use, and policy store entity details.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ConfigurationDetail.html">ConfigurationDetail</a> structure, which is a parameter to <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_GetIdentitySource.html">GetIdentitySource</a>.</p>
    # @!attribute issuer
    #   <p>The issuer URL of an OIDC identity provider. This URL must have an OIDC discovery endpoint at the path <code>.well-known/openid-configuration</code>.</p>
    #   @return [String]
    # @!attribute entity_id_prefix
    #   <p>A descriptive string that you want to prefix to user entities from your OIDC identity provider. For example, if you set an <code>entityIdPrefix</code> of <code>MyOIDCProvider</code>, you can reference principals in your policies in the format <code>MyCorp::User::MyOIDCProvider|Carlos</code>.</p>
    #   @return [String]
    # @!attribute group_configuration
    #   <p>The claim in OIDC identity provider tokens that indicates a user's group membership, and the entity type that you want to map it to. For example, this object can map the contents of a <code>groups</code> claim to <code>MyCorp::UserGroup</code>.</p>
    #   @return [Types::OpenIdConnectGroupConfigurationDetail]
    # @!attribute token_selection
    #   <p>The token type that you want to process from your OIDC identity provider. Your policy store can process either identity (ID) or access tokens from a given OIDC identity source.</p>
    #   @return [Types::OpenIdConnectTokenSelectionDetail]
    class OpenIdConnectConfigurationDetail < Struct.new(
      :issuer,
      :entity_id_prefix,
      :group_configuration,
      :token_selection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration details of an OpenID Connect (OIDC) identity provider, or identity source, that Verified Permissions can use to generate entities from authenticated identities. It specifies the issuer URL, token type that you want to use, and policy store entity details.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ConfigurationDetail.html">ConfigurationItem</a> structure, which is a parameter to <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListIdentitySources.html">ListIdentitySources</a>.</p>
    # @!attribute issuer
    #   <p>The issuer URL of an OIDC identity provider. This URL must have an OIDC discovery endpoint at the path <code>.well-known/openid-configuration</code>.</p>
    #   @return [String]
    # @!attribute entity_id_prefix
    #   <p>A descriptive string that you want to prefix to user entities from your OIDC identity provider. For example, if you set an <code>entityIdPrefix</code> of <code>MyOIDCProvider</code>, you can reference principals in your policies in the format <code>MyCorp::User::MyOIDCProvider|Carlos</code>.</p>
    #   @return [String]
    # @!attribute group_configuration
    #   <p>The claim in OIDC identity provider tokens that indicates a user's group membership, and the entity type that you want to map it to. For example, this object can map the contents of a <code>groups</code> claim to <code>MyCorp::UserGroup</code>.</p>
    #   @return [Types::OpenIdConnectGroupConfigurationItem]
    # @!attribute token_selection
    #   <p>The token type that you want to process from your OIDC identity provider. Your policy store can process either identity (ID) or access tokens from a given OIDC identity source.</p>
    #   @return [Types::OpenIdConnectTokenSelectionItem]
    class OpenIdConnectConfigurationItem < Struct.new(
      :issuer,
      :entity_id_prefix,
      :group_configuration,
      :token_selection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The claim in OIDC identity provider tokens that indicates a user's group membership, and the entity type that you want to map it to. For example, this object can map the contents of a <code>groups</code> claim to <code>MyCorp::UserGroup</code>.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_OpenIdConnectConfiguration.html">OpenIdConnectConfiguration</a> structure, which is a parameter of <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreateIdentitySource.html">CreateIdentitySource</a>.</p>
    # @!attribute group_claim
    #   <p>The token claim that you want Verified Permissions to interpret as group membership. For example, <code>groups</code>.</p>
    #   @return [String]
    # @!attribute group_entity_type
    #   <p>The policy store entity type that you want to map your users' group claim to. For example, <code>MyCorp::UserGroup</code>. A group entity type is an entity that can have a user entity type as a member.</p>
    #   @return [String]
    class OpenIdConnectGroupConfiguration < Struct.new(
      :group_claim,
      :group_entity_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The claim in OIDC identity provider tokens that indicates a user's group membership, and the entity type that you want to map it to. For example, this object can map the contents of a <code>groups</code> claim to <code>MyCorp::UserGroup</code>.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_OpenIdConnectConfigurationDetail.html">OpenIdConnectConfigurationDetail</a> structure, which is a parameter of <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_GetIdentitySource.html">GetIdentitySource</a>.</p>
    # @!attribute group_claim
    #   <p>The token claim that you want Verified Permissions to interpret as group membership. For example, <code>groups</code>.</p>
    #   @return [String]
    # @!attribute group_entity_type
    #   <p>The policy store entity type that you want to map your users' group claim to. For example, <code>MyCorp::UserGroup</code>. A group entity type is an entity that can have a user entity type as a member.</p>
    #   @return [String]
    class OpenIdConnectGroupConfigurationDetail < Struct.new(
      :group_claim,
      :group_entity_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The claim in OIDC identity provider tokens that indicates a user's group membership, and the entity type that you want to map it to. For example, this object can map the contents of a <code>groups</code> claim to <code>MyCorp::UserGroup</code>.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_OpenIdConnectConfigurationItem.html">OpenIdConnectConfigurationItem</a> structure, which is a parameter of <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListIdentitySources.html">ListIdentitySourcea</a>.</p>
    # @!attribute group_claim
    #   <p>The token claim that you want Verified Permissions to interpret as group membership. For example, <code>groups</code>.</p>
    #   @return [String]
    # @!attribute group_entity_type
    #   <p>The policy store entity type that you want to map your users' group claim to. For example, <code>MyCorp::UserGroup</code>. A group entity type is an entity that can have a user entity type as a member.</p>
    #   @return [String]
    class OpenIdConnectGroupConfigurationItem < Struct.new(
      :group_claim,
      :group_entity_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of an OpenID Connect (OIDC) identity source for handling identity (ID) token claims. Contains the claim that you want to identify as the principal in an authorization request, and the values of the <code>aud</code> claim, or audiences, that you want to accept.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_OpenIdConnectTokenSelection.html">OpenIdConnectTokenSelection</a> structure, which is a parameter of <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreateIdentitySource.html">CreateIdentitySource</a>.</p>
    # @!attribute principal_id_claim
    #   <p>The claim that determines the principal in OIDC access tokens. For example, <code>sub</code>.</p>
    #   @return [String]
    # @!attribute client_ids
    #   <p>The ID token audience, or client ID, claim values that you want to accept in your policy store from an OIDC identity provider. For example, <code>1example23456789, 2example10111213</code>.</p>
    #   @return [Array<String>]
    class OpenIdConnectIdentityTokenConfiguration < Struct.new(
      :principal_id_claim,
      :client_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:principal_id_claim] = 'sub' unless options.key?(:principal_id_claim)
        super
      end
    end

    # <p>The configuration of an OpenID Connect (OIDC) identity source for handling identity (ID) token claims. Contains the claim that you want to identify as the principal in an authorization request, and the values of the <code>aud</code> claim, or audiences, that you want to accept.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_OpenIdConnectTokenSelectionDetail.html">OpenIdConnectTokenSelectionDetail</a> structure, which is a parameter of <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_GetIdentitySource.html">GetIdentitySource</a>.</p>
    # @!attribute principal_id_claim
    #   <p>The claim that determines the principal in OIDC access tokens. For example, <code>sub</code>.</p>
    #   @return [String]
    # @!attribute client_ids
    #   <p>The ID token audience, or client ID, claim values that you want to accept in your policy store from an OIDC identity provider. For example, <code>1example23456789, 2example10111213</code>.</p>
    #   @return [Array<String>]
    class OpenIdConnectIdentityTokenConfigurationDetail < Struct.new(
      :principal_id_claim,
      :client_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:principal_id_claim] = 'sub' unless options.key?(:principal_id_claim)
        super
      end
    end

    # <p>The configuration of an OpenID Connect (OIDC) identity source for handling identity (ID) token claims. Contains the claim that you want to identify as the principal in an authorization request, and the values of the <code>aud</code> claim, or audiences, that you want to accept.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_OpenIdConnectTokenSelectionItem.html">OpenIdConnectTokenSelectionItem</a> structure, which is a parameter of <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListIdentitySources.html">ListIdentitySources</a>.</p>
    # @!attribute principal_id_claim
    #   <p>The claim that determines the principal in OIDC access tokens. For example, <code>sub</code>.</p>
    #   @return [String]
    # @!attribute client_ids
    #   <p>The ID token audience, or client ID, claim values that you want to accept in your policy store from an OIDC identity provider. For example, <code>1example23456789, 2example10111213</code>.</p>
    #   @return [Array<String>]
    class OpenIdConnectIdentityTokenConfigurationItem < Struct.new(
      :principal_id_claim,
      :client_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:principal_id_claim] = 'sub' unless options.key?(:principal_id_claim)
        super
      end
    end

    # <p>The token type that you want to process from your OIDC identity provider. Your policy store can process either identity (ID) or access tokens from a given OIDC identity source.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_OpenIdConnectConfiguration.html">OpenIdConnectConfiguration</a> structure, which is a parameter of <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreateIdentitySource.html">CreateIdentitySource</a>.</p>
    # @!attribute access_token_only
    #   <p>The OIDC configuration for processing access tokens. Contains allowed audience claims, for example <code>https://auth.example.com</code>, and the claim that you want to map to the principal, for example <code>sub</code>.</p>
    #   @return [Types::OpenIdConnectAccessTokenConfiguration]
    # @!attribute identity_token_only
    #   <p>The OIDC configuration for processing identity (ID) tokens. Contains allowed client ID claims, for example <code>1example23456789</code>, and the claim that you want to map to the principal, for example <code>sub</code>.</p>
    #   @return [Types::OpenIdConnectIdentityTokenConfiguration]
    class OpenIdConnectTokenSelection < Struct.new(
      :access_token_only,
      :identity_token_only,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class AccessTokenOnly < OpenIdConnectTokenSelection; end
      class IdentityTokenOnly < OpenIdConnectTokenSelection; end
      class Unknown < OpenIdConnectTokenSelection; end
    end

    # <p>The token type that you want to process from your OIDC identity provider. Your policy store can process either identity (ID) or access tokens from a given OIDC identity source.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_OpenIdConnectConfigurationDetail.html">OpenIdConnectConfigurationDetail</a> structure, which is a parameter of <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_GetIdentitySource.html">GetIdentitySource</a>.</p>
    # @!attribute access_token_only
    #   <p>The OIDC configuration for processing access tokens. Contains allowed audience claims, for example <code>https://auth.example.com</code>, and the claim that you want to map to the principal, for example <code>sub</code>.</p>
    #   @return [Types::OpenIdConnectAccessTokenConfigurationDetail]
    # @!attribute identity_token_only
    #   <p>The OIDC configuration for processing identity (ID) tokens. Contains allowed client ID claims, for example <code>1example23456789</code>, and the claim that you want to map to the principal, for example <code>sub</code>.</p>
    #   @return [Types::OpenIdConnectIdentityTokenConfigurationDetail]
    class OpenIdConnectTokenSelectionDetail < Struct.new(
      :access_token_only,
      :identity_token_only,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class AccessTokenOnly < OpenIdConnectTokenSelectionDetail; end
      class IdentityTokenOnly < OpenIdConnectTokenSelectionDetail; end
      class Unknown < OpenIdConnectTokenSelectionDetail; end
    end

    # <p>The token type that you want to process from your OIDC identity provider. Your policy store can process either identity (ID) or access tokens from a given OIDC identity source.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_OpenIdConnectConfigurationItem.html">OpenIdConnectConfigurationItem</a> structure, which is a parameter of <a href="http://amazonaws.com/verifiedpermissions/latest/apireference/API_ListIdentitySources.html">ListIdentitySources</a>.</p>
    # @!attribute access_token_only
    #   <p>The OIDC configuration for processing access tokens. Contains allowed audience claims, for example <code>https://auth.example.com</code>, and the claim that you want to map to the principal, for example <code>sub</code>.</p>
    #   @return [Types::OpenIdConnectAccessTokenConfigurationItem]
    # @!attribute identity_token_only
    #   <p>The OIDC configuration for processing identity (ID) tokens. Contains allowed client ID claims, for example <code>1example23456789</code>, and the claim that you want to map to the principal, for example <code>sub</code>.</p>
    #   @return [Types::OpenIdConnectIdentityTokenConfigurationItem]
    class OpenIdConnectTokenSelectionItem < Struct.new(
      :access_token_only,
      :identity_token_only,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class AccessTokenOnly < OpenIdConnectTokenSelectionItem; end
      class IdentityTokenOnly < OpenIdConnectTokenSelectionItem; end
      class Unknown < OpenIdConnectTokenSelectionItem; end
    end

    # <p>A structure that contains the details for a Cedar policy definition. It includes the policy type, a description, and a policy body. This is a top level data type used to create a policy.</p> <p>This data type is used as a request parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreatePolicy.html">CreatePolicy</a> operation. This structure must always have either an <code>static</code> or a <code>templateLinked</code> element.</p>
    # @!attribute static
    #   <p>A structure that describes a static policy. An static policy doesn't use a template or allow placeholders for entities.</p>
    #   @return [Types::StaticPolicyDefinition]
    # @!attribute template_linked
    #   <p>A structure that describes a policy that was instantiated from a template. The template can specify placeholders for <code>principal</code> and <code>resource</code>. When you use <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreatePolicy.html">CreatePolicy</a> to create a policy from a template, you specify the exact principal and resource to use for the instantiated policy.</p>
    #   @return [Types::TemplateLinkedPolicyDefinition]
    class PolicyDefinition < Struct.new(
      :static,
      :template_linked,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Static < PolicyDefinition; end
      class TemplateLinked < PolicyDefinition; end
      class Unknown < PolicyDefinition; end
    end

    # <p>A structure that describes a policy definition. It must always have either an <code>static</code> or a <code>templateLinked</code> element.</p> <p>This data type is used as a response parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_GetPolicy.html">GetPolicy</a> operation.</p>
    # @!attribute static
    #   <p>Information about a static policy that wasn't created with a policy template.</p>
    #   @return [Types::StaticPolicyDefinitionDetail]
    # @!attribute template_linked
    #   <p>Information about a template-linked policy that was created by instantiating a policy template.</p>
    #   @return [Types::TemplateLinkedPolicyDefinitionDetail]
    class PolicyDefinitionDetail < Struct.new(
      :static,
      :template_linked,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Static < PolicyDefinitionDetail; end
      class TemplateLinked < PolicyDefinitionDetail; end
      class Unknown < PolicyDefinitionDetail; end
    end

    # <p>A structure that describes a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_PolicyDefinintion.html">PolicyDefinintion</a>. It will always have either an <code>StaticPolicy</code> or a <code>TemplateLinkedPolicy</code> element.</p> <p>This data type is used as a response parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreatePolicy.html">CreatePolicy</a> and <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicies.html">ListPolicies</a> operations. </p>
    # @!attribute static
    #   <p>Information about a static policy that wasn't created with a policy template.</p>
    #   @return [Types::StaticPolicyDefinitionItem]
    # @!attribute template_linked
    #   <p>Information about a template-linked policy that was created by instantiating a policy template.</p>
    #   @return [Types::TemplateLinkedPolicyDefinitionItem]
    class PolicyDefinitionItem < Struct.new(
      :static,
      :template_linked,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Static < PolicyDefinitionItem; end
      class TemplateLinked < PolicyDefinitionItem; end
      class Unknown < PolicyDefinitionItem; end
    end

    # <p>Contains information about a filter to refine policies returned in a query.</p> <p>This data type is used as a response parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicies.html">ListPolicies</a> operation.</p>
    # @!attribute principal
    #   <p>Filters the output to only policies that reference the specified principal.</p>
    #   @return [Types::EntityReference]
    # @!attribute resource
    #   <p>Filters the output to only policies that reference the specified resource.</p>
    #   @return [Types::EntityReference]
    # @!attribute policy_type
    #   <p>Filters the output to only policies of the specified type.</p>
    #   @return [String]
    # @!attribute policy_template_id
    #   <p>Filters the output to only template-linked policies that were instantiated from the specified policy template.</p>
    #   @return [String]
    class PolicyFilter < Struct.new(
      :principal,
      :resource,
      :policy_type,
      :policy_template_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a policy.</p> <p>This data type is used as a response parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicies.html">ListPolicies</a> operation.</p>
    # @!attribute policy_store_id
    #   <p>The identifier of the policy store where the policy you want information about is stored.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The identifier of the policy you want information about.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The type of the policy. This is one of the following values:</p> <ul> <li> <p> <code>STATIC</code> </p> </li> <li> <p> <code>TEMPLATE_LINKED</code> </p> </li> </ul>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal associated with the policy.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute resource
    #   <p>The resource associated with the policy.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute actions
    #   <p>The action that a policy permits or forbids. For example, <code>{"actions": [{"actionId": "ViewPhoto", "actionType": "PhotoFlash::Action"}, {"entityID": "SharePhoto", "entityType": "PhotoFlash::Action"}]}</code>.</p>
    #   @return [Array<Types::ActionIdentifier>]
    # @!attribute definition
    #   <p>The policy definition of an item in the list of policies returned.</p>
    #   @return [Types::PolicyDefinitionItem]
    # @!attribute created_date
    #   <p>The date and time the policy was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The date and time the policy was most recently updated.</p>
    #   @return [Time]
    # @!attribute effect
    #   <p>The effect of the decision that a policy returns to an authorization request. For example, <code>"effect": "Permit"</code>.</p>
    #   @return [String]
    class PolicyItem < Struct.new(
      :policy_store_id,
      :policy_id,
      :policy_type,
      :principal,
      :resource,
      :actions,
      :definition,
      :created_date,
      :last_updated_date,
      :effect,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a policy store.</p> <p>This data type is used as a response parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicyStores.html">ListPolicyStores</a> operation.</p>
    # @!attribute policy_store_id
    #   <p>The unique identifier of the policy store.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the policy store.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date and time the policy was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The date and time the policy store was most recently updated.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Descriptive text that you can provide to help with identification of the current policy store.</p>
    #   @return [String]
    class PolicyStoreItem < Struct.new(
      :policy_store_id,
      :arn,
      :created_date,
      :last_updated_date,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a policy template</p> <p>This data type is used as a response parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicyTemplates.html">ListPolicyTemplates</a> operation.</p>
    # @!attribute policy_store_id
    #   <p>The unique identifier of the policy store that contains the template.</p>
    #   @return [String]
    # @!attribute policy_template_id
    #   <p>The unique identifier of the policy template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description attached to the policy template.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date and time that the policy template was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The date and time that the policy template was most recently updated.</p>
    #   @return [Time]
    class PolicyTemplateItem < Struct.new(
      :policy_store_id,
      :policy_template_id,
      :description,
      :created_date,
      :last_updated_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store in which to place the schema.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Specifies the definition of the schema to be stored. The schema definition must be written in Cedar schema JSON.</p>
    #   @return [Types::SchemaDefinition]
    class PutSchemaInput < Struct.new(
      :policy_store_id,
      :definition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>The unique ID of the policy store that contains the schema.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>Identifies the namespaces of the entities referenced by this schema.</p>
    #   @return [Array<String>]
    # @!attribute created_date
    #   <p>The date and time that the schema was originally created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The date and time that the schema was last updated.</p>
    #   @return [Time]
    class PutSchemaOutput < Struct.new(
      :policy_store_id,
      :namespaces,
      :created_date,
      :last_updated_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a resource conflict.</p>
    # @!attribute resource_id
    #   <p>The unique identifier of the resource involved in a conflict.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource involved in a conflict.</p>
    #   @return [String]
    class ResourceConflict < Struct.new(
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because it references a resource that doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique ID of the resource referenced in the failed request.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type of the resource referenced in the failed request.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a list of principal types, resource types, and actions that can be specified in policies stored in the same policy store. If the validation mode for the policy store is set to <code>STRICT</code>, then policies that can't be validated by this schema are rejected by Verified Permissions and can't be stored in the policy store.</p>
    # @!attribute cedar_json
    #   <p>A JSON string representation of the schema supported by applications that use this policy store. To delete the schema, run <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_PutSchema.html">PutSchema</a> with <code>{}</code> for this parameter. For more information, see <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/userguide/schema.html">Policy store schema</a> in the <i>Amazon Verified Permissions User Guide</i>.</p>
    #   @return [String]
    class SchemaDefinition < Struct.new(
      :cedar_json,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class CedarJson < SchemaDefinition; end
      class Unknown < SchemaDefinition; end
    end

    # <p>The request failed because it would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique ID of the resource referenced in the failed request.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type of the resource referenced in the failed request.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the Amazon Web Services service that owns the quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code recognized by the Amazon Web Services Service Quotas service.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a static policy.</p> <p>This data type is used as a field that is part of the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_PolicyDefinitionDetail.html">PolicyDefinitionDetail</a> type.</p>
    # @!attribute description
    #   <p>The description of the static policy.</p>
    #   @return [String]
    # @!attribute statement
    #   <p>The policy content of the static policy, written in the Cedar policy language.</p>
    #   @return [String]
    class StaticPolicyDefinition < Struct.new(
      :description,
      :statement,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains details about a static policy. It includes the description and policy body.</p> <p>This data type is used within a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_PolicyDefinition.html">PolicyDefinition</a> structure as part of a request parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreatePolicy.html">CreatePolicy</a> operation.</p>
    # @!attribute description
    #   <p>A description of the static policy.</p>
    #   @return [String]
    # @!attribute statement
    #   <p>The content of the static policy written in the Cedar policy language.</p>
    #   @return [String]
    class StaticPolicyDefinitionDetail < Struct.new(
      :description,
      :statement,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains details about a static policy. It includes the description and policy statement.</p> <p>This data type is used within a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_PolicyDefinition.html">PolicyDefinition</a> structure as part of a request parameter for the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreatePolicy.html">CreatePolicy</a> operation.</p>
    # @!attribute description
    #   <p>A description of the static policy.</p>
    #   @return [String]
    class StaticPolicyDefinitionItem < Struct.new(
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource that you're adding tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
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

    # <p>Contains information about a policy created by instantiating a policy template.</p>
    # @!attribute policy_template_id
    #   <p>The unique identifier of the policy template used to create this policy.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal associated with this template-linked policy. Verified Permissions substitutes this principal for the <code>?principal</code> placeholder in the policy template when it evaluates an authorization request.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute resource
    #   <p>The resource associated with this template-linked policy. Verified Permissions substitutes this resource for the <code>?resource</code> placeholder in the policy template when it evaluates an authorization request.</p>
    #   @return [Types::EntityIdentifier]
    class TemplateLinkedPolicyDefinition < Struct.new(
      :policy_template_id,
      :principal,
      :resource,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a policy that was created by instantiating a policy template. </p>
    # @!attribute policy_template_id
    #   <p>The unique identifier of the policy template used to create this policy.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal associated with this template-linked policy. Verified Permissions substitutes this principal for the <code>?principal</code> placeholder in the policy template when it evaluates an authorization request.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute resource
    #   <p>The resource associated with this template-linked policy. Verified Permissions substitutes this resource for the <code>?resource</code> placeholder in the policy template when it evaluates an authorization request.</p>
    #   @return [Types::EntityIdentifier]
    class TemplateLinkedPolicyDefinitionDetail < Struct.new(
      :policy_template_id,
      :principal,
      :resource,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a policy created by instantiating a policy template. </p> <p>This </p>
    # @!attribute policy_template_id
    #   <p>The unique identifier of the policy template used to create this policy.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal associated with this template-linked policy. Verified Permissions substitutes this principal for the <code>?principal</code> placeholder in the policy template when it evaluates an authorization request.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute resource
    #   <p>The resource associated with this template-linked policy. Verified Permissions substitutes this resource for the <code>?resource</code> placeholder in the policy template when it evaluates an authorization request.</p>
    #   @return [Types::EntityIdentifier]
    class TemplateLinkedPolicyDefinitionItem < Struct.new(
      :policy_template_id,
      :principal,
      :resource,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because it exceeded a throttling quota.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the Amazon Web Services service that owns the quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code recognized by the Amazon Web Services Service Quotas service.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>No more tags be added because the limit (50) has been reached. To add new tags, use <code>UntagResource</code> to remove existing tags.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   An Amazon Resource Name (ARN) uniquely identifies an AWS resource.
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource from which you are removing tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
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

    # <p>The user group entities from an Amazon Cognito user pool identity source.</p>
    # @!attribute group_entity_type
    #   <p>The name of the schema entity type that's mapped to the user pool group. Defaults to <code>AWS::CognitoGroup</code>.</p>
    #   @return [String]
    class UpdateCognitoGroupConfiguration < Struct.new(
      :group_entity_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration details of a Amazon Cognito user pool for use with an identity source.</p>
    # @!attribute user_pool_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the Amazon Cognito user pool associated with this identity source.</p>
    #   @return [String]
    # @!attribute client_ids
    #   <p>The client ID of an app client that is configured for the specified Amazon Cognito user pool.</p>
    #   @return [Array<String>]
    # @!attribute group_configuration
    #   <p>The configuration of the user groups from an Amazon Cognito user pool identity source.</p>
    #   @return [Types::UpdateCognitoGroupConfiguration]
    class UpdateCognitoUserPoolConfiguration < Struct.new(
      :user_pool_arn,
      :client_ids,
      :group_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an update to replace the configuration in an existing identity source.</p>
    # @!attribute cognito_user_pool_configuration
    #   <p>Contains configuration details of a Amazon Cognito user pool.</p>
    #   @return [Types::UpdateCognitoUserPoolConfiguration]
    # @!attribute open_id_connect_configuration
    #   <p>Contains configuration details of an OpenID Connect (OIDC) identity provider, or identity source, that Verified Permissions can use to generate entities from authenticated identities. It specifies the issuer URL, token type that you want to use, and policy store entity details.</p>
    #   @return [Types::UpdateOpenIdConnectConfiguration]
    class UpdateConfiguration < Struct.new(
      :cognito_user_pool_configuration,
      :open_id_connect_configuration,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class CognitoUserPoolConfiguration < UpdateConfiguration; end
      class OpenIdConnectConfiguration < UpdateConfiguration; end
      class Unknown < UpdateConfiguration; end
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store that contains the identity source that you want to update.</p>
    #   @return [String]
    # @!attribute identity_source_id
    #   <p>Specifies the ID of the identity source that you want to update.</p>
    #   @return [String]
    # @!attribute update_configuration
    #   <p>Specifies the details required to communicate with the identity provider (IdP) associated with this identity source.</p>
    #   @return [Types::UpdateConfiguration]
    # @!attribute principal_entity_type
    #   <p>Specifies the data type of principals generated for identities authenticated by the identity source.</p>
    #   @return [String]
    class UpdateIdentitySourceInput < Struct.new(
      :policy_store_id,
      :identity_source_id,
      :update_configuration,
      :principal_entity_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute created_date
    #   <p>The date and time that the updated identity source was originally created.</p>
    #   @return [Time]
    # @!attribute identity_source_id
    #   <p>The ID of the updated identity source.</p>
    #   @return [String]
    # @!attribute last_updated_date
    #   <p>The date and time that the identity source was most recently updated.</p>
    #   @return [Time]
    # @!attribute policy_store_id
    #   <p>The ID of the policy store that contains the updated identity source.</p>
    #   @return [String]
    class UpdateIdentitySourceOutput < Struct.new(
      :created_date,
      :identity_source_id,
      :last_updated_date,
      :policy_store_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of an OpenID Connect (OIDC) identity source for handling access token claims. Contains the claim that you want to identify as the principal in an authorization request, and the values of the <code>aud</code> claim, or audiences, that you want to accept.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdateOpenIdConnectTokenSelection.html">UpdateOpenIdConnectTokenSelection</a> structure, which is a parameter to <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdateIdentitySource.html">UpdateIdentitySource</a>.</p>
    # @!attribute principal_id_claim
    #   <p>The claim that determines the principal in OIDC access tokens. For example, <code>sub</code>.</p>
    #   @return [String]
    # @!attribute audiences
    #   <p>The access token <code>aud</code> claim values that you want to accept in your policy store. For example, <code>https://myapp.example.com, https://myapp2.example.com</code>.</p>
    #   @return [Array<String>]
    class UpdateOpenIdConnectAccessTokenConfiguration < Struct.new(
      :principal_id_claim,
      :audiences,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:principal_id_claim] = 'sub' unless options.key?(:principal_id_claim)
        super
      end
    end

    # <p>Contains configuration details of an OpenID Connect (OIDC) identity provider, or identity source, that Verified Permissions can use to generate entities from authenticated identities. It specifies the issuer URL, token type that you want to use, and policy store entity details.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdateConfiguration.html">UpdateConfiguration</a> structure, which is a parameter to <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdateIdentitySource.html">UpdateIdentitySource</a>.</p>
    # @!attribute issuer
    #   <p>The issuer URL of an OIDC identity provider. This URL must have an OIDC discovery endpoint at the path <code>.well-known/openid-configuration</code>.</p>
    #   @return [String]
    # @!attribute entity_id_prefix
    #   <p>A descriptive string that you want to prefix to user entities from your OIDC identity provider. For example, if you set an <code>entityIdPrefix</code> of <code>MyOIDCProvider</code>, you can reference principals in your policies in the format <code>MyCorp::User::MyOIDCProvider|Carlos</code>.</p>
    #   @return [String]
    # @!attribute group_configuration
    #   <p>The claim in OIDC identity provider tokens that indicates a user's group membership, and the entity type that you want to map it to. For example, this object can map the contents of a <code>groups</code> claim to <code>MyCorp::UserGroup</code>.</p>
    #   @return [Types::UpdateOpenIdConnectGroupConfiguration]
    # @!attribute token_selection
    #   <p>The token type that you want to process from your OIDC identity provider. Your policy store can process either identity (ID) or access tokens from a given OIDC identity source.</p>
    #   @return [Types::UpdateOpenIdConnectTokenSelection]
    class UpdateOpenIdConnectConfiguration < Struct.new(
      :issuer,
      :entity_id_prefix,
      :group_configuration,
      :token_selection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The claim in OIDC identity provider tokens that indicates a user's group membership, and the entity type that you want to map it to. For example, this object can map the contents of a <code>groups</code> claim to <code>MyCorp::UserGroup</code>.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdateOpenIdConnectConfiguration.html">UpdateOpenIdConnectConfiguration</a> structure, which is a parameter to <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdateIdentitySource.html">UpdateIdentitySource</a>.</p>
    # @!attribute group_claim
    #   <p>The token claim that you want Verified Permissions to interpret as group membership. For example, <code>groups</code>.</p>
    #   @return [String]
    # @!attribute group_entity_type
    #   <p>The policy store entity type that you want to map your users' group claim to. For example, <code>MyCorp::UserGroup</code>. A group entity type is an entity that can have a user entity type as a member.</p>
    #   @return [String]
    class UpdateOpenIdConnectGroupConfiguration < Struct.new(
      :group_claim,
      :group_entity_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of an OpenID Connect (OIDC) identity source for handling identity (ID) token claims. Contains the claim that you want to identify as the principal in an authorization request, and the values of the <code>aud</code> claim, or audiences, that you want to accept.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdateOpenIdConnectTokenSelection.html">UpdateOpenIdConnectTokenSelection</a> structure, which is a parameter to <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdateIdentitySource.html">UpdateIdentitySource</a>.</p>
    # @!attribute principal_id_claim
    #   <p>The claim that determines the principal in OIDC access tokens. For example, <code>sub</code>.</p>
    #   @return [String]
    # @!attribute client_ids
    #   <p>The ID token audience, or client ID, claim values that you want to accept in your policy store from an OIDC identity provider. For example, <code>1example23456789, 2example10111213</code>.</p>
    #   @return [Array<String>]
    class UpdateOpenIdConnectIdentityTokenConfiguration < Struct.new(
      :principal_id_claim,
      :client_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:principal_id_claim] = 'sub' unless options.key?(:principal_id_claim)
        super
      end
    end

    # <p>The token type that you want to process from your OIDC identity provider. Your policy store can process either identity (ID) or access tokens from a given OIDC identity source.</p> <p>This data type is part of a <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdateOpenIdConnectConfiguration.html">UpdateOpenIdConnectConfiguration</a> structure, which is a parameter to <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdateIdentitySource.html">UpdateIdentitySource</a>.</p>
    # @!attribute access_token_only
    #   <p>The OIDC configuration for processing access tokens. Contains allowed audience claims, for example <code>https://auth.example.com</code>, and the claim that you want to map to the principal, for example <code>sub</code>.</p>
    #   @return [Types::UpdateOpenIdConnectAccessTokenConfiguration]
    # @!attribute identity_token_only
    #   <p>The OIDC configuration for processing identity (ID) tokens. Contains allowed client ID claims, for example <code>1example23456789</code>, and the claim that you want to map to the principal, for example <code>sub</code>.</p>
    #   @return [Types::UpdateOpenIdConnectIdentityTokenConfiguration]
    class UpdateOpenIdConnectTokenSelection < Struct.new(
      :access_token_only,
      :identity_token_only,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class AccessTokenOnly < UpdateOpenIdConnectTokenSelection; end
      class IdentityTokenOnly < UpdateOpenIdConnectTokenSelection; end
      class Unknown < UpdateOpenIdConnectTokenSelection; end
    end

    # <p>Contains information about updates to be applied to a policy.</p> <p>This data type is used as a request parameter in the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicy.html">UpdatePolicy</a> operation.</p>
    # @!attribute static
    #   <p>Contains details about the updates to be applied to a static policy.</p>
    #   @return [Types::UpdateStaticPolicyDefinition]
    class UpdatePolicyDefinition < Struct.new(
      :static,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Static < UpdatePolicyDefinition; end
      class Unknown < UpdatePolicyDefinition; end
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store that contains the policy that you want to update.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>Specifies the ID of the policy that you want to update. To find this value, you can use <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicies.html">ListPolicies</a>.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Specifies the updated policy content that you want to replace on the specified policy. The content must be valid Cedar policy language text.</p> <p>You can change only the following elements from the policy definition:</p> <ul> <li> <p>The <code>action</code> referenced by the policy.</p> </li> <li> <p>Any conditional clauses, such as <code>when</code> or <code>unless</code> clauses.</p> </li> </ul> <p>You <b>can't</b> change the following elements:</p> <ul> <li> <p>Changing from <code>static</code> to <code>templateLinked</code>.</p> </li> <li> <p>Changing the effect of the policy from <code>permit</code> or <code>forbid</code>.</p> </li> <li> <p>The <code>principal</code> referenced by the policy.</p> </li> <li> <p>The <code>resource</code> referenced by the policy.</p> </li> </ul>
    #   @return [Types::UpdatePolicyDefinition]
    class UpdatePolicyInput < Struct.new(
      :policy_store_id,
      :policy_id,
      :definition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>The ID of the policy store that contains the policy that was updated.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The ID of the policy that was updated.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The type of the policy that was updated.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal specified in the policy's scope. This element isn't included in the response when <code>Principal</code> isn't present in the policy content.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute resource
    #   <p>The resource specified in the policy's scope. This element isn't included in the response when <code>Resource</code> isn't present in the policy content.</p>
    #   @return [Types::EntityIdentifier]
    # @!attribute actions
    #   <p>The action that a policy permits or forbids. For example, <code>{"actions": [{"actionId": "ViewPhoto", "actionType": "PhotoFlash::Action"}, {"entityID": "SharePhoto", "entityType": "PhotoFlash::Action"}]}</code>.</p>
    #   @return [Array<Types::ActionIdentifier>]
    # @!attribute created_date
    #   <p>The date and time that the policy was originally created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The date and time that the policy was most recently updated.</p>
    #   @return [Time]
    # @!attribute effect
    #   <p>The effect of the decision that a policy returns to an authorization request. For example, <code>"effect": "Permit"</code>.</p>
    #   @return [String]
    class UpdatePolicyOutput < Struct.new(
      :policy_store_id,
      :policy_id,
      :policy_type,
      :principal,
      :resource,
      :actions,
      :created_date,
      :last_updated_date,
      :effect,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store that you want to update</p>
    #   @return [String]
    # @!attribute validation_settings
    #   <p>A structure that defines the validation settings that want to enable for the policy store.</p>
    #   @return [Types::ValidationSettings]
    # @!attribute deletion_protection
    #   <p>Specifies whether the policy store can be deleted. If enabled, the policy store can't be deleted.</p> <p>When you call <code>UpdatePolicyStore</code>, this parameter is unchanged unless explicitly included in the call.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Descriptive text that you can provide to help with identification of the current policy store.</p>
    #   @return [String]
    class UpdatePolicyStoreInput < Struct.new(
      :policy_store_id,
      :validation_settings,
      :deletion_protection,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>The ID of the updated policy store.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the updated policy store.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date and time that the policy store was originally created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The date and time that the policy store was most recently updated.</p>
    #   @return [Time]
    class UpdatePolicyStoreOutput < Struct.new(
      :policy_store_id,
      :arn,
      :created_date,
      :last_updated_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>Specifies the ID of the policy store that contains the policy template that you want to update.</p>
    #   @return [String]
    # @!attribute policy_template_id
    #   <p>Specifies the ID of the policy template that you want to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Specifies a new description to apply to the policy template.</p>
    #   @return [String]
    # @!attribute statement
    #   <p>Specifies new statement content written in Cedar policy language to replace the current body of the policy template.</p> <p>You can change only the following elements of the policy body:</p> <ul> <li> <p>The <code>action</code> referenced by the policy template.</p> </li> <li> <p>Any conditional clauses, such as <code>when</code> or <code>unless</code> clauses.</p> </li> </ul> <p>You <b>can't</b> change the following elements:</p> <ul> <li> <p>The effect (<code>permit</code> or <code>forbid</code>) of the policy template.</p> </li> <li> <p>The <code>principal</code> referenced by the policy template.</p> </li> <li> <p>The <code>resource</code> referenced by the policy template.</p> </li> </ul>
    #   @return [String]
    class UpdatePolicyTemplateInput < Struct.new(
      :policy_store_id,
      :policy_template_id,
      :description,
      :statement,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_store_id
    #   <p>The ID of the policy store that contains the updated policy template.</p>
    #   @return [String]
    # @!attribute policy_template_id
    #   <p>The ID of the updated policy template.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date and time that the policy template was originally created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The date and time that the policy template was most recently updated.</p>
    #   @return [Time]
    class UpdatePolicyTemplateOutput < Struct.new(
      :policy_store_id,
      :policy_template_id,
      :created_date,
      :last_updated_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an update to a static policy.</p>
    # @!attribute description
    #   <p>Specifies the description to be added to or replaced on the static policy.</p>
    #   @return [String]
    # @!attribute statement
    #   <p>Specifies the Cedar policy language text to be added to or replaced on the static policy.</p> <important> <p>You can change only the following elements from the original content:</p> <ul> <li> <p>The <code>action</code> referenced by the policy.</p> </li> <li> <p>Any conditional clauses, such as <code>when</code> or <code>unless</code> clauses.</p> </li> </ul> <p>You <b>can't</b> change the following elements:</p> <ul> <li> <p>Changing from <code>StaticPolicy</code> to <code>TemplateLinkedPolicy</code>.</p> </li> <li> <p>The effect (<code>permit</code> or <code>forbid</code>) of the policy.</p> </li> <li> <p>The <code>principal</code> referenced by the policy.</p> </li> <li> <p>The <code>resource</code> referenced by the policy.</p> </li> </ul> </important>
    #   @return [String]
    class UpdateStaticPolicyDefinition < Struct.new(
      :description,
      :statement,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because one or more input parameters don't satisfy their constraint requirements. The output is provided as a list of fields and a reason for each field that isn't valid.</p> <p>The possible reasons include the following:</p> <ul> <li> <p> <b>UnrecognizedEntityType</b> </p> <p>The policy includes an entity type that isn't found in the schema.</p> </li> <li> <p> <b>UnrecognizedActionId</b> </p> <p>The policy includes an action id that isn't found in the schema.</p> </li> <li> <p> <b>InvalidActionApplication</b> </p> <p>The policy includes an action that, according to the schema, doesn't support the specified principal and resource.</p> </li> <li> <p> <b>UnexpectedType</b> </p> <p>The policy included an operand that isn't a valid type for the specified operation.</p> </li> <li> <p> <b>IncompatibleTypes</b> </p> <p>The types of elements included in a <code>set</code>, or the types of expressions used in an <code>if...then...else</code> clause aren't compatible in this context.</p> </li> <li> <p> <b>MissingAttribute</b> </p> <p>The policy attempts to access a record or entity attribute that isn't specified in the schema. Test for the existence of the attribute first before attempting to access its value. For more information, see the <a href="https://docs.cedarpolicy.com/policies/syntax-operators.html#has-presence-of-attribute-test">has (presence of attribute test) operator</a> in the <i>Cedar Policy Language Guide</i>.</p> </li> <li> <p> <b>UnsafeOptionalAttributeAccess</b> </p> <p>The policy attempts to access a record or entity attribute that is optional and isn't guaranteed to be present. Test for the existence of the attribute first before attempting to access its value. For more information, see the <a href="https://docs.cedarpolicy.com/policies/syntax-operators.html#has-presence-of-attribute-test">has (presence of attribute test) operator</a> in the <i>Cedar Policy Language Guide</i>.</p> </li> <li> <p> <b>ImpossiblePolicy</b> </p> <p>Cedar has determined that a policy condition always evaluates to false. If the policy is always false, it can never apply to any query, and so it can never affect an authorization decision.</p> </li> <li> <p> <b>WrongNumberArguments</b> </p> <p>The policy references an extension type with the wrong number of arguments.</p> </li> <li> <p> <b>FunctionArgumentValidationError</b> </p> <p>Cedar couldn't parse the argument passed to an extension type. For example, a string that is to be parsed as an IPv4 address can contain only digits and the period character.</p> </li> </ul>
    # @!attribute message
    #   @return [String]
    # @!attribute field_list
    #   <p>The list of fields that aren't valid.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :field_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a field that failed policy validation.</p>
    # @!attribute path
    #   <p>The path to the specific element that Verified Permissions found to be not valid.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Describes the policy validation error.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :path,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains Cedar policy validation settings for the policy store. The validation mode determines which validation failures that Cedar considers serious enough to block acceptance of a new or edited static policy or policy template. </p> <p>This data type is used as a request parameter in the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreatePolicyStore.html">CreatePolicyStore</a> and <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyStore.html">UpdatePolicyStore</a> operations.</p>
    # @!attribute mode
    #   <p>The validation mode currently configured for this policy store. The valid values are:</p> <ul> <li> <p> <b>OFF</b> – Neither Verified Permissions nor Cedar perform any validation on policies. No validation errors are reported by either service.</p> </li> <li> <p> <b>STRICT</b> – Requires a schema to be present in the policy store. Cedar performs validation on all submitted new or updated static policies and policy templates. Any that fail validation are rejected and Cedar doesn't store them in the policy store.</p> </li> </ul> <important> <p>If <code>Mode=STRICT</code> and the policy store doesn't contain a schema, Verified Permissions rejects all static policies and policy templates because there is no schema to validate against. </p> <p>To submit a static policy or policy template without a schema, you must turn off validation.</p> </important>
    #   @return [String]
    class ValidationSettings < Struct.new(
      :mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
