# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::VerifiedPermissions
  module Types

    # You don't have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an action for a request for which an
    # authorization decision is made.
    #
    # This data type is used as an request parameter to the
    # [IsAuthorized][1] and [IsAuthorizedWithToken][2] operations.
    #
    # Example: `\{ "actionId": "<action name>", "actionType": "Action" \}`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html
    # [2]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html
    #
    # @!attribute [rw] action_type
    #   The type of an action.
    #   @return [String]
    #
    # @!attribute [rw] action_id
    #   The ID of an action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ActionIdentifier AWS API Documentation
    #
    class ActionIdentifier < Struct.new(
      :action_type,
      :action_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of an attribute.
    #
    # Contains information about the runtime context for a request for which
    # an authorization decision is made.
    #
    # This data type is used as a member of the [ContextDefinition][1]
    # structure which is uses as a request parameter for the
    # [IsAuthorized][2] and [IsAuthorizedWithToken][3] operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ContextDefinition.html
    # [2]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html
    # [3]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html
    #
    # @note AttributeValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] boolean
    #   An attribute value of [Boolean][1] type.
    #
    #   Example: `\{"boolean": true\}`
    #
    #
    #
    #   [1]: https://docs.cedarpolicy.com/syntax-datatypes.html#boolean
    #   @return [Boolean]
    #
    # @!attribute [rw] entity_identifier
    #   An attribute value of type [EntityIdentifier][1].
    #
    #   Example: `"entityIdentifier": \{ "entityId": "<id>", "entityType":
    #   "<entity type>"\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_EntityIdentifier.html
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] long
    #   An attribute value of [Long][1] type.
    #
    #   Example: `\{"long": 0\}`
    #
    #
    #
    #   [1]: https://docs.cedarpolicy.com/syntax-datatypes.html#long
    #   @return [Integer]
    #
    # @!attribute [rw] string
    #   An attribute value of [String][1] type.
    #
    #   Example: `\{"string": "abc"\}`
    #
    #
    #
    #   [1]: https://docs.cedarpolicy.com/syntax-datatypes.html#string
    #   @return [String]
    #
    # @!attribute [rw] set
    #   An attribute value of [Set][1] type.
    #
    #   Example: `\{"set": [ \{\} ] \}`
    #
    #
    #
    #   [1]: https://docs.cedarpolicy.com/syntax-datatypes.html#set
    #   @return [Array<Types::AttributeValue>]
    #
    # @!attribute [rw] record
    #   An attribute value of [Record][1] type.
    #
    #   Example: `\{"record": \{ "keyName": \{\} \} \}`
    #
    #
    #
    #   [1]: https://docs.cedarpolicy.com/syntax-datatypes.html#record
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/AttributeValue AWS API Documentation
    #
    class AttributeValue < Struct.new(
      :boolean,
      :entity_identifier,
      :long,
      :string,
      :set,
      :record,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Boolean < AttributeValue; end
      class EntityIdentifier < AttributeValue; end
      class Long < AttributeValue; end
      class String < AttributeValue; end
      class Set < AttributeValue; end
      class Record < AttributeValue; end
      class Unknown < AttributeValue; end
    end

    # The configuration for an identity source that represents a connection
    # to an Amazon Cognito user pool used as an identity provider for
    # Verified Permissions.
    #
    # This data type is used as a field that is part of an
    # [Configuration][1] structure that is used as a parameter to the
    # [Configuration][1].
    #
    # Example:`"CognitoUserPoolConfiguration":\{"UserPoolArn":"arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5","ClientIds":
    # ["a1b2c3d4e5f6g7h8i9j0kalbmc"]\}`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_Configuration.html
    #
    # @!attribute [rw] user_pool_arn
    #   The [Amazon Resource Name (ARN)][1] of the Amazon Cognito user pool
    #   that contains the identities to be authorized.
    #
    #   Example: `"UserPoolArn":
    #   "arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5"`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] client_ids
    #   The unique application client IDs that are associated with the
    #   specified Amazon Cognito user pool.
    #
    #   Example: `"ClientIds": ["&ExampleCogClientId;"]`
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CognitoUserPoolConfiguration AWS API Documentation
    #
    class CognitoUserPoolConfiguration < Struct.new(
      :user_pool_arn,
      :client_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information used when creating a new identity
    # source.
    #
    # <note markdown="1"> At this time, the only valid member of this structure is a Amazon
    # Cognito user pool configuration.
    #
    #  You must specify a `userPoolArn`, and optionally, a `ClientId`.
    #
    #  </note>
    #
    # This data type is used as a request parameter for the
    # [CreateIdentitySource][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreateIdentitySource.html
    #
    # @note Configuration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] cognito_user_pool_configuration
    #   Contains configuration details of a Amazon Cognito user pool that
    #   Verified Permissions can use as a source of authenticated identities
    #   as entities. It specifies the [Amazon Resource Name (ARN)][1] of a
    #   Amazon Cognito user pool and one or more application client IDs.
    #
    #   Example:
    #   `"configuration":\{"cognitoUserPoolConfiguration":\{"userPoolArn":"arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5","clientIds":
    #   ["a1b2c3d4e5f6g7h8i9j0kalbmc"]\}\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Types::CognitoUserPoolConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/Configuration AWS API Documentation
    #
    class Configuration < Struct.new(
      :cognito_user_pool_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CognitoUserPoolConfiguration < Configuration; end
      class Unknown < Configuration; end
    end

    # The request failed because another request to modify a resource
    # occurred at the same.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The list of resources referenced with this failed request.
    #   @return [Array<Types::ResourceConflict>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains additional details about the context of the request. Verified
    # Permissions evaluates this information in an authorization request as
    # part of the `when` and `unless` clauses in a policy.
    #
    # This data type is used as a request parameter for the
    # [IsAuthorized][1] and [IsAuthorizedWithToken][2] operations.
    #
    # Example:
    # `"context":\{"Context":\{"<KeyName1>":\{"boolean":true\},"<KeyName2>":\{"long":1234\}\}\}`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html
    # [2]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html
    #
    # @note ContextDefinition is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] context_map
    #   An list of attributes that are needed to successfully evaluate an
    #   authorization request. Each attribute in this array must include a
    #   map of a data type and its value.
    #
    #   Example:
    #   `"Context":\{"<KeyName1>":\{"boolean":true\},"<KeyName2>":\{"long":1234\}\}`
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ContextDefinition AWS API Documentation
    #
    class ContextDefinition < Struct.new(
      :context_map,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ContextMap < ContextDefinition; end
      class Unknown < ContextDefinition; end
    end

    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store in which you want to store this
    #   identity source. Only policies and requests made using this policy
    #   store can reference identities from the identity provider configured
    #   in the new identity source.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Specifies the details required to communicate with the identity
    #   provider (IdP) associated with this identity source.
    #
    #   <note markdown="1"> At this time, the only valid member of this structure is a Amazon
    #   Cognito user pool configuration.
    #
    #    You must specify a `UserPoolArn`, and optionally, a `ClientId`.
    #
    #    </note>
    #   @return [Types::Configuration]
    #
    # @!attribute [rw] principal_entity_type
    #   Specifies the namespace and data type of the principals generated
    #   for identities authenticated by the new identity source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreateIdentitySourceInput AWS API Documentation
    #
    class CreateIdentitySourceInput < Struct.new(
      :client_token,
      :policy_store_id,
      :configuration,
      :principal_entity_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_date
    #   The date and time the identity source was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] identity_source_id
    #   The unique ID of the new identity source.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time the identity source was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] policy_store_id
    #   The ID of the policy store that contains the identity source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreateIdentitySourceOutput AWS API Documentation
    #
    class CreateIdentitySourceOutput < Struct.new(
      :created_date,
      :identity_source_id,
      :last_updated_date,
      :policy_store_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] policy_store_id
    #   Specifies the `PolicyStoreId` of the policy store you want to store
    #   the policy in.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   A structure that specifies the policy type and content to use for
    #   the new policy. You must include either a static or a templateLinked
    #   element. The policy content must be written in the Cedar policy
    #   language.
    #   @return [Types::PolicyDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreatePolicyInput AWS API Documentation
    #
    class CreatePolicyInput < Struct.new(
      :client_token,
      :policy_store_id,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   The ID of the policy store that contains the new policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The unique ID of the new policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The policy type of the new policy.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal specified in the new policy's scope. This response
    #   element isn't present when `principal` isn't specified in the
    #   policy content.
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] resource
    #   The resource specified in the new policy's scope. This response
    #   element isn't present when the `resource` isn't specified in the
    #   policy content.
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] created_date
    #   The date and time the policy was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time the policy was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreatePolicyOutput AWS API Documentation
    #
    class CreatePolicyOutput < Struct.new(
      :policy_store_id,
      :policy_id,
      :policy_type,
      :principal,
      :resource,
      :created_date,
      :last_updated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] validation_settings
    #   Specifies the validation setting for this policy store.
    #
    #   Currently, the only valid and required value is `Mode`.
    #
    #   We recommend that you turn on `STRICT` mode only after you define a
    #   schema. If a schema doesn't exist, then `STRICT` mode causes any
    #   policy to fail validation, and Verified Permissions rejects the
    #   policy. You can turn off validation by using the
    #   [UpdatePolicyStore][1]. Then, when you have a schema defined, use
    #   [UpdatePolicyStore][1] again to turn validation back on.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyStore
    #   @return [Types::ValidationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreatePolicyStoreInput AWS API Documentation
    #
    class CreatePolicyStoreInput < Struct.new(
      :client_token,
      :validation_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   The unique ID of the new policy store.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the new policy store.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date and time the policy store was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time the policy store was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreatePolicyStoreOutput AWS API Documentation
    #
    class CreatePolicyStoreOutput < Struct.new(
      :policy_store_id,
      :arn,
      :created_date,
      :last_updated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] policy_store_id
    #   The ID of the policy store in which to create the policy template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Specifies a description for the policy template.
    #   @return [String]
    #
    # @!attribute [rw] statement
    #   Specifies the content that you want to use for the new policy
    #   template, written in the Cedar policy language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreatePolicyTemplateInput AWS API Documentation
    #
    class CreatePolicyTemplateInput < Struct.new(
      :client_token,
      :policy_store_id,
      :description,
      :statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   The ID of the policy store that contains the policy template.
    #   @return [String]
    #
    # @!attribute [rw] policy_template_id
    #   The unique ID of the new policy template.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date and time the policy template was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time the policy template was most recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreatePolicyTemplateOutput AWS API Documentation
    #
    class CreatePolicyTemplateOutput < Struct.new(
      :policy_store_id,
      :policy_template_id,
      :created_date,
      :last_updated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store that contains the identity
    #   source that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] identity_source_id
    #   Specifies the ID of the identity source that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeleteIdentitySourceInput AWS API Documentation
    #
    class DeleteIdentitySourceInput < Struct.new(
      :policy_store_id,
      :identity_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeleteIdentitySourceOutput AWS API Documentation
    #
    class DeleteIdentitySourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store that contains the policy that
    #   you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   Specifies the ID of the policy that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeletePolicyInput AWS API Documentation
    #
    class DeletePolicyInput < Struct.new(
      :policy_store_id,
      :policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeletePolicyOutput AWS API Documentation
    #
    class DeletePolicyOutput < Aws::EmptyStructure; end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeletePolicyStoreInput AWS API Documentation
    #
    class DeletePolicyStoreInput < Struct.new(
      :policy_store_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeletePolicyStoreOutput AWS API Documentation
    #
    class DeletePolicyStoreOutput < Aws::EmptyStructure; end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store that contains the policy
    #   template that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] policy_template_id
    #   Specifies the ID of the policy template that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeletePolicyTemplateInput AWS API Documentation
    #
    class DeletePolicyTemplateInput < Struct.new(
      :policy_store_id,
      :policy_template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeletePolicyTemplateOutput AWS API Documentation
    #
    class DeletePolicyTemplateOutput < Aws::EmptyStructure; end

    # Contains information about one of the policies that determined an
    # authorization decision.
    #
    # This data type is used as an element in a response parameter for the
    # [IsAuthorized][1] and [IsAuthorizedWithToken][2] operations.
    #
    # Example:
    # `"determiningPolicies":[\{"policyId":"SPEXAMPLEabcdefg111111"\}]`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html
    # [2]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html
    #
    # @!attribute [rw] policy_id
    #   The Id of a policy that determined to an authorization decision.
    #
    #   Example: `"policyId":"SPEXAMPLEabcdefg111111"`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeterminingPolicyItem AWS API Documentation
    #
    class DeterminingPolicyItem < Struct.new(
      :policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the list of entities to be considered during an authorization
    # request. This includes all principals, resources, and actions required
    # to successfully evaluate the request.
    #
    # This data type is used as a field in the response parameter for the
    # [IsAuthorized][1] and [IsAuthorizedWithToken][2] operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html
    # [2]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html
    #
    # @note EntitiesDefinition is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] entity_list
    #   An array of entities that are needed to successfully evaluate an
    #   authorization request. Each entity in this array must include an
    #   identifier for the entity, the attributes of the entity, and a list
    #   of any parent entities.
    #   @return [Array<Types::EntityItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/EntitiesDefinition AWS API Documentation
    #
    class EntitiesDefinition < Struct.new(
      :entity_list,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EntityList < EntitiesDefinition; end
      class Unknown < EntitiesDefinition; end
    end

    # Contains the identifier of an entity, including its ID and type.
    #
    # This data type is used as a request parameter for [IsAuthorized][1]
    # operation, and as a response parameter for the [CreatePolicy][2],
    # [GetPolicy][3], and [UpdatePolicy][4] operations.
    #
    # Example: `\{"entityId":"string","entityType":"string"\}`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html
    # [2]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreatePolicy.html
    # [3]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_GetPolicy.html
    # [4]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicy.html
    #
    # @!attribute [rw] entity_type
    #   The type of an entity.
    #
    #   Example: `"entityType":"typeName"`
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier of an entity.
    #
    #   `"entityId":"identifier"`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/EntityIdentifier AWS API Documentation
    #
    class EntityIdentifier < Struct.new(
      :entity_type,
      :entity_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an entity that can be referenced in a Cedar
    # policy.
    #
    # This data type is used as one of the fields in the
    # [EntitiesDefinition][1] structure.
    #
    # `\{ "id": \{ "entityType": "Photo", "entityId": "VacationPhoto94.jpg"
    # \}, "Attributes": \{\}, "Parents": [ \{ "entityType": "Album",
    # "entityId": "alice_folder" \} ] \}`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_EntitiesDefinition.html
    #
    # @!attribute [rw] identifier
    #   The identifier of the entity.
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] attributes
    #   A list of attributes for the entity.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] parents
    #   The parents in the hierarchy that contains the entity.
    #   @return [Array<Types::EntityIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/EntityItem AWS API Documentation
    #
    class EntityItem < Struct.new(
      :identifier,
      :attributes,
      :parents)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a principal or resource that can be
    # referenced in a Cedar policy.
    #
    # This data type is used as part of the [PolicyFilter][1] structure that
    # is used as a request parameter for the [ListPolicies][2] operation..
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_PolicyFilter.html
    # [2]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicies.html
    #
    # @note EntityReference is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] unspecified
    #   Used to indicate that a principal or resource is not specified. This
    #   can be used to search for policies that are not associated with a
    #   specific principal or resource.
    #   @return [Boolean]
    #
    # @!attribute [rw] identifier
    #   The identifier of the entity. It can consist of either an EntityType
    #   and EntityId, a principal, or a resource.
    #   @return [Types::EntityIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/EntityReference AWS API Documentation
    #
    class EntityReference < Struct.new(
      :unspecified,
      :identifier,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Unspecified < EntityReference; end
      class Identifier < EntityReference; end
      class Unknown < EntityReference; end
    end

    # Contains a description of an evaluation error.
    #
    # This data type is used as a request parameter in the [IsAuthorized][1]
    # and [IsAuthorizedWithToken][2] operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html
    # [2]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html
    #
    # @!attribute [rw] error_description
    #   The error description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/EvaluationErrorItem AWS API Documentation
    #
    class EvaluationErrorItem < Struct.new(
      :error_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store that contains the identity
    #   source you want information about.
    #   @return [String]
    #
    # @!attribute [rw] identity_source_id
    #   Specifies the ID of the identity source you want information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetIdentitySourceInput AWS API Documentation
    #
    class GetIdentitySourceInput < Struct.new(
      :policy_store_id,
      :identity_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_date
    #   The date and time that the identity source was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] details
    #   A structure that describes the configuration of the identity source.
    #   @return [Types::IdentitySourceDetails]
    #
    # @!attribute [rw] identity_source_id
    #   The ID of the identity source.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time that the identity source was most recently
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] policy_store_id
    #   The ID of the policy store that contains the identity source.
    #   @return [String]
    #
    # @!attribute [rw] principal_entity_type
    #   The data type of principals generated for identities authenticated
    #   by this identity source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetIdentitySourceOutput AWS API Documentation
    #
    class GetIdentitySourceOutput < Struct.new(
      :created_date,
      :details,
      :identity_source_id,
      :last_updated_date,
      :policy_store_id,
      :principal_entity_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store that contains the policy that
    #   you want information about.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   Specifies the ID of the policy you want information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetPolicyInput AWS API Documentation
    #
    class GetPolicyInput < Struct.new(
      :policy_store_id,
      :policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   The ID of the policy store that contains the policy that you want
    #   information about.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The unique ID of the policy that you want information about.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of the policy.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal specified in the policy's scope. This element isn't
    #   included in the response when `Principal` isn't present in the
    #   policy content.
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] resource
    #   The resource specified in the policy's scope. This element isn't
    #   included in the response when `Resource` isn't present in the
    #   policy content.
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] definition
    #   The definition of the requested policy.
    #   @return [Types::PolicyDefinitionDetail]
    #
    # @!attribute [rw] created_date
    #   The date and time that the policy was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time that the policy was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetPolicyOutput AWS API Documentation
    #
    class GetPolicyOutput < Struct.new(
      :policy_store_id,
      :policy_id,
      :policy_type,
      :principal,
      :resource,
      :definition,
      :created_date,
      :last_updated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store that you want information
    #   about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetPolicyStoreInput AWS API Documentation
    #
    class GetPolicyStoreInput < Struct.new(
      :policy_store_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   The ID of the policy store;
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the policy store.
    #   @return [String]
    #
    # @!attribute [rw] validation_settings
    #   The current validation settings for the policy store.
    #   @return [Types::ValidationSettings]
    #
    # @!attribute [rw] created_date
    #   The date and time that the policy store was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time that the policy store was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetPolicyStoreOutput AWS API Documentation
    #
    class GetPolicyStoreOutput < Struct.new(
      :policy_store_id,
      :arn,
      :validation_settings,
      :created_date,
      :last_updated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store that contains the policy
    #   template that you want information about.
    #   @return [String]
    #
    # @!attribute [rw] policy_template_id
    #   Specifies the ID of the policy template that you want information
    #   about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetPolicyTemplateInput AWS API Documentation
    #
    class GetPolicyTemplateInput < Struct.new(
      :policy_store_id,
      :policy_template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   The ID of the policy store that contains the policy template.
    #   @return [String]
    #
    # @!attribute [rw] policy_template_id
    #   The ID of the policy template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the policy template.
    #   @return [String]
    #
    # @!attribute [rw] statement
    #   The content of the body of the policy template written in the Cedar
    #   policy language.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date and time that the policy template was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time that the policy template was most recently
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetPolicyTemplateOutput AWS API Documentation
    #
    class GetPolicyTemplateOutput < Struct.new(
      :policy_store_id,
      :policy_template_id,
      :description,
      :statement,
      :created_date,
      :last_updated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store that contains the schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetSchemaInput AWS API Documentation
    #
    class GetSchemaInput < Struct.new(
      :policy_store_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   The ID of the policy store that contains the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The body of the schema, written in Cedar schema JSON.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date and time that the schema was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time that the schema was most recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetSchemaOutput AWS API Documentation
    #
    class GetSchemaOutput < Struct.new(
      :policy_store_id,
      :schema,
      :created_date,
      :last_updated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains configuration of the identity source.
    #
    # This data type is used as a response parameter for the
    # [CreateIdentitySource][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreateIdentitySource.html
    #
    # @!attribute [rw] client_ids
    #   The application client IDs associated with the specified Amazon
    #   Cognito user pool that are enabled for this identity source.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_pool_arn
    #   The [Amazon Resource Name (ARN)][1] of the Amazon Cognito user pool
    #   whose identities are accessible to this Verified Permissions policy
    #   store.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] discovery_url
    #   The well-known URL that points to this user pool's OIDC discovery
    #   endpoint. This is a URL string in the following format. This URL
    #   replaces the placeholders for both the Amazon Web Services Region
    #   and the user pool identifier with those appropriate for this user
    #   pool.
    #
    #   `https://cognito-idp.<region>.amazonaws.com/<user-pool-id>/.well-known/openid-configuration`
    #   @return [String]
    #
    # @!attribute [rw] open_id_issuer
    #   A string that identifies the type of OIDC service represented by
    #   this identity source.
    #
    #   At this time, the only valid value is `cognito`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/IdentitySourceDetails AWS API Documentation
    #
    class IdentitySourceDetails < Struct.new(
      :client_ids,
      :user_pool_arn,
      :discovery_url,
      :open_id_issuer)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines characteristics of an identity source that
    # you can use to filter.
    #
    # This data type is used as a request parameter for the
    # [ListIdentityStores][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListIdentityStores.html
    #
    # @!attribute [rw] principal_entity_type
    #   The Cedar entity type of the principals returned by the identity
    #   provider (IdP) associated with this identity source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/IdentitySourceFilter AWS API Documentation
    #
    class IdentitySourceFilter < Struct.new(
      :principal_entity_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines an identity source.
    #
    # This data type is used as a request parameter for the
    # [ListIdentityStores][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListIdentityStores.html
    #
    # @!attribute [rw] created_date
    #   The date and time the identity source was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] details
    #   A structure that contains the details of the associated identity
    #   provider (IdP).
    #   @return [Types::IdentitySourceItemDetails]
    #
    # @!attribute [rw] identity_source_id
    #   The unique identifier of the identity source.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time the identity source was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] policy_store_id
    #   The identifier of the policy store that contains the identity
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] principal_entity_type
    #   The Cedar entity type of the principals returned from the IdP
    #   associated with this identity source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/IdentitySourceItem AWS API Documentation
    #
    class IdentitySourceItem < Struct.new(
      :created_date,
      :details,
      :identity_source_id,
      :last_updated_date,
      :policy_store_id,
      :principal_entity_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains configuration of the identity source.
    #
    # This data type is used as a response parameter for the
    # [CreateIdentitySource][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreateIdentitySource.html
    #
    # @!attribute [rw] client_ids
    #   The application client IDs associated with the specified Amazon
    #   Cognito user pool that are enabled for this identity source.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_pool_arn
    #   The Amazon Cognito user pool whose identities are accessible to this
    #   Verified Permissions policy store.
    #   @return [String]
    #
    # @!attribute [rw] discovery_url
    #   The well-known URL that points to this user pool's OIDC discovery
    #   endpoint. This is a URL string in the following format. This URL
    #   replaces the placeholders for both the Amazon Web Services Region
    #   and the user pool identifier with those appropriate for this user
    #   pool.
    #
    #   `https://cognito-idp.<region>.amazonaws.com/<user-pool-id>/.well-known/openid-configuration`
    #   @return [String]
    #
    # @!attribute [rw] open_id_issuer
    #   A string that identifies the type of OIDC service represented by
    #   this identity source.
    #
    #   At this time, the only valid value is `cognito`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/IdentitySourceItemDetails AWS API Documentation
    #
    class IdentitySourceItemDetails < Struct.new(
      :client_ids,
      :user_pool_arn,
      :discovery_url,
      :open_id_issuer)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because of an internal error. Try your request
    # again later
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store. Policies in this policy store
    #   will be used to make an authorization decision for the input.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   Specifies the principal for which the authorization decision is to
    #   be made.
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] action
    #   Specifies the requested action to be authorized. For example, is the
    #   principal authorized to perform this action on the resource?
    #   @return [Types::ActionIdentifier]
    #
    # @!attribute [rw] resource
    #   Specifies the resource for which the authorization decision is to be
    #   made.
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] context
    #   Specifies additional context that can be used to make more granular
    #   authorization decisions.
    #   @return [Types::ContextDefinition]
    #
    # @!attribute [rw] entities
    #   Specifies the list of resources and principals and their associated
    #   attributes that Verified Permissions can examine when evaluating the
    #   policies.
    #
    #   <note markdown="1"> You can include only principal and resource entities in this
    #   parameter; you can't include actions. You must specify actions in
    #   the schema.
    #
    #    </note>
    #   @return [Types::EntitiesDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/IsAuthorizedInput AWS API Documentation
    #
    class IsAuthorizedInput < Struct.new(
      :policy_store_id,
      :principal,
      :action,
      :resource,
      :context,
      :entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] decision
    #   An authorization decision that indicates if the authorization
    #   request should be allowed or denied.
    #   @return [String]
    #
    # @!attribute [rw] determining_policies
    #   The list of determining policies used to make the authorization
    #   decision. For example, if there are two matching policies, where one
    #   is a forbid and the other is a permit, then the forbid policy will
    #   be the determining policy. In the case of multiple matching permit
    #   policies then there would be multiple determining policies. In the
    #   case that no policies match, and hence the response is DENY, there
    #   would be no determining policies.
    #   @return [Array<Types::DeterminingPolicyItem>]
    #
    # @!attribute [rw] errors
    #   Errors that occurred while making an authorization decision, for
    #   example, a policy references an Entity or entity Attribute that does
    #   not exist in the slice.
    #   @return [Array<Types::EvaluationErrorItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/IsAuthorizedOutput AWS API Documentation
    #
    class IsAuthorizedOutput < Struct.new(
      :decision,
      :determining_policies,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store. Policies in this policy store
    #   will be used to make an authorization decision for the input.
    #   @return [String]
    #
    # @!attribute [rw] identity_token
    #   Specifies an identity token for the principal to be authorized. This
    #   token is provided to you by the identity provider (IdP) associated
    #   with the specified identity source. You must specify either an
    #   `AccessToken` or an `IdentityToken`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   Specifies an access token for the principal to be authorized. This
    #   token is provided to you by the identity provider (IdP) associated
    #   with the specified identity source. You must specify either an
    #   `AccessToken` or an `IdentityToken`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   Specifies the requested action to be authorized. Is the specified
    #   principal authorized to perform this action on the specified
    #   resource.
    #   @return [Types::ActionIdentifier]
    #
    # @!attribute [rw] resource
    #   Specifies the resource for which the authorization decision is made.
    #   For example, is the principal allowed to perform the action on the
    #   resource?
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] context
    #   Specifies additional context that can be used to make more granular
    #   authorization decisions.
    #   @return [Types::ContextDefinition]
    #
    # @!attribute [rw] entities
    #   Specifies the list of resources and principals and their associated
    #   attributes that Verified Permissions can examine when evaluating the
    #   policies.
    #
    #   <note markdown="1"> You can include only principal and resource entities in this
    #   parameter; you can't include actions. You must specify actions in
    #   the schema.
    #
    #    </note>
    #   @return [Types::EntitiesDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/IsAuthorizedWithTokenInput AWS API Documentation
    #
    class IsAuthorizedWithTokenInput < Struct.new(
      :policy_store_id,
      :identity_token,
      :access_token,
      :action,
      :resource,
      :context,
      :entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] decision
    #   An authorization decision that indicates if the authorization
    #   request should be allowed or denied.
    #   @return [String]
    #
    # @!attribute [rw] determining_policies
    #   The list of determining policies used to make the authorization
    #   decision. For example, if there are multiple matching policies,
    #   where at least one is a forbid policy, then because forbid always
    #   overrides permit the forbid policies are the determining policies.
    #   If all matching policies are permit policies, then those policies
    #   are the determining policies. When no policies match and the
    #   response is the default DENY, there are no determining policies.
    #   @return [Array<Types::DeterminingPolicyItem>]
    #
    # @!attribute [rw] errors
    #   Errors that occurred while making an authorization decision. For
    #   example, a policy references an entity or entity attribute that does
    #   not exist in the slice.
    #   @return [Array<Types::EvaluationErrorItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/IsAuthorizedWithTokenOutput AWS API Documentation
    #
    class IsAuthorizedWithTokenOutput < Struct.new(
      :decision,
      :determining_policies,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store that contains the identity
    #   sources that you want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Specifies characteristics of an identity source that you can use to
    #   limit the output to matching identity sources.
    #   @return [Array<Types::IdentitySourceFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListIdentitySourcesInput AWS API Documentation
    #
    class ListIdentitySourcesInput < Struct.new(
      :policy_store_id,
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @!attribute [rw] identity_sources
    #   The list of identity sources stored in the specified policy store.
    #   @return [Array<Types::IdentitySourceItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListIdentitySourcesOutput AWS API Documentation
    #
    class ListIdentitySourcesOutput < Struct.new(
      :next_token,
      :identity_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store you want to list policies from.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   Specifies a filter that limits the response to only policies that
    #   match the specified criteria. For example, you list only the
    #   policies that reference a specified principal.
    #   @return [Types::PolicyFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListPoliciesInput AWS API Documentation
    #
    class ListPoliciesInput < Struct.new(
      :policy_store_id,
      :next_token,
      :max_results,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   Lists all policies that are available in the specified policy store.
    #   @return [Array<Types::PolicyItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListPoliciesOutput AWS API Documentation
    #
    class ListPoliciesOutput < Struct.new(
      :next_token,
      :policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListPolicyStoresInput AWS API Documentation
    #
    class ListPolicyStoresInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @!attribute [rw] policy_stores
    #   The list of policy stores in the account.
    #   @return [Array<Types::PolicyStoreItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListPolicyStoresOutput AWS API Documentation
    #
    class ListPolicyStoresOutput < Struct.new(
      :next_token,
      :policy_stores)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store that contains the policy
    #   templates you want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListPolicyTemplatesInput AWS API Documentation
    #
    class ListPolicyTemplatesInput < Struct.new(
      :policy_store_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @!attribute [rw] policy_templates
    #   The list of the policy templates in the specified policy store.
    #   @return [Array<Types::PolicyTemplateItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListPolicyTemplatesOutput AWS API Documentation
    #
    class ListPolicyTemplatesOutput < Struct.new(
      :next_token,
      :policy_templates)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the details for a Cedar policy definition.
    # It includes the policy type, a description, and a policy body. This is
    # a top level data type used to create a policy.
    #
    # This data type is used as a request parameter for the
    # [CreatePolicy][1] operation. This structure must always have either an
    # `static` or a `templateLinked` element.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreatePolicy.html
    #
    # @note PolicyDefinition is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] static
    #   A structure that describes a static policy. An static policy
    #   doesn't use a template or allow placeholders for entities.
    #   @return [Types::StaticPolicyDefinition]
    #
    # @!attribute [rw] template_linked
    #   A structure that describes a policy that was instantiated from a
    #   template. The template can specify placeholders for `principal` and
    #   `resource`. When you use [CreatePolicy][1] to create a policy from a
    #   template, you specify the exact principal and resource to use for
    #   the instantiated policy.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreatePolicy.html
    #   @return [Types::TemplateLinkedPolicyDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/PolicyDefinition AWS API Documentation
    #
    class PolicyDefinition < Struct.new(
      :static,
      :template_linked,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Static < PolicyDefinition; end
      class TemplateLinked < PolicyDefinition; end
      class Unknown < PolicyDefinition; end
    end

    # A structure that describes a policy definition. It must always have
    # either an `static` or a `templateLinked` element.
    #
    # This data type is used as a response parameter for the [GetPolicy][1]
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_GetPolicy.html
    #
    # @note PolicyDefinitionDetail is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PolicyDefinitionDetail corresponding to the set member.
    #
    # @!attribute [rw] static
    #   Information about a static policy that wasn't created with a policy
    #   template.
    #   @return [Types::StaticPolicyDefinitionDetail]
    #
    # @!attribute [rw] template_linked
    #   Information about a template-linked policy that was created by
    #   instantiating a policy template.
    #   @return [Types::TemplateLinkedPolicyDefinitionDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/PolicyDefinitionDetail AWS API Documentation
    #
    class PolicyDefinitionDetail < Struct.new(
      :static,
      :template_linked,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Static < PolicyDefinitionDetail; end
      class TemplateLinked < PolicyDefinitionDetail; end
      class Unknown < PolicyDefinitionDetail; end
    end

    # A structure that describes a [PolicyDefinintion][1]. It will always
    # have either an `StaticPolicy` or a `TemplateLinkedPolicy` element.
    #
    # This data type is used as a response parameter for the
    # [CreatePolicy][2] and [ListPolicies][3] operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_PolicyDefinintion.html
    # [2]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreatePolicy.html
    # [3]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicies.html
    #
    # @note PolicyDefinitionItem is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PolicyDefinitionItem corresponding to the set member.
    #
    # @!attribute [rw] static
    #   Information about a static policy that wasn't created with a policy
    #   template.
    #   @return [Types::StaticPolicyDefinitionItem]
    #
    # @!attribute [rw] template_linked
    #   Information about a template-linked policy that was created by
    #   instantiating a policy template.
    #   @return [Types::TemplateLinkedPolicyDefinitionItem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/PolicyDefinitionItem AWS API Documentation
    #
    class PolicyDefinitionItem < Struct.new(
      :static,
      :template_linked,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Static < PolicyDefinitionItem; end
      class TemplateLinked < PolicyDefinitionItem; end
      class Unknown < PolicyDefinitionItem; end
    end

    # Contains information about a filter to refine policies returned in a
    # query.
    #
    # This data type is used as a response parameter for the
    # [ListPolicies][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicies.html
    #
    # @!attribute [rw] principal
    #   Filters the output to only policies that reference the specified
    #   principal.
    #   @return [Types::EntityReference]
    #
    # @!attribute [rw] resource
    #   Filters the output to only policies that reference the specified
    #   resource.
    #   @return [Types::EntityReference]
    #
    # @!attribute [rw] policy_type
    #   Filters the output to only policies of the specified type.
    #   @return [String]
    #
    # @!attribute [rw] policy_template_id
    #   Filters the output to only template-linked policies that were
    #   instantiated from the specified policy template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/PolicyFilter AWS API Documentation
    #
    class PolicyFilter < Struct.new(
      :principal,
      :resource,
      :policy_type,
      :policy_template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a policy.
    #
    # This data type is used as a response parameter for the
    # [ListPolicies][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicies.html
    #
    # @!attribute [rw] policy_store_id
    #   The identifier of the PolicyStore where the policy you want
    #   information about is stored.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The identifier of the policy you want information about.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of the policy. This is one of the following values:
    #
    #   * `static`
    #
    #   * `templateLinked`
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal associated with the policy.
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] resource
    #   The resource associated with the policy.
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] definition
    #   The policy definition of an item in the list of policies returned.
    #   @return [Types::PolicyDefinitionItem]
    #
    # @!attribute [rw] created_date
    #   The date and time the policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time the policy was most recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/PolicyItem AWS API Documentation
    #
    class PolicyItem < Struct.new(
      :policy_store_id,
      :policy_id,
      :policy_type,
      :principal,
      :resource,
      :definition,
      :created_date,
      :last_updated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a policy store.
    #
    # This data type is used as a response parameter for the
    # [ListPolicyStores][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicyStores.html
    #
    # @!attribute [rw] policy_store_id
    #   The unique identifier of the policy store.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the policy store.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date and time the policy was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/PolicyStoreItem AWS API Documentation
    #
    class PolicyStoreItem < Struct.new(
      :policy_store_id,
      :arn,
      :created_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a policy template
    #
    # This data type is used as a response parameter for the
    # [ListPolicyTemplates][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicyTemplates.html
    #
    # @!attribute [rw] policy_store_id
    #   The unique identifier of the policy store that contains the
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] policy_template_id
    #   The unique identifier of the policy template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description attached to the policy template.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date and time that the policy template was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time that the policy template was most recently
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/PolicyTemplateItem AWS API Documentation
    #
    class PolicyTemplateItem < Struct.new(
      :policy_store_id,
      :policy_template_id,
      :description,
      :created_date,
      :last_updated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store in which to place the schema.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Specifies the definition of the schema to be stored. The schema
    #   definition must be written in Cedar schema JSON.
    #   @return [Types::SchemaDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/PutSchemaInput AWS API Documentation
    #
    class PutSchemaInput < Struct.new(
      :policy_store_id,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   The unique ID of the policy store that contains the schema.
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   Identifies the namespaces of the entities referenced by this schema.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_date
    #   The date and time that the schema was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time that the schema was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/PutSchemaOutput AWS API Documentation
    #
    class PutSchemaOutput < Struct.new(
      :policy_store_id,
      :namespaces,
      :created_date,
      :last_updated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a resource conflict.
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the resource involved in a conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource involved in a conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ResourceConflict AWS API Documentation
    #
    class ResourceConflict < Struct.new(
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because it references a resource that doesn't
    # exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique ID of the resource referenced in the failed request.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type of the resource referenced in the failed request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a list of principal types, resource types, and actions that
    # can be specified in policies stored in the same policy store. If the
    # validation mode for the policy store is set to `STRICT`, then policies
    # that can't be validated by this schema are rejected by Verified
    # Permissions and can't be stored in the policy store.
    #
    # @note SchemaDefinition is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] cedar_json
    #   A JSON string representation of the schema supported by applications
    #   that use this policy store. For more information, see [Policy store
    #   schema][1] in the *Amazon Verified Permissions User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/userguide/schema.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/SchemaDefinition AWS API Documentation
    #
    class SchemaDefinition < Struct.new(
      :cedar_json,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CedarJson < SchemaDefinition; end
      class Unknown < SchemaDefinition; end
    end

    # The request failed because it would cause a service quota to be
    # exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique ID of the resource referenced in the failed request.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type of the resource referenced in the failed request.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the Amazon Web Service that owns the quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code recognized by the Amazon Web Services Service Quotas
    #   service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a static policy.
    #
    # This data type is used as a field that is part of the
    # [PolicyDefinitionDetail][1] type.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_PolicyDefinitionDetail.html
    #
    # @!attribute [rw] description
    #   The description of the static policy.
    #   @return [String]
    #
    # @!attribute [rw] statement
    #   The policy content of the static policy, written in the Cedar policy
    #   language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/StaticPolicyDefinition AWS API Documentation
    #
    class StaticPolicyDefinition < Struct.new(
      :description,
      :statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains details about a static policy. It includes
    # the description and policy body.
    #
    # This data type is used within a [PolicyDefinition][1] structure as
    # part of a request parameter for the [CreatePolicy][2] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_PolicyDefinition.html
    # [2]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreatePolicy.html
    #
    # @!attribute [rw] description
    #   A description of the static policy.
    #   @return [String]
    #
    # @!attribute [rw] statement
    #   The content of the static policy written in the Cedar policy
    #   language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/StaticPolicyDefinitionDetail AWS API Documentation
    #
    class StaticPolicyDefinitionDetail < Struct.new(
      :description,
      :statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains details about a static policy. It includes
    # the description and policy statement.
    #
    # This data type is used within a [PolicyDefinition][1] structure as
    # part of a request parameter for the [CreatePolicy][2] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_PolicyDefinition.html
    # [2]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreatePolicy.html
    #
    # @!attribute [rw] description
    #   A description of the static policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/StaticPolicyDefinitionItem AWS API Documentation
    #
    class StaticPolicyDefinitionItem < Struct.new(
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a policy created by instantiating a policy
    # template.
    #
    # @!attribute [rw] policy_template_id
    #   The unique identifier of the policy template used to create this
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal associated with this template-linked policy. Verified
    #   Permissions substitutes this principal for the `?principal`
    #   placeholder in the policy template when it evaluates an
    #   authorization request.
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] resource
    #   The resource associated with this template-linked policy. Verified
    #   Permissions substitutes this resource for the `?resource`
    #   placeholder in the policy template when it evaluates an
    #   authorization request.
    #   @return [Types::EntityIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/TemplateLinkedPolicyDefinition AWS API Documentation
    #
    class TemplateLinkedPolicyDefinition < Struct.new(
      :policy_template_id,
      :principal,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a policy that was
    #
    #
    #
    # created by instantiating a policy template.
    #
    # This
    #
    # @!attribute [rw] policy_template_id
    #   The unique identifier of the policy template used to create this
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal associated with this template-linked policy. Verified
    #   Permissions substitutes this principal for the `?principal`
    #   placeholder in the policy template when it evaluates an
    #   authorization request.
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] resource
    #   The resource associated with this template-linked policy. Verified
    #   Permissions substitutes this resource for the `?resource`
    #   placeholder in the policy template when it evaluates an
    #   authorization request.
    #   @return [Types::EntityIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/TemplateLinkedPolicyDefinitionDetail AWS API Documentation
    #
    class TemplateLinkedPolicyDefinitionDetail < Struct.new(
      :policy_template_id,
      :principal,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a policy created by instantiating a policy
    # template.
    #
    # This
    #
    # @!attribute [rw] policy_template_id
    #   The unique identifier of the policy template used to create this
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal associated with this template-linked policy. Verified
    #   Permissions substitutes this principal for the `?principal`
    #   placeholder in the policy template when it evaluates an
    #   authorization request.
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] resource
    #   The resource associated with this template-linked policy. Verified
    #   Permissions substitutes this resource for the `?resource`
    #   placeholder in the policy template when it evaluates an
    #   authorization request.
    #   @return [Types::EntityIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/TemplateLinkedPolicyDefinitionItem AWS API Documentation
    #
    class TemplateLinkedPolicyDefinitionItem < Struct.new(
      :policy_template_id,
      :principal,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because it exceeded a throttling quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the Amazon Web Service that owns the quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code recognized by the Amazon Web Services Service Quotas
    #   service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration details of a Amazon Cognito user pool for use
    # with an identity source.
    #
    # @!attribute [rw] user_pool_arn
    #   The [Amazon Resource Name (ARN)][1] of the Amazon Cognito user pool
    #   associated with this identity source.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] client_ids
    #   The client ID of an app client that is configured for the specified
    #   Amazon Cognito user pool.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdateCognitoUserPoolConfiguration AWS API Documentation
    #
    class UpdateCognitoUserPoolConfiguration < Struct.new(
      :user_pool_arn,
      :client_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an updated configuration to replace the configuration in an
    # existing identity source.
    #
    # <note markdown="1"> At this time, the only valid member of this structure is a Amazon
    # Cognito user pool configuration.
    #
    #  You must specify a `userPoolArn`, and optionally, a `ClientId`.
    #
    #  </note>
    #
    # @note UpdateConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] cognito_user_pool_configuration
    #   Contains configuration details of a Amazon Cognito user pool.
    #   @return [Types::UpdateCognitoUserPoolConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdateConfiguration AWS API Documentation
    #
    class UpdateConfiguration < Struct.new(
      :cognito_user_pool_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CognitoUserPoolConfiguration < UpdateConfiguration; end
      class Unknown < UpdateConfiguration; end
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store that contains the identity
    #   source that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] identity_source_id
    #   Specifies the ID of the identity source that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] update_configuration
    #   Specifies the details required to communicate with the identity
    #   provider (IdP) associated with this identity source.
    #
    #   <note markdown="1"> At this time, the only valid member of this structure is a Amazon
    #   Cognito user pool configuration.
    #
    #    You must specify a `userPoolArn`, and optionally, a `ClientId`.
    #
    #    </note>
    #   @return [Types::UpdateConfiguration]
    #
    # @!attribute [rw] principal_entity_type
    #   Specifies the data type of principals generated for identities
    #   authenticated by the identity source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdateIdentitySourceInput AWS API Documentation
    #
    class UpdateIdentitySourceInput < Struct.new(
      :policy_store_id,
      :identity_source_id,
      :update_configuration,
      :principal_entity_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_date
    #   The date and time that the updated identity source was originally
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] identity_source_id
    #   The ID of the updated identity source.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time that the identity source was most recently
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] policy_store_id
    #   The ID of the policy store that contains the updated identity
    #   source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdateIdentitySourceOutput AWS API Documentation
    #
    class UpdateIdentitySourceOutput < Struct.new(
      :created_date,
      :identity_source_id,
      :last_updated_date,
      :policy_store_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about updates to be applied to a policy.
    #
    # This data type is used as a request parameter in the [UpdatePolicy][1]
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicy.html
    #
    # @note UpdatePolicyDefinition is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] static
    #   Contains details about the updates to be applied to a static policy.
    #   @return [Types::UpdateStaticPolicyDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdatePolicyDefinition AWS API Documentation
    #
    class UpdatePolicyDefinition < Struct.new(
      :static,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Static < UpdatePolicyDefinition; end
      class Unknown < UpdatePolicyDefinition; end
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store that contains the policy that
    #   you want to update.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   Specifies the ID of the policy that you want to update. To find this
    #   value, you can use [ListPolicies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicies.html
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Specifies the updated policy content that you want to replace on the
    #   specified policy. The content must be valid Cedar policy language
    #   text.
    #
    #   You can change only the following elements from the policy
    #   definition:
    #
    #   * The `action` referenced by the policy.
    #
    #   * Any conditional clauses, such as `when` or `unless` clauses.
    #
    #   You **can't** change the following elements:
    #
    #   * Changing from `static` to `templateLinked`.
    #
    #   * Changing the effect of the policy from `permit` or `forbid`.
    #
    #   * The `principal` referenced by the policy.
    #
    #   * The `resource` referenced by the policy.
    #   @return [Types::UpdatePolicyDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdatePolicyInput AWS API Documentation
    #
    class UpdatePolicyInput < Struct.new(
      :policy_store_id,
      :policy_id,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   The ID of the policy store that contains the policy that was
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The ID of the policy that was updated.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of the policy that was updated.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal specified in the policy's scope. This element isn't
    #   included in the response when `Principal` isn't present in the
    #   policy content.
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] resource
    #   The resource specified in the policy's scope. This element isn't
    #   included in the response when `Resource` isn't present in the
    #   policy content.
    #   @return [Types::EntityIdentifier]
    #
    # @!attribute [rw] created_date
    #   The date and time that the policy was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time that the policy was most recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdatePolicyOutput AWS API Documentation
    #
    class UpdatePolicyOutput < Struct.new(
      :policy_store_id,
      :policy_id,
      :policy_type,
      :principal,
      :resource,
      :created_date,
      :last_updated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store that you want to update
    #   @return [String]
    #
    # @!attribute [rw] validation_settings
    #   A structure that defines the validation settings that want to enable
    #   for the policy store.
    #   @return [Types::ValidationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdatePolicyStoreInput AWS API Documentation
    #
    class UpdatePolicyStoreInput < Struct.new(
      :policy_store_id,
      :validation_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   The ID of the updated policy store.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The [Amazon Resource Name (ARN)][1] of the updated policy store.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date and time that the policy store was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time that the policy store was most recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdatePolicyStoreOutput AWS API Documentation
    #
    class UpdatePolicyStoreOutput < Struct.new(
      :policy_store_id,
      :arn,
      :created_date,
      :last_updated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   Specifies the ID of the policy store that contains the policy
    #   template that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] policy_template_id
    #   Specifies the ID of the policy template that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Specifies a new description to apply to the policy template.
    #   @return [String]
    #
    # @!attribute [rw] statement
    #   Specifies new statement content written in Cedar policy language to
    #   replace the current body of the policy template.
    #
    #   You can change only the following elements of the policy body:
    #
    #   * The `action` referenced by the policy template.
    #
    #   * Any conditional clauses, such as `when` or `unless` clauses.
    #
    #   You **can't** change the following elements:
    #
    #   * The effect (`permit` or `forbid`) of the policy template.
    #
    #   * The `principal` referenced by the policy template.
    #
    #   * The `resource` referenced by the policy template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdatePolicyTemplateInput AWS API Documentation
    #
    class UpdatePolicyTemplateInput < Struct.new(
      :policy_store_id,
      :policy_template_id,
      :description,
      :statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_store_id
    #   The ID of the policy store that contains the updated policy
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] policy_template_id
    #   The ID of the updated policy template.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date and time that the policy template was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time that the policy template was most recently
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdatePolicyTemplateOutput AWS API Documentation
    #
    class UpdatePolicyTemplateOutput < Struct.new(
      :policy_store_id,
      :policy_template_id,
      :created_date,
      :last_updated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an update to a static policy.
    #
    # @!attribute [rw] description
    #   Specifies the description to be added to or replaced on the static
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] statement
    #   Specifies the Cedar policy language text to be added to or replaced
    #   on the static policy.
    #
    #   You can change only the following elements from the original
    #   content:
    #
    #    * The `action` referenced by the policy.
    #
    #   * Any conditional clauses, such as `when` or `unless` clauses.
    #
    #    You **can't** change the following elements:
    #
    #    * Changing from `StaticPolicy` to `TemplateLinkedPolicy`.
    #
    #   * The effect (`permit` or `forbid`) of the policy.
    #
    #   * The `principal` referenced by the policy.
    #
    #   * The `resource` referenced by the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdateStaticPolicyDefinition AWS API Documentation
    #
    class UpdateStaticPolicyDefinition < Struct.new(
      :description,
      :statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because one or more input parameters don't satisfy
    # their constraint requirements. The output is provided as a list of
    # fields and a reason for each field that isn't valid.
    #
    # The possible reasons include the following:
    #
    # * **UnrecognizedEntityType**
    #
    #   The policy includes an entity type that isn't found in the schema.
    #
    # * **UnrecognizedActionId**
    #
    #   The policy includes an action id that isn't found in the schema.
    #
    # * **InvalidActionApplication**
    #
    #   The policy includes an action that, according to the schema,
    #   doesn't support the specified principal and resource.
    #
    # * **UnexpectedType**
    #
    #   The policy included an operand that isn't a valid type for the
    #   specified operation.
    #
    # * **IncompatibleTypes**
    #
    #   The types of elements included in a `set`, or the types of
    #   expressions used in an `if...then...else` clause aren't compatible
    #   in this context.
    #
    # * **MissingAttribute**
    #
    #   The policy attempts to access a record or entity attribute that
    #   isn't specified in the schema. Test for the existence of the
    #   attribute first before attempting to access its value. For more
    #   information, see the [has (presence of attribute test) operator][1]
    #   in the *Cedar Policy Language Guide*.
    #
    # * **UnsafeOptionalAttributeAccess**
    #
    #   The policy attempts to access a record or entity attribute that is
    #   optional and isn't guaranteed to be present. Test for the existence
    #   of the attribute first before attempting to access its value. For
    #   more information, see the [has (presence of attribute test)
    #   operator][1] in the *Cedar Policy Language Guide*.
    #
    # * **ImpossiblePolicy**
    #
    #   Cedar has determined that a policy condition always evaluates to
    #   false. If the policy is always false, it can never apply to any
    #   query, and so it can never affect an authorization decision.
    #
    # * **WrongNumberArguments**
    #
    #   The policy references an extension type with the wrong number of
    #   arguments.
    #
    # * **FunctionArgumentValidationError**
    #
    #   Cedar couldn't parse the argument passed to an extension type. For
    #   example, a string that is to be parsed as an IPv4 address can
    #   contain only digits and the period character.
    #
    #
    #
    # [1]: https://docs.cedarpolicy.com/syntax-operators.html#has-presence-of-attribute-test
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The list of fields that aren't valid.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a field that failed policy validation.
    #
    # @!attribute [rw] path
    #   The path to the specific element that Verified Permissions found to
    #   be not valid.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Describes the policy validation error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :path,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains Cedar policy validation settings for the
    # policy store. The validation mode determines which validation failures
    # that Cedar considers serious enough to block acceptance of a new or
    # edited static policy or policy template.
    #
    # This data type is used as a request parameter in the
    # [CreatePolicyStore][1] and [UpdatePolicyStore][2] operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreatePolicyStore.html
    # [2]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyStore.html
    #
    # @!attribute [rw] mode
    #   The validation mode currently configured for this policy store. The
    #   valid values are:
    #
    #   * **OFF** – Neither Verified Permissions nor Cedar perform any
    #     validation on policies. No validation errors are reported by
    #     either service.
    #
    #   * **STRICT** – Requires a schema to be present in the policy store.
    #     Cedar performs validation on all submitted new or updated static
    #     policies and policy templates. Any that fail validation are
    #     rejected and Cedar doesn't store them in the policy store.
    #
    #   If `Mode=STRICT` and the policy store doesn't contain a schema,
    #   Verified Permissions rejects all static policies and policy
    #   templates because there is no schema to validate against.
    #
    #    To submit a static policy or policy template without a schema, you
    #   must turn off validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ValidationSettings AWS API Documentation
    #
    class ValidationSettings < Struct.new(
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
