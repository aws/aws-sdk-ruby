# frozen_string_literal: true

# This is generated code!

module Aws::CognitoIdentityProvider
  # This module contains the types returned by client operations.
  module Types

    # <p>The settings for user message delivery in forgot-password operations. Contains
    #             preference for email or SMS message delivery of password reset codes, or for admin-only
    #             password reset.</p>
    # @!attribute recovery_mechanisms
    #   <p>The list of options and priorities for user message delivery in forgot-password
    #               operations. Sets or displays user pool preferences for email or SMS message priority,
    #               whether users should fall back to a second delivery method, and whether passwords should
    #               only be reset by administrators.</p>
    #   @return [Array<Types::RecoveryOptionType>]
    class AccountRecoverySettingType < Struct.new(
      :recovery_mechanisms,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The automated response to a risk level for adaptive authentication in full-function,
    #             or <code>ENFORCED</code>, mode. You can assign an action to each risk level that threat
    #             protection evaluates.</p>
    # @!attribute notify
    #   <p>Determines whether Amazon Cognito sends a user a notification message when your user pools
    #               assesses a user's session at the associated risk level.</p>
    #   @return [Boolean]
    # @!attribute event_action
    #   <p>The action to take for the attempted account takeover action for the associated risk
    #               level. Valid values are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BLOCK</code>: Block the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MFA_IF_CONFIGURED</code>: Present an MFA challenge if possible. MFA is
    #                       possible if the user pool has active MFA methods that the user can set up. For
    #                       example, if the user pool only supports SMS message MFA but the user
    #                       doesn't have a phone number attribute, MFA setup isn't possible. If MFA
    #                       setup isn't possible, allow the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MFA_REQUIRED</code>: Present an MFA challenge if possible. Block the
    #                       request if a user hasn't set up MFA. To sign in with required MFA, users must
    #                       have an email address or phone number attribute, or a registered TOTP
    #                       factor.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_ACTION</code>: Take no action. Permit sign-in.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AccountTakeoverActionType < Struct.new(
      :notify,
      :event_action,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:notify] = false unless options.key?(:notify)
        super
      end
    end

    # <p>A list of account-takeover actions for each level of risk that Amazon Cognito might assess with
    #             threat protection features.</p>
    # @!attribute low_action
    #   <p>The action that you assign to a low-risk assessment by threat protection.</p>
    #   @return [Types::AccountTakeoverActionType]
    # @!attribute medium_action
    #   <p>The action that you assign to a medium-risk assessment by threat protection.</p>
    #   @return [Types::AccountTakeoverActionType]
    # @!attribute high_action
    #   <p>The action that you assign to a high-risk assessment by threat protection.</p>
    #   @return [Types::AccountTakeoverActionType]
    class AccountTakeoverActionsType < Struct.new(
      :low_action,
      :medium_action,
      :high_action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The settings for automated responses and notification templates for adaptive
    #             authentication with threat protection features.</p>
    # @!attribute notify_configuration
    #   <p>The settings for composing and sending an email message when threat protection
    #               assesses a risk level with adaptive authentication. When you choose to notify users in
    #                   <code>AccountTakeoverRiskConfiguration</code>, Amazon Cognito sends an email message using
    #               the method and template that you set with this data type.</p>
    #   @return [Types::NotifyConfigurationType]
    # @!attribute actions
    #   <p>A list of account-takeover actions for each level of risk that Amazon Cognito might assess with
    #               threat protection.</p>
    #   @return [Types::AccountTakeoverActionsType]
    class AccountTakeoverRiskConfigurationType < Struct.new(
      :notify_configuration,
      :actions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to add custom attributes.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to add custom attributes.</p>
    #   @return [String]
    # @!attribute custom_attributes
    #   <p>An array of custom attribute names and other properties. Sets the following
    #               characteristics:</p>
    #            <dl>
    #               <dt>AttributeDataType</dt>
    #               <dd>
    #                  <p>The expected data type. Can be a string, a number, a date and time, or a
    #                           boolean.</p>
    #               </dd>
    #               <dt>Mutable</dt>
    #               <dd>
    #                  <p>If true, you can grant app clients write access to the attribute value. If
    #                           false, the attribute value can only be set up on sign-up or administrator
    #                           creation of users.</p>
    #               </dd>
    #               <dt>Name</dt>
    #               <dd>
    #                  <p>The attribute name. For an attribute like <code>custom:myAttribute</code>,
    #                           enter <code>myAttribute</code> for this field.</p>
    #               </dd>
    #               <dt>Required</dt>
    #               <dd>
    #                  <p>When true, users who sign up or are created must set a value for the
    #                           attribute.</p>
    #               </dd>
    #               <dt>NumberAttributeConstraints</dt>
    #               <dd>
    #                  <p>The minimum and maximum length of accepted values for a
    #                               <code>Number</code>-type attribute.</p>
    #               </dd>
    #               <dt>StringAttributeConstraints</dt>
    #               <dd>
    #                  <p>The minimum and maximum length of accepted values for a
    #                               <code>String</code>-type attribute.</p>
    #               </dd>
    #               <dt>DeveloperOnlyAttribute</dt>
    #               <dd>
    #                  <p>This legacy option creates an attribute with a <code>dev:</code> prefix.
    #                           You can only set the value of a developer-only attribute with administrative
    #                           IAM credentials.</p>
    #               </dd>
    #            </dl>
    #   @return [Array<Types::SchemaAttributeType>]
    class AddCustomAttributesRequest < Struct.new(
      :user_pool_id,
      :custom_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server for the request to add custom
    #             attributes.</p>
    class AddCustomAttributesResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the group that you want to add the user
    #               to.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group that you want to add your user to.</p>
    #   @return [String]
    class AdminAddUserToGroupRequest < Struct.new(
      :user_pool_id,
      :username,
      :group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Confirm a user's registration as a user pool administrator.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to confirm a user's sign-up
    #               request.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #            <p>If your user pool configuration includes triggers, the AdminConfirmSignUp API action
    #               invokes the Lambda function that is specified for the <i>post
    #                   confirmation</i> trigger. When Amazon Cognito invokes this function, it passes a JSON
    #               payload, which the function receives as input. In this payload, the
    #                   <code>clientMetadata</code> attribute provides the data that you assigned to the
    #               ClientMetadata parameter in your AdminConfirmSignUp request. In your function code in
    #               Lambda, you can process the ClientMetadata value to enhance your workflow for your
    #               specific needs.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    class AdminConfirmSignUpRequest < Struct.new(
      :user_pool_id,
      :username,
      :client_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server for the request to confirm
    #             registration.</p>
    class AdminConfirmSignUpResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The settings for administrator creation of users in a user pool. Contains settings for
    #             allowing user sign-up, customizing invitation messages to new users, and the amount of
    #             time before temporary passwords expire.</p>
    # @!attribute allow_admin_create_user_only
    #   <p>The setting for allowing self-service sign-up. When <code>true</code>, only
    #               administrators can create new user profiles. When <code>false</code>, users can register
    #               themselves and create a new user profile with the <code>SignUp</code> operation.</p>
    #   @return [Boolean]
    # @!attribute unused_account_validity_days
    #   <p>This parameter is no longer in use.</p>
    #            <p>The password expiration limit in days for administrator-created users. When this time
    #               expires, the user can't sign in with their temporary password. To reset the account
    #               after that time limit, you must call <code>AdminCreateUser</code> again, specifying
    #                   <code>RESEND</code> for the <code>MessageAction</code> parameter. </p>
    #            <p>The default value for this parameter is 7.</p>
    #   @return [Integer]
    # @!attribute invite_message_template
    #   <p>The template for the welcome message to new users. This template must include the
    #                   <code>{####}</code> temporary password placeholder if you are creating users with
    #               passwords. If your users don't have passwords, you can omit the placeholder.</p>
    #            <p>See also <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-message-customizations.html#cognito-user-pool-settings-user-invitation-message-customization">Customizing User Invitation Messages</a>.</p>
    #   @return [Types::MessageTemplateType]
    class AdminCreateUserConfigType < Struct.new(
      :allow_admin_create_user_only,
      :unused_account_validity_days,
      :invite_message_template,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:allow_admin_create_user_only] = false unless options.key?(:allow_admin_create_user_only)
        options[:unused_account_validity_days] = 0 unless options.key?(:unused_account_validity_days)
        super
      end
    end

    # <p>Creates a new user in the specified user pool.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to create a user.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The value that you want to set as the username sign-in attribute. The following
    #               conditions apply to the username parameter.</p>
    #            <ul>
    #               <li>
    #                  <p>The username can't be a duplicate of another username in the same user
    #                       pool.</p>
    #               </li>
    #               <li>
    #                  <p>You can't change the value of a username after you create it.</p>
    #               </li>
    #               <li>
    #                  <p>You can only provide a value if usernames are a valid sign-in attribute for
    #                       your user pool. If your user pool only supports phone numbers or email addresses
    #                       as sign-in attributes, Amazon Cognito automatically generates a username value. For more
    #                       information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases">Customizing sign-in attributes</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute user_attributes
    #   <p>An array of name-value pairs that contain user attributes and attribute values to be
    #               set for the user to be created. You can create a user without specifying any attributes
    #               other than <code>Username</code>. However, any attributes that you specify as required
    #               (when creating a user pool or in the <b>Attributes</b> tab of
    #               the console) either you should supply (in your call to <code>AdminCreateUser</code>) or
    #               the user should supply (when they sign up in response to your welcome message).</p>
    #            <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #            <p>To send a message inviting the user to sign up, you must specify the user's email
    #               address or phone number. You can do this in your call to AdminCreateUser or in the
    #                   <b>Users</b> tab of the Amazon Cognito console for managing your
    #               user pools.</p>
    #            <p>You must also provide an email address or phone number when you expect the user to do
    #               passwordless sign-in with an email or SMS OTP. These attributes must be provided when
    #               passwordless options are the only available, or when you don't submit a
    #                   <code>TemporaryPassword</code>.</p>
    #            <p>In your <code>AdminCreateUser</code> request, you can set the
    #                   <code>email_verified</code> and <code>phone_number_verified</code> attributes to
    #                   <code>true</code>. The following conditions apply:</p>
    #            <dl>
    #               <dt>email</dt>
    #               <dd>
    #                  <p>The email address where you want the user to receive their confirmation
    #                           code and username. You must provide a value for <code>email</code> when you
    #                           want to set <code>email_verified</code> to <code>true</code>, or if you set
    #                               <code>EMAIL</code> in the <code>DesiredDeliveryMediums</code>
    #                           parameter.</p>
    #               </dd>
    #               <dt>phone_number</dt>
    #               <dd>
    #                  <p>The phone number where you want the user to receive their confirmation
    #                           code and username. You must provide a value for <code>phone_number</code>
    #                           when you want to set <code>phone_number_verified</code> to
    #                           <code>true</code>, or if you set <code>SMS</code> in the
    #                               <code>DesiredDeliveryMediums</code> parameter.</p>
    #               </dd>
    #            </dl>
    #   @return [Array<Types::AttributeType>]
    # @!attribute validation_data
    #   <p>Temporary user attributes that contribute to the outcomes of your pre sign-up Lambda
    #       trigger. This set of key-value pairs are for custom validation of information that you 
    #       collect from your users but don't need to retain.</p>
    #            <p>Your Lambda function can analyze this additional data and act on it. Your function
    #       can automatically confirm and verify select users or perform external API operations 
    #       like logging user attributes and validation data to Amazon CloudWatch Logs.</p>
    #            <p>For more information about the pre sign-up Lambda trigger, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html">Pre sign-up Lambda trigger</a>.</p>
    #   @return [Array<Types::AttributeType>]
    # @!attribute temporary_password
    #   <p>The user's temporary password. This password must conform to the password policy that
    #               you specified when you created the user pool.</p>
    #            <p>The exception to the requirement for a password is when your user pool supports
    #               passwordless sign-in with email or SMS OTPs. To create a user with no password, omit
    #               this parameter or submit a blank value. You can only create a passwordless user when
    #               passwordless sign-in is available.</p>
    #            <p>The temporary password is valid only once. To complete the Admin Create User flow, the
    #               user must enter the temporary password in the sign-in page, along with a new password to
    #               be used in all future sign-ins.</p>
    #            <p>If you don't specify a value, Amazon Cognito generates one for you unless you have passwordless
    #               options active for your user pool.</p>
    #            <p>The temporary password can only be used until the user account expiration limit that
    #               you set for your user pool. To reset the account after that time limit, you must call
    #                   <code>AdminCreateUser</code> again and specify <code>RESEND</code> for the
    #                   <code>MessageAction</code> parameter.</p>
    #   @return [String]
    # @!attribute force_alias_creation
    #   <p>This parameter is used only if the <code>phone_number_verified</code> or
    #                   <code>email_verified</code> attribute is set to <code>True</code>. Otherwise, it is
    #               ignored.</p>
    #            <p>If this parameter is set to <code>True</code> and the phone number or email address
    #               specified in the <code>UserAttributes</code> parameter already exists as an alias with a
    #               different user, this request migrates the alias from the previous user to the
    #               newly-created user. The previous user will no longer be able to log in using that
    #               alias.</p>
    #            <p>If this parameter is set to <code>False</code>, the API throws an
    #                   <code>AliasExistsException</code> error if the alias already exists. The default
    #               value is <code>False</code>.</p>
    #   @return [Boolean]
    # @!attribute message_action
    #   <p>Set to <code>RESEND</code> to resend the invitation message to a user that already
    #               exists, and to reset the temporary-password duration with a new temporary password. Set
    #               to <code>SUPPRESS</code> to suppress sending the message. You can specify only one
    #               value.</p>
    #   @return [String]
    # @!attribute desired_delivery_mediums
    #   <p>Specify <code>EMAIL</code> if email will be used to send the welcome message. Specify
    #                   <code>SMS</code> if the phone number will be used. The default value is
    #                   <code>SMS</code>. You can specify more than one value.</p>
    #   @return [Array<String>]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #            <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the AdminCreateUser API action, Amazon Cognito invokes the function that is assigned
    #               to the <i>pre sign-up</i> trigger. When Amazon Cognito invokes this function, it
    #               passes a JSON payload, which the function receives as input. This payload contains a
    #                   <code>ClientMetadata</code> attribute, which provides the data that you assigned to
    #               the ClientMetadata parameter in your AdminCreateUser request. In your function code in
    #               Lambda, you can process the <code>clientMetadata</code> value to enhance your
    #               workflow for your specific needs.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    class AdminCreateUserRequest < Struct.new(
      :user_pool_id,
      :username,
      :user_attributes,
      :validation_data,
      :temporary_password,
      :force_alias_creation,
      :message_action,
      :desired_delivery_mediums,
      :client_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server to the request to create the user.</p>
    # @!attribute user
    #   <p>The new user's profile details.</p>
    #   @return [Types::UserType]
    class AdminCreateUserResponse < Struct.new(
      :user,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to delete user attributes as an administrator.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to delete user attributes.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute user_attribute_names
    #   <p>An array of strings representing the user attribute names you want to delete.</p>
    #            <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #   @return [Array<String>]
    class AdminDeleteUserAttributesRequest < Struct.new(
      :user_pool_id,
      :username,
      :user_attribute_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response received from the server for a request to delete user
    #             attributes.</p>
    class AdminDeleteUserAttributesResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to delete a user as an administrator.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to delete the user.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    class AdminDeleteUserRequest < Struct.new(
      :user_pool_id,
      :username,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to delete the user's linked
    #               identities.</p>
    #   @return [String]
    # @!attribute user
    #   <p>The user profile that you want to delete a linked identity from.</p>
    #   @return [Types::ProviderUserIdentifierType]
    class AdminDisableProviderForUserRequest < Struct.new(
      :user_pool_id,
      :user,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AdminDisableProviderForUserResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to disable the user as an administrator.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to disable the user.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    class AdminDisableUserRequest < Struct.new(
      :user_pool_id,
      :username,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response received from the server to disable the user as an
    #             administrator.</p>
    class AdminDisableUserResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request that enables the user as an administrator.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to activate sign-in for the user.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    class AdminEnableUserRequest < Struct.new(
      :user_pool_id,
      :username,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server for the request to enable a user as an
    #             administrator.</p>
    class AdminEnableUserResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Sends the forgot device request, as an administrator.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where the device owner is a user.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute device_key
    #   <p>The key ID of the device that you want to delete.</p>
    #   @return [String]
    class AdminForgetDeviceRequest < Struct.new(
      :user_pool_id,
      :username,
      :device_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to get the device, as an administrator.</p>
    # @!attribute device_key
    #   <p>The key of the device that you want to delete.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where the device owner is a user.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    class AdminGetDeviceRequest < Struct.new(
      :device_key,
      :user_pool_id,
      :username,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Gets the device response, as an administrator.</p>
    # @!attribute device
    #   <p>Details of the requested device. Includes device information, last-accessed and
    #               created dates, and the device key.</p>
    #   @return [Types::DeviceType]
    class AdminGetDeviceResponse < Struct.new(
      :device,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to get the specified user as an administrator.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to get information about the user.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    class AdminGetUserRequest < Struct.new(
      :user_pool_id,
      :username,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server from the request to get the specified user as
    #             an administrator.</p>
    # @!attribute username
    #   <p>The username of the user that you requested.</p>
    #   @return [String]
    # @!attribute user_attributes
    #   <p>An array of name-value pairs of user attributes and their values, for example
    #                   <code>"email": "testuser@example.com"</code>.</p>
    #   @return [Array<Types::AttributeType>]
    # @!attribute user_create_date
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute user_last_modified_date
    #   <p>The date and time when the item was modified. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute enabled
    #   <p>Indicates whether the user is activated for sign-in.</p>
    #   @return [Boolean]
    # @!attribute user_status
    #   <p>The user's status. Can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>UNCONFIRMED - User has been created but not confirmed.</p>
    #               </li>
    #               <li>
    #                  <p>CONFIRMED - User has been confirmed.</p>
    #               </li>
    #               <li>
    #                  <p>UNKNOWN - User status isn't known.</p>
    #               </li>
    #               <li>
    #                  <p>RESET_REQUIRED - User is confirmed, but the user must request a code and reset
    #                       their password before they can sign in.</p>
    #               </li>
    #               <li>
    #                  <p>FORCE_CHANGE_PASSWORD - The user is confirmed and the user can sign in using a
    #                       temporary password, but on first sign-in, the user must change their password to
    #                       a new value before doing anything else. </p>
    #               </li>
    #               <li>
    #                  <p>EXTERNAL_PROVIDER - The user signed in with a third-party identity
    #                       provider.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute mfa_options
    #   <p>
    #               <i>This response parameter is no longer supported.</i> It provides
    #               information only about SMS MFA configurations. It doesn't provide information about
    #               time-based one-time password (TOTP) software token MFA configurations. To look up
    #               information about either type of MFA configuration, use UserMFASettingList
    #               instead.</p>
    #   @return [Array<Types::MFAOptionType>]
    # @!attribute preferred_mfa_setting
    #   <p>The user's preferred MFA. Users can prefer SMS message, email message, or TOTP
    #               MFA.</p>
    #   @return [String]
    # @!attribute user_mfa_setting_list
    #   <p>The MFA options that are activated for the user. The possible values in this list are
    #                   <code>SMS_MFA</code>, <code>EMAIL_OTP</code>, and
    #               <code>SOFTWARE_TOKEN_MFA</code>.</p>
    #   @return [Array<String>]
    class AdminGetUserResponse < Struct.new(
      :username,
      :user_attributes,
      :user_create_date,
      :user_last_modified_date,
      :enabled,
      :user_status,
      :mfa_options,
      :preferred_mfa_setting,
      :user_mfa_setting_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Initiates the authorization request, as an administrator.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where the user wants to sign in.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The ID of the app client where the user wants to sign in.</p>
    #   @return [String]
    # @!attribute auth_flow
    #   <p>The authentication flow that you want to initiate. Each <code>AuthFlow</code> has
    #               linked <code>AuthParameters</code> that you must submit. The following are some example
    #               flows.</p>
    #            <dl>
    #               <dt>USER_AUTH</dt>
    #               <dd>
    #                  <p>The entry point for <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice">choice-based authentication</a> with passwords,
    #                           one-time passwords, and WebAuthn authenticators. Request a preferred
    #                           authentication type or review available authentication types. From the
    #                           offered authentication types, select one in a challenge response and then
    #                           authenticate with that method in an additional challenge response.
    #                           To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    #               </dd>
    #               <dt>USER_SRP_AUTH</dt>
    #               <dd>
    #                  <p>Username-password authentication with the Secure Remote Password (SRP)
    #                           protocol. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow.html#Using-SRP-password-verification-in-custom-authentication-flow">Use SRP password verification in custom
    #                               authentication flow</a>.</p>
    #               </dd>
    #               <dt>REFRESH_TOKEN_AUTH and REFRESH_TOKEN</dt>
    #               <dd>
    #                  <p>Receive new ID and access tokens when you pass a
    #                               <code>REFRESH_TOKEN</code> parameter with a valid refresh token as the
    #                           value. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-refresh-token.html">Using the refresh token</a>.</p>
    #               </dd>
    #               <dt>CUSTOM_AUTH</dt>
    #               <dd>
    #                  <p>Custom authentication with Lambda triggers. For more information, see
    #                               <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html">Custom authentication challenge Lambda
    #                               triggers</a>.</p>
    #               </dd>
    #               <dt>ADMIN_USER_PASSWORD_AUTH</dt>
    #               <dd>
    #                  <p>Server-side username-password authentication with the password sent
    #                           directly in the request. For more information about client-side and
    #                           server-side authentication, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-public-server-side.html">SDK authorization models</a>.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute auth_parameters
    #   <p>The authentication parameters. These are inputs corresponding to the
    #                   <code>AuthFlow</code> that you're invoking.</p>
    #            <p>The following are some authentication flows and their parameters. Add a
    #                   <code>SECRET_HASH</code> parameter if your app client has a client secret. Add
    #                   <code>DEVICE_KEY</code> if you want to bypass multi-factor authentication with a
    #               remembered device. </p>
    #            <dl>
    #               <dt>USER_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>PREFERRED_CHALLENGE</code>. If you don't provide a
    #                                   value for <code>PREFERRED_CHALLENGE</code>, Amazon Cognito responds with the
    #                                       <code>AvailableChallenges</code> parameter that specifies the
    #                                   available sign-in methods.</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>USER_SRP_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>SRP_A</code> (required)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>ADMIN_USER_PASSWORD_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>PASSWORD</code> (required)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>REFRESH_TOKEN</code>(required)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>CUSTOM_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ChallengeName: SRP_A</code> (when preceding custom
    #                                   authentication with SRP authentication)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>SRP_A: (An SRP_A value)</code> (when preceding custom
    #                                   authentication with SRP authentication)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #            </dl>
    #            <p>For more information about <code>SECRET_HASH</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>. For information about
    #               <code>DEVICE_KEY</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for certain custom
    #               workflows that this action triggers.</p>
    #            <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the AdminInitiateAuth API action, Amazon Cognito invokes the Lambda functions that
    #               are specified for various triggers. The ClientMetadata value is passed as input to the
    #               functions for only the following triggers:</p>
    #            <ul>
    #               <li>
    #                  <p>Pre signup</p>
    #               </li>
    #               <li>
    #                  <p>Pre authentication</p>
    #               </li>
    #               <li>
    #                  <p>User migration</p>
    #               </li>
    #            </ul>
    #            <p>When Amazon Cognito invokes the functions for these triggers, it passes a JSON payload, which
    #               the function receives as input. This payload contains a <code>validationData</code>
    #               attribute, which provides the data that you assigned to the ClientMetadata parameter in
    #               your AdminInitiateAuth request. In your function code in Lambda, you can process the
    #                   <code>validationData</code> value to enhance your workflow for your specific
    #               needs.</p>
    #            <p>When you use the AdminInitiateAuth API action, Amazon Cognito also invokes the functions for
    #               the following triggers, but it doesn't provide the ClientMetadata value as input:</p>
    #            <ul>
    #               <li>
    #                  <p>Post authentication</p>
    #               </li>
    #               <li>
    #                  <p>Custom message</p>
    #               </li>
    #               <li>
    #                  <p>Pre token generation</p>
    #               </li>
    #               <li>
    #                  <p>Create auth challenge</p>
    #               </li>
    #               <li>
    #                  <p>Define auth challenge</p>
    #               </li>
    #               <li>
    #                  <p>Custom email sender</p>
    #               </li>
    #               <li>
    #                  <p>Custom SMS sender</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    # @!attribute analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the 
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier, 
    #   email address, or phone number.</p>
    #   @return [Types::AnalyticsMetadataType]
    # @!attribute context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat 
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    #   @return [Types::ContextDataType]
    # @!attribute session
    #   <p>The optional session ID from a <code>ConfirmSignUp</code> API request. You can sign in
    #               a user directly from the sign-up process with an <code>AuthFlow</code> of
    #                   <code>USER_AUTH</code> and <code>AuthParameters</code> of <code>EMAIL_OTP</code> or
    #                   <code>SMS_OTP</code>, depending on how your user pool sent the confirmation-code
    #               message.</p>
    #   @return [String]
    class AdminInitiateAuthRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :auth_flow,
      :auth_parameters,
      :client_metadata,
      :analytics_metadata,
      :context_data,
      :session,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Initiates the authentication response, as an administrator.</p>
    # @!attribute challenge_name
    #   <p>The name of the challenge that you're responding to with this call. This is returned
    #               in the <code>AdminInitiateAuth</code> response if you must pass another
    #               challenge.</p>
    #            <p>Possible challenges include the following:</p>
    #            <note>
    #               <p>All of the following challenges require <code>USERNAME</code> and, when the app
    #                   client has a client secret, <code>SECRET_HASH</code> in the parameters. Include a 
    #                   <code>DEVICE_KEY</code> for device authentication.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WEB_AUTHN</code>: Respond to the challenge with the results of a
    #                       successful authentication with a WebAuthn authenticator, or passkey, as 
    #                       <code>CREDENTIAL</code>. Examples of WebAuthn authenticators include 
    #                       biometric devices and security keys.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD</code>: Respond with the user's password as <code>PASSWORD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_SRP</code>: Respond with the initial SRP secret as <code>SRP_A</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SELECT_CHALLENGE</code>: Respond with a challenge selection as <code>ANSWER</code>. 
    #                   It must be one of the challenge types in the <code>AvailableChallenges</code> response 
    #                   parameter. Add the parameters of the selected challenge, for example <code>USERNAME</code>
    #                   and <code>SMS_OTP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_MFA</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_MFA</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_OTP</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_OTP_CODE</code> .</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_OTP</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_OTP_CODE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_VERIFIER</code>: Respond with the second stage of SRP secrets as
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, 
    #                           and <code>TIMESTAMP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication
    #                       flow determines that the user should pass another challenge before tokens are
    #                       issued. The parameters of the challenge are determined by your Lambda function
    #                       and issued in the <code>ChallengeParameters</code> of a challenge response.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_SRP_AUTH</code>: Respond with the initial parameters of device SRP 
    #                   authentication. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_PASSWORD_VERIFIER</code>: Respond with
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>,
    #                           <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after
    #                       client-side SRP calculations. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_PASSWORD_REQUIRED</code>: For users who are required to change their
    #                       passwords after successful first login. Respond to this challenge with 
    #                       <code>NEW_PASSWORD</code> and any required attributes that Amazon Cognito returned in 
    #                       the <code>requiredAttributes</code> parameter. You can also set values for 
    #                       attributes that aren't required by your user pool and that your app client 
    #                       can write.</p>
    #                  <p>Amazon Cognito only returns this challenge for users who have temporary passwords.
    #                       When you create passwordless users, you must provide values for all required 
    #                       attributes.</p>
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value. 
    #   In <code>AdminRespondToAuthChallenge</code> or <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the 
    #   <code>requiredAttributes</code> parameter, then use the <code>AdminUpdateUserAttributes</code> or <code>UpdateUserAttributes</code> API 
    #   operation to modify the value of any additional attributes.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MFA_SETUP</code>: For users who are required to setup an MFA factor
    #                       before they can sign in. The MFA types activated for the user pool will be
    #                       listed in the challenge parameters <code>MFAS_CAN_SETUP</code> value. </p>
    #                  <p>To set up time-based one-time password (TOTP) MFA, use the session returned 
    #                       in this challenge from <code>InitiateAuth</code> or <code>AdminInitiateAuth</code> 
    #                       as an input to <code>AssociateSoftwareToken</code>. Then, use the session returned
    #                       by <code>VerifySoftwareToken</code> as an input to 
    #                       <code>RespondToAuthChallenge</code> or <code>AdminRespondToAuthChallenge</code>
    #                   with challenge name <code>MFA_SETUP</code> to complete sign-in.
    #                   </p>
    #                  <p>To set up SMS or email MFA, collect a <code>phone_number</code> or 
    #                       <code>email</code> attribute for the user. Then restart the authentication 
    #                       flow with an <code>InitiateAuth</code> or <code>AdminInitiateAuth</code> request.
    #                   </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute session
    #   <p>The session that must be passed to challenge-response requests. If an
    #                   <code>AdminInitiateAuth</code> or <code>AdminRespondToAuthChallenge</code> API
    #               request results in another authentication challenge, Amazon Cognito returns a session ID and the
    #               parameters of the next challenge. Pass this session ID in the <code>Session</code>
    #               parameter of <code>AdminRespondToAuthChallenge</code>.</p>
    #   @return [String]
    # @!attribute challenge_parameters
    #   <p>The parameters of an authentication challenge. Amazon Cognito returns challenge parameters as a
    #               guide to the responses your user or application must provide for the returned
    #                   <code>ChallengeName</code>. Calculate responses to the challenge parameters and pass
    #               them in the <code>ChallengeParameters</code> of
    #               <code>AdminRespondToAuthChallenge</code>.</p>
    #            <p>All challenges require <code>USERNAME</code> and, when the app client has a client
    #               secret, <code>SECRET_HASH</code>.</p>
    #            <p>In SRP challenges, Amazon Cognito returns the <code>username</code> attribute in
    #                   <code>USER_ID_FOR_SRP</code> instead of any email address, preferred username, or
    #               phone number alias that you might have specified in your <code>AdminInitiateAuth</code>
    #               request. You must use the username and not an alias in the
    #                   <code>ChallengeResponses</code> of your challenge response.</p>
    #   @return [Hash<String, String>]
    # @!attribute authentication_result
    #   <p>The outcome of successful authentication. This is only returned if the user pool has
    #               no additional challenges to return. If Amazon Cognito returns another challenge, the response
    #               includes <code>ChallengeName</code>, <code>ChallengeParameters</code>, and
    #                   <code>Session</code> so that your user can answer the challenge.</p>
    #   @return [Types::AuthenticationResultType]
    # @!attribute available_challenges
    #   <p>This response parameter lists the available authentication challenges that users can
    #               select from in <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice">choice-based authentication</a>. For example, they might be
    #               able to choose between passkey authentication, a one-time password from an SMS message,
    #               and a traditional password.</p>
    #   @return [Array<String>]
    class AdminInitiateAuthResponse < Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result,
      :available_challenges,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to link a federated identity.</p>
    #   @return [String]
    # @!attribute destination_user
    #   <p>The existing user in the user pool that you want to assign to the external IdP user
    #               account. This user can be a local (Username + Password) Amazon Cognito user pools user or a
    #               federated user (for example, a SAML or Facebook user). If the user doesn't exist, Amazon Cognito
    #               generates an exception. Amazon Cognito returns this user when the new user (with the linked IdP
    #               attribute) signs in.</p>
    #            <p>For a native username + password user, the <code>ProviderAttributeValue</code> for the
    #                   <code>DestinationUser</code> should be the username in the user pool. For a
    #               federated user, it should be the provider-specific <code>user_id</code>.</p>
    #            <p>The <code>ProviderAttributeName</code> of the <code>DestinationUser</code> is
    #               ignored.</p>
    #            <p>The <code>ProviderName</code> should be set to <code>Cognito</code> for users in
    #               Cognito user pools.</p>
    #            <important>
    #               <p>All attributes in the DestinationUser profile must be mutable. If you have
    #                   assigned the user any immutable custom attributes, the operation won't
    #                   succeed.</p>
    #            </important>
    #   @return [Types::ProviderUserIdentifierType]
    # @!attribute source_user
    #   <p>An external IdP account for a user who doesn't exist yet in the user pool. This user
    #               must be a federated user (for example, a SAML or Facebook user), not another native
    #               user.</p>
    #            <p>If the <code>SourceUser</code> is using a federated social IdP, such as Facebook,
    #               Google, or Login with Amazon, you must set the <code>ProviderAttributeName</code> to
    #                   <code>Cognito_Subject</code>. For social IdPs, the <code>ProviderName</code> will be
    #                   <code>Facebook</code>, <code>Google</code>, or <code>LoginWithAmazon</code>, and
    #               Amazon Cognito will automatically parse the Facebook, Google, and Login with Amazon tokens for
    #                   <code>id</code>, <code>sub</code>, and <code>user_id</code>, respectively. The
    #                   <code>ProviderAttributeValue</code> for the user must be the same value as the
    #                   <code>id</code>, <code>sub</code>, or <code>user_id</code> value found in the social
    #               IdP token.</p>
    #            <p>For OIDC, the <code>ProviderAttributeName</code> can be any mapped value from a claim
    #               in the ID token, or that your app retrieves from the <code>userInfo</code> endpoint. For
    #               SAML, the <code>ProviderAttributeName</code> can be any mapped value from a claim in the
    #               SAML assertion.</p>
    #            <p>The following additional considerations apply to <code>SourceUser</code> for OIDC and
    #               SAML providers.</p>
    #            <ul>
    #               <li>
    #                  <p>You must map the claim to a user pool attribute in your IdP configuration, and
    #                       set the user pool attribute name as the value of
    #                           <code>ProviderAttributeName</code> in your
    #                           <code>AdminLinkProviderForUser</code> request. For example,
    #                           <code>email</code>.</p>
    #               </li>
    #               <li>
    #                  <p>When you set <code>ProviderAttributeName</code> to
    #                           <code>Cognito_Subject</code>, Amazon Cognito will automatically parse the default
    #                       unique identifier found in the subject from the IdP token.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ProviderUserIdentifierType]
    class AdminLinkProviderForUserRequest < Struct.new(
      :user_pool_id,
      :destination_user,
      :source_user,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AdminLinkProviderForUserResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to list devices, as an administrator.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where the device owner is a user.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of devices that you want Amazon Cognito to return in the response.</p>
    #   @return [Integer]
    # @!attribute pagination_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list. 
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate 
    #   through the full list of items.</p>
    #   @return [String]
    class AdminListDevicesRequest < Struct.new(
      :user_pool_id,
      :username,
      :limit,
      :pagination_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Lists the device's response, as an administrator.</p>
    # @!attribute devices
    #   <p>An array of devices and their information. Each entry that's returned includes
    #               device information, last-accessed and created dates, and the device key.</p>
    #   @return [Array<Types::DeviceType>]
    # @!attribute pagination_token
    #   <p>The identifier that Amazon Cognito returned with the previous request to this operation. When 
    #   you include a pagination token in your request, Amazon Cognito returns the next set of items in 
    #   the list. By use of this token, you can paginate through the full list of items.</p>
    #   @return [String]
    class AdminListDevicesResponse < Struct.new(
      :devices,
      :pagination_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to view a user's groups.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of groups that you want Amazon Cognito to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list. 
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate 
    #   through the full list of items.</p>
    #   @return [String]
    class AdminListGroupsForUserRequest < Struct.new(
      :username,
      :user_pool_id,
      :limit,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute groups
    #   <p>An array of groups and information about them.</p>
    #   @return [Array<Types::GroupType>]
    # @!attribute next_token
    #   <p>The identifier that Amazon Cognito returned with the previous request to this operation. When 
    #   you include a pagination token in your request, Amazon Cognito returns the next set of items in 
    #   the list. By use of this token, you can paginate through the full list of items.</p>
    #   @return [String]
    class AdminListGroupsForUserResponse < Struct.new(
      :groups,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The Id of the user pool that contains the user profile with the logged events.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of authentication events to return. Returns 60 events if you set
    #                   <code>MaxResults</code> to 0, or if you don't include a <code>MaxResults</code>
    #               parameter.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list. 
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate 
    #   through the full list of items.</p>
    #   @return [String]
    class AdminListUserAuthEventsRequest < Struct.new(
      :user_pool_id,
      :username,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auth_events
    #   <p>The response object. It includes the <code>EventID</code>, <code>EventType</code>,
    #                   <code>CreationDate</code>, <code>EventRisk</code>, and
    #               <code>EventResponse</code>.</p>
    #   @return [Array<Types::AuthEventType>]
    # @!attribute next_token
    #   <p>The identifier that Amazon Cognito returned with the previous request to this operation. When 
    #   you include a pagination token in your request, Amazon Cognito returns the next set of items in 
    #   the list. By use of this token, you can paginate through the full list of items.</p>
    #   @return [String]
    class AdminListUserAuthEventsResponse < Struct.new(
      :auth_events,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the group and the user that you want to
    #               remove.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group that you want to remove the user from, for example
    #                   <code>MyTestGroup</code>.</p>
    #   @return [String]
    class AdminRemoveUserFromGroupRequest < Struct.new(
      :user_pool_id,
      :username,
      :group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to reset a user's password as an administrator.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to reset the user's password.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #            <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. The <code>AdminResetUserPassword</code> API operation invokes the function
    #               that is assigned to the <i>custom message</i> trigger. When Amazon Cognito invokes
    #               this function, it passes a JSON payload, which the function receives as input. This
    #               payload contains a <code>clientMetadata</code> attribute, which provides the data that
    #               you assigned to the ClientMetadata parameter in your AdminResetUserPassword request. In
    #               your function code in Lambda, you can process the
    #                   <code>clientMetadata</code> value to enhance your workflow for your specific needs. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    class AdminResetUserPasswordRequest < Struct.new(
      :user_pool_id,
      :username,
      :client_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server to reset a user password as an
    #             administrator.</p>
    class AdminResetUserPasswordResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to respond to the authentication challenge, as an administrator.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to respond to an authentication
    #               challenge.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The ID of the app client where you initiated sign-in.</p>
    #   @return [String]
    # @!attribute challenge_name
    #   <p>The name of the challenge that you are responding to.</p>
    #            <p>Possible challenges include the following:</p>
    #            <note>
    #               <p>All of the following challenges require <code>USERNAME</code> and, when the app
    #                   client has a client secret, <code>SECRET_HASH</code> in the parameters. Include a 
    #                   <code>DEVICE_KEY</code> for device authentication.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WEB_AUTHN</code>: Respond to the challenge with the results of a
    #                       successful authentication with a WebAuthn authenticator, or passkey, as 
    #                       <code>CREDENTIAL</code>. Examples of WebAuthn authenticators include 
    #                       biometric devices and security keys.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD</code>: Respond with the user's password as <code>PASSWORD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_SRP</code>: Respond with the initial SRP secret as <code>SRP_A</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SELECT_CHALLENGE</code>: Respond with a challenge selection as <code>ANSWER</code>. 
    #                   It must be one of the challenge types in the <code>AvailableChallenges</code> response 
    #                   parameter. Add the parameters of the selected challenge, for example <code>USERNAME</code>
    #                   and <code>SMS_OTP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_MFA</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_MFA</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_OTP</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_OTP_CODE</code> .</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_OTP</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_OTP_CODE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_VERIFIER</code>: Respond with the second stage of SRP secrets as
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, 
    #                           and <code>TIMESTAMP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication
    #                       flow determines that the user should pass another challenge before tokens are
    #                       issued. The parameters of the challenge are determined by your Lambda function
    #                       and issued in the <code>ChallengeParameters</code> of a challenge response.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_SRP_AUTH</code>: Respond with the initial parameters of device SRP 
    #                   authentication. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_PASSWORD_VERIFIER</code>: Respond with
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>,
    #                           <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after
    #                       client-side SRP calculations. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_PASSWORD_REQUIRED</code>: For users who are required to change their
    #                       passwords after successful first login. Respond to this challenge with 
    #                       <code>NEW_PASSWORD</code> and any required attributes that Amazon Cognito returned in 
    #                       the <code>requiredAttributes</code> parameter. You can also set values for 
    #                       attributes that aren't required by your user pool and that your app client 
    #                       can write.</p>
    #                  <p>Amazon Cognito only returns this challenge for users who have temporary passwords.
    #                       When you create passwordless users, you must provide values for all required 
    #                       attributes.</p>
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value. 
    #   In <code>AdminRespondToAuthChallenge</code> or <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the 
    #   <code>requiredAttributes</code> parameter, then use the <code>AdminUpdateUserAttributes</code> or <code>UpdateUserAttributes</code> API 
    #   operation to modify the value of any additional attributes.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MFA_SETUP</code>: For users who are required to setup an MFA factor
    #                       before they can sign in. The MFA types activated for the user pool will be
    #                       listed in the challenge parameters <code>MFAS_CAN_SETUP</code> value. </p>
    #                  <p>To set up time-based one-time password (TOTP) MFA, use the session returned 
    #                       in this challenge from <code>InitiateAuth</code> or <code>AdminInitiateAuth</code> 
    #                       as an input to <code>AssociateSoftwareToken</code>. Then, use the session returned
    #                       by <code>VerifySoftwareToken</code> as an input to 
    #                       <code>RespondToAuthChallenge</code> or <code>AdminRespondToAuthChallenge</code>
    #                   with challenge name <code>MFA_SETUP</code> to complete sign-in.
    #                   </p>
    #                  <p>To set up SMS or email MFA, collect a <code>phone_number</code> or 
    #                       <code>email</code> attribute for the user. Then restart the authentication 
    #                       flow with an <code>InitiateAuth</code> or <code>AdminInitiateAuth</code> request.
    #                   </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute challenge_responses
    #   <p>The responses to the challenge that you received in the previous request. Each
    #       challenge has its own required response parameters. The following examples are partial
    #       JSON request bodies that highlight challenge-response parameters.</p>
    #            <important>
    #               <p>You must provide a SECRET_HASH parameter in all challenge responses to an app
    #           client that has a client secret. Include a <code>DEVICE_KEY</code> for device
    #           authentication.</p>
    #            </important>
    #            <dl>
    #               <dt>SELECT_CHALLENGE</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #               "USERNAME": "[username]",
    #               "ANSWER": "[Challenge name]"}</code>
    #                  </p>
    #                  <p>Available challenges are <code>PASSWORD</code>, <code>PASSWORD_SRP</code>, 
    #               <code>EMAIL_OTP</code>, <code>SMS_OTP</code>, and <code>WEB_AUTHN</code>.</p>
    #                  <p>Complete authentication in the <code>SELECT_CHALLENGE</code> response for
    #               <code>PASSWORD</code>, <code>PASSWORD_SRP</code>, and <code>WEB_AUTHN</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "WEB_AUTHN",
    #                     "USERNAME": "[username]",
    #                     "CREDENTIAL": "[AuthenticationResponseJSON]"}</code>
    #                        </p>
    #                        <p>See <a href="https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson">
    #                     AuthenticationResponseJSON</a>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "PASSWORD",
    #                     "USERNAME": "[username]",
    #                     "PASSWORD": "[password]"}</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "PASSWORD_SRP",
    #                     "USERNAME": "[username]",
    #                     "SRP_A": "[SRP_A]"}</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For <code>SMS_OTP</code> and <code>EMAIL_OTP</code>, respond with the
    #               username and answer. Your user pool will send a code for the user to submit in
    #               the next challenge response.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "SMS_OTP",
    #                     "USERNAME": "[username]"}</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "EMAIL_OTP",
    #                     "USERNAME": "[username]"}</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>WEB_AUTHN</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "WEB_AUTHN", "ChallengeResponses": {
    #                     "USERNAME": "[username]",
    #                     "CREDENTIAL": "[AuthenticationResponseJSON]"}</code>
    #                  </p>
    #                  <p>See <a href="https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson">
    #                     AuthenticationResponseJSON</a>.</p>
    #               </dd>
    #               <dt>PASSWORD</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "PASSWORD", "ChallengeResponses": {
    #                     "USERNAME": "[username]",
    #                     "PASSWORD": "[password]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>PASSWORD_SRP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "PASSWORD_SRP", "ChallengeResponses": {
    #                     "USERNAME": "[username]",
    #                     "SRP_A": "[SRP_A]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>SMS_OTP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SMS_OTP", "ChallengeResponses": 
    #               {"SMS_OTP_CODE": "[code]", "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>EMAIL_OTP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "EMAIL_OTP", "ChallengeResponses": {"EMAIL_OTP_CODE":
    #                       "[code]", "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>SMS_MFA</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SMS_MFA", "ChallengeResponses": {"SMS_MFA_CODE":
    #                       "[code]", "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>PASSWORD_VERIFIER</dt>
    #               <dd>
    #                  <p>This challenge response is part of the SRP flow. Amazon Cognito requires 
    #               that your application respond to this challenge within a few seconds. When
    #               the response time exceeds this period, your user pool returns a
    #               <code>NotAuthorizedException</code> error.</p>
    #                  <p>
    #                     <code>"ChallengeName": "PASSWORD_VERIFIER", "ChallengeResponses":
    #                       {"PASSWORD_CLAIM_SIGNATURE": "[claim_signature]",
    #                       "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP":
    #                       [timestamp], "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>CUSTOM_CHALLENGE</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "CUSTOM_CHALLENGE", "ChallengeResponses":
    #                       {"USERNAME": "[username]", "ANSWER": "[challenge_answer]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>NEW_PASSWORD_REQUIRED</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "NEW_PASSWORD_REQUIRED", "ChallengeResponses":
    #                       {"NEW_PASSWORD": "[new_password]", "USERNAME":
    #                   "[username]"}</code>
    #                  </p>
    #                  <p>To set any required attributes that <code>InitiateAuth</code> returned in
    #                   an <code>requiredAttributes</code> parameter, add
    #                       <code>"userAttributes.[attribute_name]": "[attribute_value]"</code>.
    #                   This parameter can also set values for writable attributes that aren't
    #                   required by your user pool.</p>
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value. 
    #   In <code>AdminRespondToAuthChallenge</code> or <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the 
    #   <code>requiredAttributes</code> parameter, then use the <code>AdminUpdateUserAttributes</code> or <code>UpdateUserAttributes</code> API 
    #   operation to modify the value of any additional attributes.</p>
    #                  </note>
    #               </dd>
    #               <dt>SOFTWARE_TOKEN_MFA</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SOFTWARE_TOKEN_MFA", "ChallengeResponses":
    #                       {"USERNAME": "[username]", "SOFTWARE_TOKEN_MFA_CODE":
    #                       [authenticator_code]}</code>
    #                  </p>
    #               </dd>
    #               <dt>DEVICE_SRP_AUTH</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "DEVICE_SRP_AUTH", "ChallengeResponses": {"USERNAME":
    #                   "[username]", "DEVICE_KEY": "[device_key]", "SRP_A":
    #                   "[srp_a]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>DEVICE_PASSWORD_VERIFIER</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "DEVICE_PASSWORD_VERIFIER", "ChallengeResponses":
    #                   {"DEVICE_KEY": "[device_key]", "PASSWORD_CLAIM_SIGNATURE":
    #                   "[claim_signature]", "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]",
    #                   "TIMESTAMP": [timestamp], "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>MFA_SETUP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "MFA_SETUP", "ChallengeResponses": {"USERNAME":
    #                   "[username]"}, "SESSION": "[Session ID from
    #                   VerifySoftwareToken]"</code>
    #                  </p>
    #               </dd>
    #               <dt>SELECT_MFA_TYPE</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SELECT_MFA_TYPE", "ChallengeResponses": {"USERNAME":
    #                   "[username]", "ANSWER": "[SMS_MFA|EMAIL_MFA|SOFTWARE_TOKEN_MFA]"}</code>
    #                  </p>
    #               </dd>
    #            </dl>
    #            <p>For more information about <code>SECRET_HASH</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>. For information about
    #       <code>DEVICE_KEY</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute session
    #   <p>The session identifier that maintains the state of authentication requests and
    #               challenge responses. If an <code>AdminInitiateAuth</code> or
    #                   <code>AdminRespondToAuthChallenge</code> API request results in a determination that
    #               your application must pass another challenge, Amazon Cognito returns a session with other
    #               challenge parameters. Send this session identifier, unmodified, to the next
    #                   <code>AdminRespondToAuthChallenge</code> request.</p>
    #   @return [String]
    # @!attribute analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the 
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier, 
    #   email address, or phone number.</p>
    #   @return [Types::AnalyticsMetadataType]
    # @!attribute context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat 
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    #   @return [Types::ContextDataType]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #            <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the AdminRespondToAuthChallenge API action, Amazon Cognito invokes any functions
    #               that you have assigned to the following triggers: </p>
    #            <ul>
    #               <li>
    #                  <p>Pre sign-up</p>
    #               </li>
    #               <li>
    #                  <p>custom message</p>
    #               </li>
    #               <li>
    #                  <p>Post authentication</p>
    #               </li>
    #               <li>
    #                  <p>User migration</p>
    #               </li>
    #               <li>
    #                  <p>Pre token generation</p>
    #               </li>
    #               <li>
    #                  <p>Define auth challenge</p>
    #               </li>
    #               <li>
    #                  <p>Create auth challenge</p>
    #               </li>
    #               <li>
    #                  <p>Verify auth challenge response</p>
    #               </li>
    #            </ul>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your AdminRespondToAuthChallenge request. In your function code in Lambda, you can
    #               process the <code>clientMetadata</code> value to enhance your workflow for your specific
    #               needs.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    class AdminRespondToAuthChallengeRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :challenge_name,
      :challenge_responses,
      :session,
      :analytics_metadata,
      :context_data,
      :client_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Responds to the authentication challenge, as an administrator.</p>
    # @!attribute challenge_name
    #   <p>The name of the next challenge that you must respond to.</p>
    #            <p>Possible challenges include the following:</p>
    #            <note>
    #               <p>All of the following challenges require <code>USERNAME</code> and, when the app
    #                   client has a client secret, <code>SECRET_HASH</code> in the parameters. Include a 
    #                   <code>DEVICE_KEY</code> for device authentication.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WEB_AUTHN</code>: Respond to the challenge with the results of a
    #                       successful authentication with a WebAuthn authenticator, or passkey, as 
    #                       <code>CREDENTIAL</code>. Examples of WebAuthn authenticators include 
    #                       biometric devices and security keys.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD</code>: Respond with the user's password as <code>PASSWORD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_SRP</code>: Respond with the initial SRP secret as <code>SRP_A</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SELECT_CHALLENGE</code>: Respond with a challenge selection as <code>ANSWER</code>. 
    #                   It must be one of the challenge types in the <code>AvailableChallenges</code> response 
    #                   parameter. Add the parameters of the selected challenge, for example <code>USERNAME</code>
    #                   and <code>SMS_OTP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_MFA</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_MFA</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_OTP</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_OTP_CODE</code> .</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_OTP</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_OTP_CODE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_VERIFIER</code>: Respond with the second stage of SRP secrets as
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, 
    #                           and <code>TIMESTAMP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication
    #                       flow determines that the user should pass another challenge before tokens are
    #                       issued. The parameters of the challenge are determined by your Lambda function
    #                       and issued in the <code>ChallengeParameters</code> of a challenge response.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_SRP_AUTH</code>: Respond with the initial parameters of device SRP 
    #                   authentication. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_PASSWORD_VERIFIER</code>: Respond with
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>,
    #                           <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after
    #                       client-side SRP calculations. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_PASSWORD_REQUIRED</code>: For users who are required to change their
    #                       passwords after successful first login. Respond to this challenge with 
    #                       <code>NEW_PASSWORD</code> and any required attributes that Amazon Cognito returned in 
    #                       the <code>requiredAttributes</code> parameter. You can also set values for 
    #                       attributes that aren't required by your user pool and that your app client 
    #                       can write.</p>
    #                  <p>Amazon Cognito only returns this challenge for users who have temporary passwords.
    #                       When you create passwordless users, you must provide values for all required 
    #                       attributes.</p>
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value. 
    #   In <code>AdminRespondToAuthChallenge</code> or <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the 
    #   <code>requiredAttributes</code> parameter, then use the <code>AdminUpdateUserAttributes</code> or <code>UpdateUserAttributes</code> API 
    #   operation to modify the value of any additional attributes.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MFA_SETUP</code>: For users who are required to setup an MFA factor
    #                       before they can sign in. The MFA types activated for the user pool will be
    #                       listed in the challenge parameters <code>MFAS_CAN_SETUP</code> value. </p>
    #                  <p>To set up time-based one-time password (TOTP) MFA, use the session returned 
    #                       in this challenge from <code>InitiateAuth</code> or <code>AdminInitiateAuth</code> 
    #                       as an input to <code>AssociateSoftwareToken</code>. Then, use the session returned
    #                       by <code>VerifySoftwareToken</code> as an input to 
    #                       <code>RespondToAuthChallenge</code> or <code>AdminRespondToAuthChallenge</code>
    #                   with challenge name <code>MFA_SETUP</code> to complete sign-in.
    #                   </p>
    #                  <p>To set up SMS or email MFA, collect a <code>phone_number</code> or 
    #                       <code>email</code> attribute for the user. Then restart the authentication 
    #                       flow with an <code>InitiateAuth</code> or <code>AdminInitiateAuth</code> request.
    #                   </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute session
    #   <p>The session identifier that maintains the state of authentication requests and
    #               challenge responses. If an <code>AdminInitiateAuth</code> or
    #                   <code>AdminRespondToAuthChallenge</code> API request results in a determination that
    #               your application must pass another challenge, Amazon Cognito returns a session with other
    #               challenge parameters. Send this session identifier, unmodified, to the next
    #                   <code>AdminRespondToAuthChallenge</code> request.</p>
    #   @return [String]
    # @!attribute challenge_parameters
    #   <p>The parameters that define your response to the next challenge.</p>
    #   @return [Hash<String, String>]
    # @!attribute authentication_result
    #   <p>The outcome of a successful authentication process. After your application has passed
    #               all challenges, Amazon Cognito returns an <code>AuthenticationResult</code> with the JSON web
    #               tokens (JWTs) that indicate successful sign-in.</p>
    #   @return [Types::AuthenticationResultType]
    class AdminRespondToAuthChallengeResponse < Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sms_mfa_settings
    #   <p>User preferences for SMS message MFA. Activates or deactivates SMS MFA and sets it as
    #               the preferred MFA method when multiple methods are available.</p>
    #   @return [Types::SMSMfaSettingsType]
    # @!attribute software_token_mfa_settings
    #   <p>User preferences for time-based one-time password (TOTP) MFA. Activates or deactivates
    #               TOTP MFA and sets it as the preferred MFA method when multiple methods are available.
    #               This operation can set TOTP as a user's preferred MFA method before they register a
    #               TOTP authenticator.</p>
    #   @return [Types::SoftwareTokenMfaSettingsType]
    # @!attribute email_mfa_settings
    #   <p>User preferences for email message MFA. Activates or deactivates email MFA and sets it
    #               as the preferred MFA method when multiple methods are available.
    #               To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    #   @return [Types::EmailMfaSettingsType]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to set a user's MFA preferences.</p>
    #   @return [String]
    class AdminSetUserMFAPreferenceRequest < Struct.new(
      :sms_mfa_settings,
      :software_token_mfa_settings,
      :email_mfa_settings,
      :username,
      :user_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AdminSetUserMFAPreferenceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to set the user's password.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The new temporary or permanent password that you want to set for the user. You
    #               can't remove the password for a user who already has a password so that they can
    #               only sign in with passwordless methods. In this scenario, you must create a new user
    #               without a password.</p>
    #   @return [String]
    # @!attribute permanent
    #   <p>Set to <code>true</code> to set a password that the user can immediately sign in with.
    #               Set to <code>false</code> to set a temporary password that the user must change on their
    #               next sign-in.</p>
    #   @return [Boolean]
    class AdminSetUserPasswordRequest < Struct.new(
      :user_pool_id,
      :username,
      :password,
      :permanent,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AdminSetUserPasswordResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You can use this parameter to set an MFA configuration that uses the SMS delivery
    #             medium.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the user whose options you're setting.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute mfa_options
    #   <p>You can use this parameter only to set an SMS configuration that uses SMS for
    #               delivery.</p>
    #   @return [Array<Types::MFAOptionType>]
    class AdminSetUserSettingsRequest < Struct.new(
      :user_pool_id,
      :username,
      :mfa_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server to set user settings as an
    #             administrator.</p>
    class AdminSetUserSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to submit authentication-event feedback.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The ID of the threat protection authentication event that you want to update.</p>
    #   @return [String]
    # @!attribute feedback_value
    #   <p>Your feedback to the authentication event. When you provide a <code>FeedbackValue</code>
    #   value of <code>valid</code>, you tell Amazon Cognito that you trust a user session where Amazon Cognito
    #   has evaluated some level of risk. When you provide a <code>FeedbackValue</code> value of
    #   <code>invalid</code>, you tell Amazon Cognito that you don't trust a user session, or you 
    #   don't believe that Amazon Cognito evaluated a high-enough risk level.</p>
    #   @return [String]
    class AdminUpdateAuthEventFeedbackRequest < Struct.new(
      :user_pool_id,
      :username,
      :event_id,
      :feedback_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AdminUpdateAuthEventFeedbackResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to update the device status, as an administrator.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to change a user's device status.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute device_key
    #   <p>The unique identifier, or device key, of the device that you want to update the status
    #               for.</p>
    #   @return [String]
    # @!attribute device_remembered_status
    #   <p>To enable device authentication with the specified device, set to
    #                   <code>remembered</code>.To disable, set to <code>not_remembered</code>.</p>
    #   @return [String]
    class AdminUpdateDeviceStatusRequest < Struct.new(
      :user_pool_id,
      :username,
      :device_key,
      :device_remembered_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status response to the request to update the device, as an administrator.</p>
    class AdminUpdateDeviceStatusResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to update the user's attributes as an administrator.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to update user attributes.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute user_attributes
    #   <p>An array of name-value pairs representing user attributes.</p>
    #            <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #            <p>If your user pool requires verification before Amazon Cognito updates an attribute value that
    #               you specify in this request, Amazon Cognito doesn’t immediately update the value of that
    #               attribute. After your user receives and responds to a verification message to verify the
    #               new value, Amazon Cognito updates the attribute value. Your user can sign in and receive messages
    #               with the original attribute value until they verify the new value.</p>
    #            <p>To skip the verification message and update the value of an attribute that requires
    #               verification in the same API request, include the <code>email_verified</code> or
    #                   <code>phone_number_verified</code> attribute, with a value of <code>true</code>. If
    #               you set the <code>email_verified</code> or <code>phone_number_verified</code> value for
    #               an <code>email</code> or <code>phone_number</code> attribute that requires verification
    #               to <code>true</code>, Amazon Cognito doesn’t send a verification message to your user.</p>
    #   @return [Array<Types::AttributeType>]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #            <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the AdminUpdateUserAttributes API action, Amazon Cognito invokes the
    #               function that is assigned to the <i>custom message</i> trigger. When Amazon Cognito
    #               invokes this function, it passes a JSON payload, which the function receives as input.
    #               This payload contains a <code>clientMetadata</code> attribute, which provides the data
    #               that you assigned to the ClientMetadata parameter in your AdminUpdateUserAttributes
    #               request. In your function code in Lambda, you can process the
    #                   <code>clientMetadata</code> value to enhance your workflow for your specific
    #               needs.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    class AdminUpdateUserAttributesRequest < Struct.new(
      :user_pool_id,
      :username,
      :user_attributes,
      :client_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server for the request to update user attributes as
    #             an administrator.</p>
    class AdminUpdateUserAttributesResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to sign out of all devices, as an administrator.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to sign out a user.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    class AdminUserGlobalSignOutRequest < Struct.new(
      :user_pool_id,
      :username,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The global sign-out response, as an administrator.</p>
    class AdminUserGlobalSignOutResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Threat protection configuration options for additional authentication types in your
    #             user pool, including custom
    #             authentication. </p>
    # @!attribute custom_auth_mode
    #   <p>The operating mode of threat protection in custom authentication with <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html"> Custom
    #                   authentication challenge Lambda triggers</a>. </p>
    #   @return [String]
    class AdvancedSecurityAdditionalFlowsType < Struct.new(
      :custom_auth_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a user tries to confirm the account with an email
    #             address or phone number that has already been supplied as an alias for a different user
    #             profile. This exception indicates that an account with this email address or phone
    #             already exists in a user pool that you've configured to use email address or phone
    #             number as a sign-in alias.</p>
    # @!attribute message
    #   <p>The message that Amazon Cognito sends to the user when the value of an alias attribute is
    #               already linked to another user profile.</p>
    #   @return [String]
    class AliasExistsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The settings for Amazon Pinpoint analytics configuration. With an analytics configuration,
    #             your application can collect user-activity metrics for user notifications with a Amazon Pinpoint
    #             campaign.</p>
    #          <p>Amazon Pinpoint isn't available in all Amazon Web Services Regions. For a list of available Regions, see
    #                 <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-pinpoint-integration.html#cognito-user-pools-find-region-mappings">Amazon Cognito and Amazon Pinpoint Region availability</a>.</p>
    # @!attribute application_id
    #   <p>Your Amazon Pinpoint project ID.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Pinpoint project that you want to connect to
    #               your user pool app client. Amazon Cognito publishes events to the Amazon Pinpoint project that
    #                   <code>ApplicationArn</code> declares. You can also configure your application to
    #               pass an endpoint ID in the <code>AnalyticsMetadata</code> parameter of sign-in
    #               operations. The endpoint ID is information about the destination for push
    #               notifications</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of an Identity and Access Management role that has the permissions required for Amazon Cognito to publish
    #               events to Amazon Pinpoint analytics.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html">external ID</a> of the role that Amazon Cognito assumes to send
    #               analytics data to Amazon Pinpoint.</p>
    #   @return [String]
    # @!attribute user_data_shared
    #   <p>If <code>UserDataShared</code> is <code>true</code>, Amazon Cognito includes user data in the
    #               events that it publishes to Amazon Pinpoint analytics.</p>
    #   @return [Boolean]
    class AnalyticsConfigurationType < Struct.new(
      :application_id,
      :application_arn,
      :role_arn,
      :external_id,
      :user_data_shared,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:user_data_shared] = false unless options.key?(:user_data_shared)
        super
      end
    end

    # <p>Information that your application adds to authentication requests. Applies an endpoint
    #             ID to the analytics data that your user pool sends to Amazon Pinpoint.</p>
    #          <p>An endpoint ID uniquely identifies a mobile device, email address or phone number that
    #             can receive messages from Amazon Pinpoint analytics. For more information about Amazon Web Services Regions that
    #             can contain Amazon Pinpoint resources for use with Amazon Cognito user pools, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-pinpoint-integration.html">Using Amazon Pinpoint analytics with Amazon Cognito user pools</a>.</p>
    # @!attribute analytics_endpoint_id
    #   <p>The endpoint ID. Information that you want to pass to Amazon Pinpoint about where to send
    #               notifications.</p>
    #   @return [String]
    class AnalyticsMetadataType < Struct.new(
      :analytics_endpoint_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An image file from a managed login branding style in a user pool.</p>
    # @!attribute category
    #   <p>The category that the image corresponds to in your managed login configuration.
    #               Managed login has asset categories for different types of logos, backgrounds, and
    #               icons.</p>
    #   @return [String]
    # @!attribute color_mode
    #   <p>The display-mode target of the asset: light, dark, or browser-adaptive. For example,
    #               Amazon Cognito displays a dark-mode image only when the browser or application is in dark mode,
    #               but displays a browser-adaptive file in all contexts.</p>
    #   @return [String]
    # @!attribute extension
    #   <p>The file type of the image file.</p>
    #   @return [String]
    # @!attribute bytes
    #   <p>The image file, in Base64-encoded binary.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the asset.</p>
    #   @return [String]
    class AssetType < Struct.new(
      :category,
      :color_mode,
      :extension,
      :bytes,
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #            <p>You can provide either an access token or a session ID in the request.</p>
    #   @return [String]
    # @!attribute session
    #   <p>The session identifier that maintains the state of authentication requests and
    #               challenge responses. In <code>AssociateSoftwareToken</code>, this is the session ID from
    #               a successful sign-in. You can provide either an access token or a session ID in the
    #               request.</p>
    #   @return [String]
    class AssociateSoftwareTokenRequest < Struct.new(
      :access_token,
      :session,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_code
    #   <p>A unique generated shared secret code that is used by the TOTP algorithm to generate a
    #               one-time code.</p>
    #   @return [String]
    # @!attribute session
    #   <p>The session identifier that maintains the state of authentication requests and
    #               challenge responses.</p>
    #   @return [String]
    class AssociateSoftwareTokenResponse < Struct.new(
      :secret_code,
      :session,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The name and value of a user attribute.</p>
    # @!attribute name
    #   <p>The name of the attribute.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the attribute.</p>
    #   @return [String]
    class AttributeType < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One authentication event that Amazon Cognito logged in a user pool with threat protection
    #             active. Contains user and device metadata and a risk assessment from your user
    #             pool.</p>
    # @!attribute event_id
    #   <p>The event ID.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The type of authentication event.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute event_response
    #   <p>The event response.</p>
    #   @return [String]
    # @!attribute event_risk
    #   <p>The threat evaluation from your user pool about an event. Contains information about
    #               whether your user pool detected compromised credentials, whether the event triggered an
    #               automated response, and the level of risk.</p>
    #   @return [Types::EventRiskType]
    # @!attribute challenge_responses
    #   <p>A list of the challenges that the user was requested to answer, for example
    #                   <code>Password</code>, and the result, for example <code>Success</code>.</p>
    #   @return [Array<Types::ChallengeResponseType>]
    # @!attribute event_context_data
    #   <p>The user context data captured at the time of an event request. This value provides
    #               additional information about the client from which event the request is received.</p>
    #   @return [Types::EventContextDataType]
    # @!attribute event_feedback
    #   <p>The <code>UpdateAuthEventFeedback</code> or <code>AdminUpdateAuthEventFeedback</code>
    #               feedback that you or your user provided in response to the event. A value of
    #                   <code>Valid</code> indicates that you disagreed with the level of risk that your
    #               user pool assigned, and evaluated a session to be valid, or likely safe. A value of
    #                   <code>Invalid</code> indicates that you agreed with the user pool risk level and
    #               evaluated a session to be invalid, or likely malicious.</p>
    #   @return [Types::EventFeedbackType]
    class AuthEventType < Struct.new(
      :event_id,
      :event_type,
      :creation_date,
      :event_response,
      :event_risk,
      :challenge_responses,
      :event_context_data,
      :event_feedback,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The object that your application receives after authentication. Contains tokens and
    #             information for device authentication.</p>
    # @!attribute access_token
    #   <p>Your user's access token.</p>
    #   @return [String]
    # @!attribute expires_in
    #   <p>The expiration period of the authentication result in seconds.</p>
    #   @return [Integer]
    # @!attribute token_type
    #   <p>The intended use of the token, for example <code>Bearer</code>.</p>
    #   @return [String]
    # @!attribute refresh_token
    #   <p>Your user's refresh token.</p>
    #   @return [String]
    # @!attribute id_token
    #   <p>Your user's ID token.</p>
    #   @return [String]
    # @!attribute new_device_metadata
    #   <p>The new device metadata from an authentication result.</p>
    #   @return [Types::NewDeviceMetadataType]
    class AuthenticationResultType < Struct.new(
      :access_token,
      :expires_in,
      :token_type,
      :refresh_token,
      :id_token,
      :new_device_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:expires_in] = 0 unless options.key?(:expires_in)
        super
      end
    end

    # <p>The responses to the challenge that you received in the previous request. Each
    #     challenge has its own required response parameters. The following examples are partial
    #     JSON request bodies that highlight challenge-response parameters.</p>
    #          <important>
    #             <p>You must provide a SECRET_HASH parameter in all challenge responses to an app
    #         client that has a client secret. Include a <code>DEVICE_KEY</code> for device
    #         authentication.</p>
    #          </important>
    #          <dl>
    #             <dt>SELECT_CHALLENGE</dt>
    #             <dd>
    #                <p>
    #                   <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #             "USERNAME": "[username]",
    #             "ANSWER": "[Challenge name]"}</code>
    #                </p>
    #                <p>Available challenges are <code>PASSWORD</code>, <code>PASSWORD_SRP</code>, 
    #             <code>EMAIL_OTP</code>, <code>SMS_OTP</code>, and <code>WEB_AUTHN</code>.</p>
    #                <p>Complete authentication in the <code>SELECT_CHALLENGE</code> response for
    #             <code>PASSWORD</code>, <code>PASSWORD_SRP</code>, and <code>WEB_AUTHN</code>:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                   "ANSWER": "WEB_AUTHN",
    #                   "USERNAME": "[username]",
    #                   "CREDENTIAL": "[AuthenticationResponseJSON]"}</code>
    #                      </p>
    #                      <p>See <a href="https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson">
    #                   AuthenticationResponseJSON</a>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                   "ANSWER": "PASSWORD",
    #                   "USERNAME": "[username]",
    #                   "PASSWORD": "[password]"}</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                   "ANSWER": "PASSWORD_SRP",
    #                   "USERNAME": "[username]",
    #                   "SRP_A": "[SRP_A]"}</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #                <p>For <code>SMS_OTP</code> and <code>EMAIL_OTP</code>, respond with the
    #             username and answer. Your user pool will send a code for the user to submit in
    #             the next challenge response.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                   "ANSWER": "SMS_OTP",
    #                   "USERNAME": "[username]"}</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                   "ANSWER": "EMAIL_OTP",
    #                   "USERNAME": "[username]"}</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>WEB_AUTHN</dt>
    #             <dd>
    #                <p>
    #                   <code>"ChallengeName": "WEB_AUTHN", "ChallengeResponses": {
    #                   "USERNAME": "[username]",
    #                   "CREDENTIAL": "[AuthenticationResponseJSON]"}</code>
    #                </p>
    #                <p>See <a href="https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson">
    #                   AuthenticationResponseJSON</a>.</p>
    #             </dd>
    #             <dt>PASSWORD</dt>
    #             <dd>
    #                <p>
    #                   <code>"ChallengeName": "PASSWORD", "ChallengeResponses": {
    #                   "USERNAME": "[username]",
    #                   "PASSWORD": "[password]"}</code>
    #                </p>
    #             </dd>
    #             <dt>PASSWORD_SRP</dt>
    #             <dd>
    #                <p>
    #                   <code>"ChallengeName": "PASSWORD_SRP", "ChallengeResponses": {
    #                   "USERNAME": "[username]",
    #                   "SRP_A": "[SRP_A]"}</code>
    #                </p>
    #             </dd>
    #             <dt>SMS_OTP</dt>
    #             <dd>
    #                <p>
    #                   <code>"ChallengeName": "SMS_OTP", "ChallengeResponses": 
    #             {"SMS_OTP_CODE": "[code]", "USERNAME": "[username]"}</code>
    #                </p>
    #             </dd>
    #             <dt>EMAIL_OTP</dt>
    #             <dd>
    #                <p>
    #                   <code>"ChallengeName": "EMAIL_OTP", "ChallengeResponses": {"EMAIL_OTP_CODE":
    #                     "[code]", "USERNAME": "[username]"}</code>
    #                </p>
    #             </dd>
    #             <dt>SMS_MFA</dt>
    #             <dd>
    #                <p>
    #                   <code>"ChallengeName": "SMS_MFA", "ChallengeResponses": {"SMS_MFA_CODE":
    #                     "[code]", "USERNAME": "[username]"}</code>
    #                </p>
    #             </dd>
    #             <dt>PASSWORD_VERIFIER</dt>
    #             <dd>
    #                <p>This challenge response is part of the SRP flow. Amazon Cognito requires 
    #             that your application respond to this challenge within a few seconds. When
    #             the response time exceeds this period, your user pool returns a
    #             <code>NotAuthorizedException</code> error.</p>
    #                <p>
    #                   <code>"ChallengeName": "PASSWORD_VERIFIER", "ChallengeResponses":
    #                     {"PASSWORD_CLAIM_SIGNATURE": "[claim_signature]",
    #                     "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP":
    #                     [timestamp], "USERNAME": "[username]"}</code>
    #                </p>
    #             </dd>
    #             <dt>CUSTOM_CHALLENGE</dt>
    #             <dd>
    #                <p>
    #                   <code>"ChallengeName": "CUSTOM_CHALLENGE", "ChallengeResponses":
    #                     {"USERNAME": "[username]", "ANSWER": "[challenge_answer]"}</code>
    #                </p>
    #             </dd>
    #             <dt>NEW_PASSWORD_REQUIRED</dt>
    #             <dd>
    #                <p>
    #                   <code>"ChallengeName": "NEW_PASSWORD_REQUIRED", "ChallengeResponses":
    #                     {"NEW_PASSWORD": "[new_password]", "USERNAME":
    #                 "[username]"}</code>
    #                </p>
    #                <p>To set any required attributes that <code>InitiateAuth</code> returned in
    #                 an <code>requiredAttributes</code> parameter, add
    #                     <code>"userAttributes.[attribute_name]": "[attribute_value]"</code>.
    #                 This parameter can also set values for writable attributes that aren't
    #                 required by your user pool.</p>
    #                <note>
    #                   <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value. 
    # In <code>AdminRespondToAuthChallenge</code> or <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the 
    # <code>requiredAttributes</code> parameter, then use the <code>AdminUpdateUserAttributes</code> or <code>UpdateUserAttributes</code> API 
    # operation to modify the value of any additional attributes.</p>
    #                </note>
    #             </dd>
    #             <dt>SOFTWARE_TOKEN_MFA</dt>
    #             <dd>
    #                <p>
    #                   <code>"ChallengeName": "SOFTWARE_TOKEN_MFA", "ChallengeResponses":
    #                     {"USERNAME": "[username]", "SOFTWARE_TOKEN_MFA_CODE":
    #                     [authenticator_code]}</code>
    #                </p>
    #             </dd>
    #             <dt>DEVICE_SRP_AUTH</dt>
    #             <dd>
    #                <p>
    #                   <code>"ChallengeName": "DEVICE_SRP_AUTH", "ChallengeResponses": {"USERNAME":
    #                 "[username]", "DEVICE_KEY": "[device_key]", "SRP_A":
    #                 "[srp_a]"}</code>
    #                </p>
    #             </dd>
    #             <dt>DEVICE_PASSWORD_VERIFIER</dt>
    #             <dd>
    #                <p>
    #                   <code>"ChallengeName": "DEVICE_PASSWORD_VERIFIER", "ChallengeResponses":
    #                 {"DEVICE_KEY": "[device_key]", "PASSWORD_CLAIM_SIGNATURE":
    #                 "[claim_signature]", "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]",
    #                 "TIMESTAMP": [timestamp], "USERNAME": "[username]"}</code>
    #                </p>
    #             </dd>
    #             <dt>MFA_SETUP</dt>
    #             <dd>
    #                <p>
    #                   <code>"ChallengeName": "MFA_SETUP", "ChallengeResponses": {"USERNAME":
    #                 "[username]"}, "SESSION": "[Session ID from
    #                 VerifySoftwareToken]"</code>
    #                </p>
    #             </dd>
    #             <dt>SELECT_MFA_TYPE</dt>
    #             <dd>
    #                <p>
    #                   <code>"ChallengeName": "SELECT_MFA_TYPE", "ChallengeResponses": {"USERNAME":
    #                 "[username]", "ANSWER": "[SMS_MFA|EMAIL_MFA|SOFTWARE_TOKEN_MFA]"}</code>
    #                </p>
    #             </dd>
    #          </dl>
    #          <p>For more information about <code>SECRET_HASH</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>. For information about
    #     <code>DEVICE_KEY</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>.</p>
    # @!attribute challenge_name
    #   <p>The type of challenge that your previous authentication request returned in the
    #               parameter <code>ChallengeName</code>, for example <code>SMS_MFA</code>.</p>
    #   @return [String]
    # @!attribute challenge_response
    #   <p>The set of key-value pairs that provides a response to the requested challenge.</p>
    #   @return [String]
    class ChallengeResponseType < Struct.new(
      :challenge_name,
      :challenge_response,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to change a user password.</p>
    # @!attribute previous_password
    #   <p>The user's previous password. Required if the user has a password. If the user
    #               has no password and only signs in with passwordless authentication options, you can omit
    #               this parameter.</p>
    #   @return [String]
    # @!attribute proposed_password
    #   <p>A new password that you prompted the user to enter in your application.</p>
    #   @return [String]
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose password you want to
    #               change.</p>
    #   @return [String]
    class ChangePasswordRequest < Struct.new(
      :previous_password,
      :proposed_password,
      :access_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the server to the change password request.</p>
    class ChangePasswordResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for the CloudWatch log group destination of user pool detailed activity
    #             logging, or of user activity log export with threat protection.</p>
    # @!attribute log_group_arn
    #   <p>The Amazon Resource Name (arn) of a CloudWatch Logs log group where your user pool sends logs.
    #               The log group must not be encrypted with Key Management Service and must be in the same Amazon Web Services account
    #               as your user pool.</p>
    #            <p>To send logs to log groups with a resource policy of a size greater than 5120
    #               characters, configure a log group with a path that starts with
    #                   <code>/aws/vendedlogs</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html">Enabling
    #                   logging from certain Amazon Web Services services</a>.</p>
    #   @return [String]
    class CloudWatchLogsConfigurationType < Struct.new(
      :log_group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The delivery details for an email or SMS message that Amazon Cognito sent for authentication or
    #             verification.</p>
    # @!attribute destination
    #   <p>The email address or phone number destination where Amazon Cognito sent the code.</p>
    #   @return [String]
    # @!attribute delivery_medium
    #   <p>The method that Amazon Cognito used to send the code.</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The name of the attribute that Amazon Cognito verifies with the code.</p>
    #   @return [String]
    class CodeDeliveryDetailsType < Struct.new(
      :destination,
      :delivery_medium,
      :attribute_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a verification code fails to deliver
    #             successfully.</p>
    # @!attribute message
    #   <p>The message sent when a verification code fails to deliver successfully.</p>
    #   @return [String]
    class CodeDeliveryFailureException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown if the provided code doesn't match what the server was
    #             expecting.</p>
    # @!attribute message
    #   <p>The message provided when the code mismatch exception is thrown.</p>
    #   @return [String]
    class CodeMismatchException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    # @!attribute credential
    #   <p>A <a href="https://www.w3.org/TR/WebAuthn-3/#dictdef-registrationresponsejson">RegistrationResponseJSON</a> public-key credential response from the
    #               user's passkey provider.</p>
    #   @return [JSON]
    class CompleteWebAuthnRegistrationRequest < Struct.new(
      :access_token,
      :credential,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CompleteWebAuthnRegistrationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for user pool actions when Amazon Cognito detects compromised credentials with threat
    #             protection in full-function <code>ENFORCED</code> mode.</p>
    # @!attribute event_action
    #   <p>The action that Amazon Cognito takes when it detects compromised credentials.</p>
    #   @return [String]
    class CompromisedCredentialsActionsType < Struct.new(
      :event_action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for compromised-credentials actions and authentication-event sources with
    #             threat protection in full-function <code>ENFORCED</code> mode.</p>
    # @!attribute event_filter
    #   <p>Settings for the sign-in activity where you want to configure compromised-credentials
    #               actions. Defaults to all events.</p>
    #   @return [Array<String>]
    # @!attribute actions
    #   <p>Settings for the actions that you want your user pool to take when Amazon Cognito detects
    #               compromised credentials.</p>
    #   @return [Types::CompromisedCredentialsActionsType]
    class CompromisedCredentialsRiskConfigurationType < Struct.new(
      :event_filter,
      :actions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown if two or more modifications are happening
    #             concurrently.</p>
    # @!attribute message
    #   <p>The message provided when the concurrent exception is thrown.</p>
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The confirm-device request.</p>
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    # @!attribute device_key
    #   <p>The unique identifier, or device key, of the device that you want to update the status
    #               for.</p>
    #   @return [String]
    # @!attribute device_secret_verifier_config
    #   <p>The configuration of the device secret verifier.</p>
    #   @return [Types::DeviceSecretVerifierConfigType]
    # @!attribute device_name
    #   <p>A friendly name for the device, for example <code>MyMobilePhone</code>.</p>
    #   @return [String]
    class ConfirmDeviceRequest < Struct.new(
      :access_token,
      :device_key,
      :device_secret_verifier_config,
      :device_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The confirm-device response.</p>
    # @!attribute user_confirmation_necessary
    #   <p>When <code>true</code>, your user must confirm that they want to remember the device.
    #               Prompt the user for an answer.</p>
    #            <p>When <code>false</code>, immediately sets the device as remembered and eligible for
    #               device authentication.</p>
    #            <p>You can configure your user pool to always remember devices, in which case this
    #               response is <code>false</code>, or to allow users to opt in, in which case this response
    #               is <code>true</code>. Configure this option under <i>Device tracking</i>
    #               in the <i>Sign-in</i> menu of your user pool.</p>
    #   @return [Boolean]
    class ConfirmDeviceResponse < Struct.new(
      :user_confirmation_necessary,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:user_confirmation_necessary] = false unless options.key?(:user_confirmation_necessary)
        super
      end
    end

    # <p>The request representing the confirmation for a password reset.</p>
    # @!attribute client_id
    #   <p>The ID of the app client where the user wants to reset their password. This parameter
    #               is an identifier of the client application that users are resetting their password from,
    #               but this operation resets users' irrespective of the app clients they sign in
    #               to.</p>
    #   @return [String]
    # @!attribute secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message. For more information
    #               about <code>SecretHash</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute confirmation_code
    #   <p>The confirmation code that your user pool delivered when your user requested to reset
    #               their password.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The new password that your user wants to set.</p>
    #   @return [String]
    # @!attribute analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the 
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier, 
    #   email address, or phone number.</p>
    #   @return [Types::AnalyticsMetadataType]
    # @!attribute user_context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat 
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    #   @return [Types::UserContextDataType]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #            <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the ConfirmForgotPassword API action, Amazon Cognito invokes the function that is
    #               assigned to the <i>post confirmation</i> trigger. When Amazon Cognito invokes this
    #               function, it passes a JSON payload, which the function receives as input. This payload
    #               contains a <code>clientMetadata</code> attribute, which provides the data that you
    #               assigned to the ClientMetadata parameter in your ConfirmForgotPassword request. In your
    #               function code in Lambda, you can process the <code>clientMetadata</code> value to
    #               enhance your workflow for your specific needs.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    class ConfirmForgotPasswordRequest < Struct.new(
      :client_id,
      :secret_hash,
      :username,
      :confirmation_code,
      :password,
      :analytics_metadata,
      :user_context_data,
      :client_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the server that results from a user's request to retrieve a
    #             forgotten password.</p>
    class ConfirmForgotPasswordResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to confirm registration of a user.</p>
    # @!attribute client_id
    #   <p>The ID of the app client associated with the user pool.</p>
    #   @return [String]
    # @!attribute secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message. For more information
    #               about <code>SecretHash</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute confirmation_code
    #   <p>The confirmation code that your user pool sent in response to the <code>SignUp</code>
    #               request.</p>
    #   @return [String]
    # @!attribute force_alias_creation
    #   <p>When <code>true</code>, forces user confirmation despite any existing aliases.
    #               Defaults to <code>false</code>. A value of <code>true</code> migrates the alias from an
    #               existing user to the new user if an existing user already has the phone number or email
    #               address as an alias.</p>
    #            <p>Say, for example, that an existing user has an <code>email</code> attribute of
    #                   <code>bob@example.com</code> and email is an alias in your user pool. If the new
    #               user also has an email of <code>bob@example.com</code> and your
    #                   <code>ConfirmSignUp</code> response sets <code>ForceAliasCreation</code> to
    #                   <code>true</code>, the new user can sign in with a username of
    #                   <code>bob@example.com</code> and the existing user can no longer do so.</p>
    #            <p>If <code>false</code> and an attribute belongs to an existing alias, this request
    #               returns an <b>AliasExistsException</b> error.</p>
    #            <p>For more information about sign-in aliases, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases">Customizing sign-in attributes</a>.</p>
    #   @return [Boolean]
    # @!attribute analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the 
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier, 
    #   email address, or phone number.</p>
    #   @return [Types::AnalyticsMetadataType]
    # @!attribute user_context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat 
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    #   @return [Types::UserContextDataType]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #            <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the ConfirmSignUp API action, Amazon Cognito invokes the function that is
    #               assigned to the <i>post confirmation</i> trigger. When Amazon Cognito invokes this
    #               function, it passes a JSON payload, which the function receives as input. This payload
    #               contains a <code>clientMetadata</code> attribute, which provides the data that you
    #               assigned to the ClientMetadata parameter in your ConfirmSignUp request. In your function
    #               code in Lambda, you can process the <code>clientMetadata</code> value to
    #               enhance your workflow for your specific needs.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    # @!attribute session
    #   <p>The optional session ID from a <code>SignUp</code> API request. You can sign in a user
    #               directly from the sign-up process with the <code>USER_AUTH</code> authentication
    #               flow.</p>
    #   @return [String]
    class ConfirmSignUpRequest < Struct.new(
      :client_id,
      :secret_hash,
      :username,
      :confirmation_code,
      :force_alias_creation,
      :analytics_metadata,
      :user_context_data,
      :client_metadata,
      :session,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server for the registration confirmation.</p>
    # @!attribute session
    #   <p>A session identifier that you can use to immediately sign in the confirmed user. You
    #               can automatically sign users in with the one-time password that they provided in a
    #               successful <code>ConfirmSignUp</code> request.</p>
    #   @return [String]
    class ConfirmSignUpResponse < Struct.new(
      :session,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contextual user data used for evaluating the risk of an authentication event by user
    #             pool threat protection.</p>
    # @!attribute ip_address
    #   <p>The source IP address of your user's device.</p>
    #   @return [String]
    # @!attribute server_name
    #   <p>The name of your application's service endpoint.</p>
    #   @return [String]
    # @!attribute server_path
    #   <p>The path of your application's service endpoint.</p>
    #   @return [String]
    # @!attribute http_headers
    #   <p>The HTTP headers from your user's authentication request.</p>
    #   @return [Array<Types::HttpHeader>]
    # @!attribute encoded_data
    #   <p>Encoded device-fingerprint details that your app collected with the Amazon Cognito
    #               context data collection library. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-device-fingerprint">Adding user device and session data to API requests</a>.</p>
    #   @return [String]
    class ContextDataType < Struct.new(
      :ip_address,
      :server_name,
      :server_path,
      :http_headers,
      :encoded_data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>A name for the group. This name must be unique in your user pool.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to create a user group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the group that you're creating.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role that you want to associate with the
    #               group. A group role primarily declares a preferred role for the credentials that you get
    #               from an identity pool. Amazon Cognito ID tokens have a <code>cognito:preferred_role</code> claim
    #               that presents the highest-precedence group that a user belongs to. Both ID and access
    #               tokens also contain a <code>cognito:groups</code> claim that list all the groups that a
    #               user is a member of.</p>
    #   @return [String]
    # @!attribute precedence
    #   <p>A non-negative integer value that specifies the precedence of this group relative to
    #               the other groups that a user can belong to in the user pool. Zero is the highest
    #               precedence value. Groups with lower <code>Precedence</code> values take precedence over
    #               groups with higher or null <code>Precedence</code> values. If a user belongs to two or
    #               more groups, it is the group with the lowest precedence value whose role ARN is given in
    #               the user's tokens for the <code>cognito:roles</code> and
    #                   <code>cognito:preferred_role</code> claims.</p>
    #            <p>Two groups can have the same <code>Precedence</code> value. If this happens, neither
    #               group takes precedence over the other. If two groups with the same
    #                   <code>Precedence</code> have the same role ARN, that role is used in the
    #                   <code>cognito:preferred_role</code> claim in tokens for users in each group. If the
    #               two groups have different role ARNs, the <code>cognito:preferred_role</code> claim isn't
    #               set in users' tokens.</p>
    #            <p>The default <code>Precedence</code> value is null. The maximum <code>Precedence</code>
    #               value is <code>2^31-1</code>.</p>
    #   @return [Integer]
    class CreateGroupRequest < Struct.new(
      :group_name,
      :user_pool_id,
      :description,
      :role_arn,
      :precedence,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>The response object for a created group.</p>
    #   @return [Types::GroupType]
    class CreateGroupResponse < Struct.new(
      :group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The Id of the user pool where you want to create an IdP.</p>
    #   @return [String]
    # @!attribute provider_name
    #   <p>The name that you want to assign to the IdP. You can pass the identity provider name
    #               in the <code>identity_provider</code> query parameter of requests to the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html">Authorize endpoint</a> to silently redirect to sign-in with the associated
    #               IdP.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The type of IdP that you want to add. Amazon Cognito supports OIDC, SAML 2.0, Login With
    #               Amazon, Sign In With Apple, Google, and Facebook IdPs.</p>
    #   @return [String]
    # @!attribute provider_details
    #   <p>The scopes, URLs, and identifiers for your external identity provider. The following
    #   examples describe the provider detail keys for each IdP type. These values and their
    #   schema are subject to change. Social IdP <code>authorize_scopes</code> values must match
    #   the values listed here.</p>
    #            <dl>
    #               <dt>OpenID Connect (OIDC)</dt>
    #               <dd>
    #                  <p>Amazon Cognito accepts the following elements when it can't discover endpoint
    #                   URLs from <code>oidc_issuer</code>: <code>attributes_url</code>,
    #                       <code>authorize_url</code>, <code>jwks_uri</code>,
    #                       <code>token_url</code>.</p>
    #                  <p>Create or update request: <code>"ProviderDetails": {
    #                       "attributes_request_method": "GET", "attributes_url":
    #                       "https://auth.example.com/userInfo", "authorize_scopes": "openid profile
    #                       email", "authorize_url": "https://auth.example.com/authorize",
    #                       "client_id": "1example23456789", "client_secret":
    #                       "provider-app-client-secret", "jwks_uri":
    #                       "https://auth.example.com/.well-known/jwks.json", "oidc_issuer":
    #                       "https://auth.example.com", "token_url": "https://example.com/token"
    #                       }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": { "attributes_request_method":
    #                       "GET", "attributes_url": "https://auth.example.com/userInfo",
    #                       "attributes_url_add_attributes": "false", "authorize_scopes": "openid
    #                       profile email", "authorize_url": "https://auth.example.com/authorize",
    #                       "client_id": "1example23456789", "client_secret":
    #                       "provider-app-client-secret", "jwks_uri":
    #                       "https://auth.example.com/.well-known/jwks.json", "oidc_issuer":
    #                       "https://auth.example.com", "token_url": "https://example.com/token"
    #                       }</code>
    #                  </p>
    #               </dd>
    #               <dt>SAML</dt>
    #               <dd>
    #                  <p>Create or update request with Metadata URL: <code>"ProviderDetails": { "IDPInit": "true",
    #                       "IDPSignout": "true", "EncryptedResponses" : "true", "MetadataURL":
    #                       "https://auth.example.com/sso/saml/metadata", "RequestSigningAlgorithm":
    #                       "rsa-sha256" }</code>
    #                  </p>
    #                  <p>Create or update request with Metadata file: <code>"ProviderDetails": { "IDPInit": "true",
    #                       "IDPSignout": "true", "EncryptedResponses" : "true",  
    #                       "MetadataFile": "[metadata XML]", "RequestSigningAlgorithm":
    #                       "rsa-sha256" }</code>
    #                  </p>
    #                  <p>The value of <code>MetadataFile</code> must be the plaintext metadata document with all 
    #                   quote (") characters escaped by backslashes.</p>
    #                  <p>Describe response: <code>"ProviderDetails": { "IDPInit": "true",
    #                       "IDPSignout": "true", "EncryptedResponses" : "true", "ActiveEncryptionCertificate": "[certificate]",
    #                       "MetadataURL": "https://auth.example.com/sso/saml/metadata", "RequestSigningAlgorithm":
    #                       "rsa-sha256", "SLORedirectBindingURI":
    #                       "https://auth.example.com/slo/saml", "SSORedirectBindingURI":
    #                       "https://auth.example.com/sso/saml" }</code>
    #                  </p>
    #               </dd>
    #               <dt>LoginWithAmazon</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "authorize_scopes":
    #                       "profile postal_code", "client_id":
    #                       "amzn1.application-oa2-client.1example23456789", "client_secret":
    #                       "provider-app-client-secret"</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": { "attributes_url":
    #                       "https://api.amazon.com/user/profile", "attributes_url_add_attributes":
    #                       "false", "authorize_scopes": "profile postal_code", "authorize_url":
    #                       "https://www.amazon.com/ap/oa", "client_id":
    #                       "amzn1.application-oa2-client.1example23456789", "client_secret":
    #                       "provider-app-client-secret", "token_request_method": "POST",
    #                       "token_url": "https://api.amazon.com/auth/o2/token" }</code>
    #                  </p>
    #               </dd>
    #               <dt>Google</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "authorize_scopes":
    #                       "email profile openid", "client_id":
    #                       "1example23456789.apps.googleusercontent.com", "client_secret":
    #                       "provider-app-client-secret" }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": { "attributes_url":
    #                       "https://people.googleapis.com/v1/people/me?personFields=",
    #                       "attributes_url_add_attributes": "true", "authorize_scopes": "email
    #                       profile openid", "authorize_url":
    #                       "https://accounts.google.com/o/oauth2/v2/auth", "client_id":
    #                       "1example23456789.apps.googleusercontent.com", "client_secret":
    #                       "provider-app-client-secret", "oidc_issuer":
    #                       "https://accounts.google.com", "token_request_method": "POST",
    #                       "token_url": "https://www.googleapis.com/oauth2/v4/token"
    #                   }</code>
    #                  </p>
    #               </dd>
    #               <dt>SignInWithApple</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "authorize_scopes":
    #                       "email name", "client_id": "com.example.cognito", "private_key": "1EXAMPLE", 
    #                       "key_id": "2EXAMPLE", "team_id": "3EXAMPLE" }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": {
    #                       "attributes_url_add_attributes": "false", "authorize_scopes": "email
    #                       name", "authorize_url": "https://appleid.apple.com/auth/authorize",
    #                       "client_id": "com.example.cognito", "key_id": "1EXAMPLE", "oidc_issuer":
    #                       "https://appleid.apple.com", "team_id": "2EXAMPLE",
    #                       "token_request_method": "POST", "token_url":
    #                       "https://appleid.apple.com/auth/token" }</code>
    #                  </p>
    #               </dd>
    #               <dt>Facebook</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "api_version": "v17.0", 
    #               "authorize_scopes": "public_profile, email", "client_id": "1example23456789", 
    #               "client_secret": "provider-app-client-secret" }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": 
    #               { "api_version": "v17.0", "attributes_url": "https://graph.facebook.com/v17.0/me?fields=", 
    #               "attributes_url_add_attributes": "true", "authorize_scopes": "public_profile, email", 
    #               "authorize_url": "https://www.facebook.com/v17.0/dialog/oauth", "client_id": 
    #               "1example23456789", "client_secret": "provider-app-client-secret", "token_request_method": 
    #               "GET", "token_url": "https://graph.facebook.com/v17.0/oauth/access_token" }</code>
    #                  </p>
    #               </dd>
    #            </dl>
    #   @return [Hash<String, String>]
    # @!attribute attribute_mapping
    #   <p>A mapping of IdP attributes to standard and custom user pool attributes. Specify a
    #               user pool attribute as the key of the key-value pair, and the IdP attribute claim name
    #               as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute idp_identifiers
    #   <p>An array of IdP identifiers, for example <code>"IdPIdentifiers": [ "MyIdP", "MyIdP2"
    #                   ]</code>. Identifiers are friendly names that you can pass in the
    #                   <code>idp_identifier</code> query parameter of requests to the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html">Authorize endpoint</a> to silently redirect to sign-in with the associated IdP.
    #               Identifiers in a domain format also enable the use of <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managing-saml-idp-naming.html">email-address matching with SAML providers</a>. </p>
    #   @return [Array<String>]
    class CreateIdentityProviderRequest < Struct.new(
      :user_pool_id,
      :provider_name,
      :provider_type,
      :provider_details,
      :attribute_mapping,
      :idp_identifiers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider
    #   <p>The details of the new user pool IdP.</p>
    #   @return [Types::IdentityProviderType]
    class CreateIdentityProviderResponse < Struct.new(
      :identity_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to create a new branding style.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The app client that you want to create the branding style for. Each style is linked to
    #               an app client until you delete it.</p>
    #   @return [String]
    # @!attribute use_cognito_provided_values
    #   <p>When true, applies the default branding style options. These default options are
    #               managed by Amazon Cognito. You can modify them later in the branding editor.</p>
    #            <p>When you specify <code>true</code> for this option, you must also omit values for
    #                   <code>Settings</code> and <code>Assets</code> in the request.</p>
    #   @return [Boolean]
    # @!attribute settings
    #   <p>A JSON file, encoded as a <code>Document</code> type, with the the settings that you
    #               want to apply to your style.</p>
    #            <p>The following components are not currently implemented and reserved for future
    #               use:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>signUp</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>instructions</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sessionTimerDisplay</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>languageSelector</code> (for localization, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-localization">Managed login localization)</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [JSON]
    # @!attribute assets
    #   <p>An array of image files that you want to apply to functions like backgrounds, logos,
    #               and icons. Each object must also indicate whether it is for dark mode, light mode, or
    #               browser-adaptive mode.</p>
    #   @return [Array<Types::AssetType>]
    class CreateManagedLoginBrandingRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :use_cognito_provided_values,
      :settings,
      :assets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_login_branding
    #   <p>The details of the branding style that you created.</p>
    #   @return [Types::ManagedLoginBrandingType]
    class CreateManagedLoginBrandingResponse < Struct.new(
      :managed_login_branding,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to create a resource server.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>A unique resource server identifier for the resource server. The identifier can be an
    #               API friendly name like <code>solar-system-data</code>. You can also set an API URL like
    #                   <code>https://solar-system-data-api.example.com</code> as your identifier.</p>
    #            <p>Amazon Cognito represents scopes in the access token in the format
    #                   <code>$resource-server-identifier/$scope</code>. Longer scope-identifier strings
    #               increase the size of your access tokens.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A friendly name for the resource server.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>A list of custom scopes. Each scope is a key-value map with the keys
    #                   <code>ScopeName</code> and <code>ScopeDescription</code>. The name of a custom scope
    #               is a combination of <code>ScopeName</code> and the resource server <code>Name</code> in
    #               this request, for example <code>MyResourceServerName/MyScopeName</code>.</p>
    #   @return [Array<Types::ResourceServerScopeType>]
    class CreateResourceServerRequest < Struct.new(
      :user_pool_id,
      :identifier,
      :name,
      :scopes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_server
    #   <p>The details of the new resource server.</p>
    #   @return [Types::ResourceServerType]
    class CreateResourceServerResponse < Struct.new(
      :resource_server,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to create terms documents.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The ID of the app client where you want to create terms documents. Must be an app
    #               client in the requested user pool.</p>
    #   @return [String]
    # @!attribute terms_name
    #   <p>A friendly name for the document that you want to create in the current request. Must
    #               begin with <code>terms-of-use</code> or <code>privacy-policy</code> as identification of
    #               the document type. Provide URLs for both <code>terms-of-use</code> and
    #                   <code>privacy-policy</code> in separate requests.</p>
    #   @return [String]
    # @!attribute terms_source
    #   <p>This parameter is reserved for future use and currently accepts only one value.</p>
    #   @return [String]
    # @!attribute enforcement
    #   <p>This parameter is reserved for future use and currently accepts only one value.</p>
    #   @return [String]
    # @!attribute links
    #   <p>A map of URLs to languages. For each localized language that will view the requested
    #                   <code>TermsName</code>, assign a URL. A selection of <code>cognito:default</code>
    #               displays for all languages that don't have a language-specific URL.</p>
    #            <p>For example, <code>"cognito:default": "https://terms.example.com", "cognito:spanish":
    #                   "https://terms.example.com/es"</code>.</p>
    #   @return [Hash<String, String>]
    class CreateTermsRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :terms_name,
      :terms_source,
      :enforcement,
      :links,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute terms
    #   <p>A summary of your terms documents. Includes a unique identifier for later changes to
    #               the terms documents.</p>
    #   @return [Types::TermsType]
    class CreateTermsResponse < Struct.new(
      :terms,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to create the user import job.</p>
    # @!attribute job_name
    #   <p>A friendly name for the user import job.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that you want to import users into.</p>
    #   @return [String]
    # @!attribute cloud_watch_logs_role_arn
    #   <p>You must specify an IAM role that has permission to log import-job results to
    #               Amazon CloudWatch Logs. This parameter is the ARN of that role.</p>
    #   @return [String]
    class CreateUserImportJobRequest < Struct.new(
      :job_name,
      :user_pool_id,
      :cloud_watch_logs_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server to the request to create the user import
    #             job.</p>
    # @!attribute user_import_job
    #   <p>The details of the user import job. Includes logging destination, status, and the Amazon S3
    #               pre-signed URL for CSV upload.</p>
    #   @return [Types::UserImportJobType]
    class CreateUserImportJobResponse < Struct.new(
      :user_import_job,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to create a user pool client.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to create an app client.</p>
    #   @return [String]
    # @!attribute client_name
    #   <p>A friendly name for the app client that you want to create.</p>
    #   @return [String]
    # @!attribute generate_secret
    #   <p>When <code>true</code>, generates a client secret for the app client. Client secrets
    #               are used with server-side and machine-to-machine applications. Client secrets are
    #               automatically generated; you can't specify a secret value. For more information,
    #               see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html#user-pool-settings-client-app-client-types">App client types</a>.</p>
    #   @return [Boolean]
    # @!attribute refresh_token_validity
    #   <p>The refresh token time limit. After this limit expires, your user can't use 
    #   their refresh token. To specify the time unit for <code>RefreshTokenValidity</code> as 
    #   <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>, 
    #   set a <code>TokenValidityUnits</code> value in your API request.</p>
    #            <p>For example, when you set <code>RefreshTokenValidity</code> as <code>10</code> and
    #   <code>TokenValidityUnits</code> as <code>days</code>, your user can refresh their session
    #   and retrieve new access and ID tokens for 10 days.</p>
    #            <p>The default time unit for <code>RefreshTokenValidity</code> in an API request is days. 
    #   You can't set <code>RefreshTokenValidity</code> to 0. If you do, Amazon Cognito overrides the 
    #   value with the default value of 30 days. <i>Valid range</i> is displayed below 
    #   in seconds.</p>
    #            <p>If you don't specify otherwise in the configuration of your app client, your refresh
    #   tokens are valid for 30 days.</p>
    #   @return [Integer]
    # @!attribute access_token_validity
    #   <p>The access token time limit. After this limit expires, your user can't use 
    #   their access token. To specify the time unit for <code>AccessTokenValidity</code> as 
    #   <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>, 
    #   set a <code>TokenValidityUnits</code> value in your API request.</p>
    #            <p>For example, when you set <code>AccessTokenValidity</code> to <code>10</code> and
    #   <code>TokenValidityUnits</code> to <code>hours</code>, your user can authorize access with
    #   their access token for 10 hours.</p>
    #            <p>The default time unit for <code>AccessTokenValidity</code> in an API request is hours. 
    #   <i>Valid range</i> is displayed below in seconds.</p>
    #            <p>If you don't specify otherwise in the configuration of your app client, your access
    #   tokens are valid for one hour.</p>
    #   @return [Integer]
    # @!attribute id_token_validity
    #   <p>The ID token time limit. After this limit expires, your user can't use 
    #   their ID token. To specify the time unit for <code>IdTokenValidity</code> as 
    #   <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>, 
    #   set a <code>TokenValidityUnits</code> value in your API request.</p>
    #            <p>For example, when you set <code>IdTokenValidity</code> as <code>10</code> and
    #   <code>TokenValidityUnits</code> as <code>hours</code>, your user can authenticate their 
    #   session with their ID token for 10 hours.</p>
    #            <p>The default time unit for <code>IdTokenValidity</code> in an API request is hours. 
    #   <i>Valid range</i> is displayed below in seconds.</p>
    #            <p>If you don't specify otherwise in the configuration of your app client, your ID
    #   tokens are valid for one hour.</p>
    #   @return [Integer]
    # @!attribute token_validity_units
    #   <p>The units that validity times are represented in. The default unit for refresh tokens
    #               is days, and the default for ID and access tokens are hours.</p>
    #   @return [Types::TokenValidityUnitsType]
    # @!attribute read_attributes
    #   <p>The list of user attributes that you want your app client to have read access to.
    #       After your user authenticates in your app, their access token authorizes them to read
    #       their own attribute value for any attribute in this list.</p>
    #            <p>When you don't specify the <code>ReadAttributes</code> for your app client, your
    #       app can read the values of <code>email_verified</code>,
    #       <code>phone_number_verified</code>, and the standard attributes of your user pool.
    #       When your user pool app client has read access to these default attributes,
    #       <code>ReadAttributes</code> doesn't return any information. Amazon Cognito only
    #       populates <code>ReadAttributes</code> in the API response if you have specified your own
    #       custom set of read attributes.</p>
    #   @return [Array<String>]
    # @!attribute write_attributes
    #   <p>The list of user attributes that you want your app client to have write access to.
    #       After your user authenticates in your app, their access token authorizes them to set or
    #       modify their own attribute value for any attribute in this list.</p>
    #            <p>When you don't specify the <code>WriteAttributes</code> for your app client, your
    #       app can write the values of the Standard attributes of your user pool. When your user
    #       pool has write access to these default attributes, <code>WriteAttributes</code>
    #       doesn't return any information. Amazon Cognito only populates
    #           <code>WriteAttributes</code> in the API response if you have specified your own
    #       custom set of write attributes.</p>
    #            <p>If your app client allows users to sign in through an IdP, this array must include all
    #       attributes that you have mapped to IdP attributes. Amazon Cognito updates mapped attributes when
    #       users sign in to your application through an IdP. If your app client does not have write
    #       access to a mapped attribute, Amazon Cognito throws an error when it tries to update the
    #       attribute. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html">Specifying IdP Attribute Mappings for Your user
    #       pool</a>.</p>
    #   @return [Array<String>]
    # @!attribute explicit_auth_flows
    #   <p>The <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html">authentication flows</a> that you want your user pool client to support. For each app 
    #   client in your user pool, you can sign in your users with any combination of one or more flows, including with 
    #   a user name and Secure Remote Password (SRP), a user name and password, or a custom authentication process that 
    #   you define with Lambda functions.</p>
    #            <note>
    #               <p>If you don't specify a value for <code>ExplicitAuthFlows</code>, your app client supports 
    #   <code>ALLOW_REFRESH_TOKEN_AUTH</code>, <code>ALLOW_USER_SRP_AUTH</code>, and <code>ALLOW_CUSTOM_AUTH</code>.
    #   </p>
    #            </note>
    #            <p>The values for authentication flow options include the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_USER_AUTH</code>: Enable selection-based sign-in
    #               with <code>USER_AUTH</code>. This setting covers username-password,
    #               secure remote password (SRP), passwordless, and passkey authentication.
    #               This authentiation flow can do username-password and SRP authentication
    #               without other <code>ExplicitAuthFlows</code> permitting them. For example
    #               users can complete an SRP challenge through <code>USER_AUTH</code> 
    #               without the flow <code>USER_SRP_AUTH</code> being active for the app
    #               client. This flow doesn't include <code>CUSTOM_AUTH</code>.
    #           </p>
    #                  <p>To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_ADMIN_USER_PASSWORD_AUTH</code>: Enable admin based user password
    #               authentication flow <code>ADMIN_USER_PASSWORD_AUTH</code>. This setting replaces
    #               the <code>ADMIN_NO_SRP_AUTH</code> setting. With this authentication flow, your app
    #               passes a user name and password to Amazon Cognito in the request, instead of using the Secure 
    #               Remote Password (SRP) protocol to securely transmit the password.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_CUSTOM_AUTH</code>: Enable Lambda trigger based
    #               authentication.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_USER_PASSWORD_AUTH</code>: Enable user password-based
    #               authentication. In this flow, Amazon Cognito receives the password in the request instead
    #               of using the SRP protocol to verify passwords.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_USER_SRP_AUTH</code>: Enable SRP-based authentication.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_REFRESH_TOKEN_AUTH</code>: Enable authflow to refresh
    #               tokens.</p>
    #               </li>
    #            </ul>
    #            <p>In some environments, you will see the values <code>ADMIN_NO_SRP_AUTH</code>, <code>CUSTOM_AUTH_FLOW_ONLY</code>, or <code>USER_PASSWORD_AUTH</code>. 
    #   You can't assign these legacy <code>ExplicitAuthFlows</code> values to user pool clients at the same time as values that begin with <code>ALLOW_</code>,
    #   like <code>ALLOW_USER_SRP_AUTH</code>.</p>
    #   @return [Array<String>]
    # @!attribute supported_identity_providers
    #   <p>A list of provider names for the identity providers (IdPs) that are supported on this
    #               client. The following are supported: <code>COGNITO</code>, <code>Facebook</code>,
    #               <code>Google</code>, <code>SignInWithApple</code>, and <code>LoginWithAmazon</code>.
    #               You can also specify the names that you configured for the SAML and OIDC IdPs in your
    #               user pool, for example <code>MySAMLIdP</code> or <code>MyOIDCIdP</code>.</p>
    #            <p>This parameter sets the IdPs that <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html">managed 
    #               login</a> will display on the login page for your app client. The removal of 
    #               <code>COGNITO</code> from this list doesn't prevent authentication operations 
    #               for local users with the user pools API in an Amazon Web Services SDK. The only way to prevent 
    #               SDK-based authentication is to block access with a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-waf.html">WAF rule</a>.
    #           </p>
    #   @return [Array<String>]
    # @!attribute callback_ur_ls
    #   <p>A list of allowed redirect, or callback, URLs for managed login authentication. These
    #               URLs are the paths where you want to send your users' browsers after they complete
    #               authentication with managed login or a third-party IdP. Typically, callback URLs are the
    #               home of an application that uses OAuth or OIDC libraries to process authentication
    #               outcomes.</p>
    #            <p>A redirect URI must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                  <p>Be registered with the authorization server. Amazon Cognito doesn't accept
    #                       authorization requests with <code>redirect_uri</code> values that aren't in
    #                       the list of <code>CallbackURLs</code> that you provide in this parameter.</p>
    #               </li>
    #               <li>
    #                  <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #            <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #            <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes
    #               only.</p>
    #            <p>App callback URLs such as myapp://example are also supported.</p>
    #   @return [Array<String>]
    # @!attribute logout_ur_ls
    #   <p>A list of allowed logout URLs for managed login authentication. When you pass
    #                   <code>logout_uri</code> and <code>client_id</code> parameters to
    #                   <code>/logout</code>, Amazon Cognito signs out your user and redirects them to the logout
    #               URL. This parameter describes the URLs that you want to be the permitted targets of
    #                   <code>logout_uri</code>. A typical use of these URLs is when a user selects "Sign
    #               out" and you redirect them to your public homepage. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html">Logout
    #                   endpoint</a>.</p>
    #   @return [Array<String>]
    # @!attribute default_redirect_uri
    #   <p>The default redirect URI. In app clients with one assigned IdP, replaces
    #                   <code>redirect_uri</code> in authentication requests. Must be in the
    #                   <code>CallbackURLs</code> list.</p>
    #   @return [String]
    # @!attribute allowed_o_auth_flows
    #   <p>The OAuth grant types that you want your app client to generate for clients in managed
    #               login authentication. To create an app client that generates client credentials grants,
    #               you must add <code>client_credentials</code> as the only allowed OAuth flow.</p>
    #            <dl>
    #               <dt>code</dt>
    #               <dd>
    #                  <p>Use a code grant flow, which provides an authorization code as the
    #                           response. This code can be exchanged for access tokens with the
    #                               <code>/oauth2/token</code> endpoint.</p>
    #               </dd>
    #               <dt>implicit</dt>
    #               <dd>
    #                  <p>Issue the access token, and the ID token when scopes like
    #                               <code>openid</code> and <code>profile</code> are requested, directly to
    #                           your user.</p>
    #               </dd>
    #               <dt>client_credentials</dt>
    #               <dd>
    #                  <p>Issue the access token from the <code>/oauth2/token</code> endpoint
    #                           directly to a non-person user, authorized by a combination of the client ID
    #                           and client secret.</p>
    #               </dd>
    #            </dl>
    #   @return [Array<String>]
    # @!attribute allowed_o_auth_scopes
    #   <p>The OAuth, OpenID Connect (OIDC), and custom scopes that you want to permit your app
    #               client to authorize access with. Scopes govern access control to user pool self-service
    #               API operations, user data from the <code>userInfo</code> endpoint, and third-party APIs.
    #               Scope values include <code>phone</code>, <code>email</code>, <code>openid</code>, and
    #                   <code>profile</code>. The <code>aws.cognito.signin.user.admin</code> scope
    #               authorizes user self-service operations. Custom scopes with resource servers authorize
    #               access to external APIs.</p>
    #   @return [Array<String>]
    # @!attribute allowed_o_auth_flows_user_pool_client
    #   <p>Set to <code>true</code> to use OAuth 2.0 authorization server features in your app client.</p>
    #            <p>This parameter must have a value of <code>true</code> before you can configure 
    #   the following features in your app client.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CallBackURLs</code>: Callback URLs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LogoutURLs</code>: Sign-out redirect URLs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllowedOAuthScopes</code>: OAuth 2.0 scopes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllowedOAuthFlows</code>: Support for authorization code, implicit, and client credentials OAuth 2.0 grants.</p>
    #               </li>
    #            </ul>
    #            <p>To use authorization server features, configure one of these features in the Amazon Cognito console or set 
    #   <code>AllowedOAuthFlowsUserPoolClient</code> to <code>true</code> in a <code>CreateUserPoolClient</code> or 
    #   <code>UpdateUserPoolClient</code> API request. If you don't set a value for 
    #   <code>AllowedOAuthFlowsUserPoolClient</code> in a request with the CLI or SDKs, it defaults 
    #   to <code>false</code>. When <code>false</code>, only SDK-based API sign-in is permitted.</p>
    #   @return [Boolean]
    # @!attribute analytics_configuration
    #   <p>The user pool analytics configuration for collecting metrics and sending them to your
    #               Amazon Pinpoint campaign.</p>
    #            <p>In Amazon Web Services Regions where Amazon Pinpoint isn't available, user pools might not have access to
    #               analytics or might be configurable with campaigns in the US East (N. Virginia) Region.
    #               For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-pinpoint-integration.html">Using Amazon Pinpoint analytics</a>.</p>
    #   @return [Types::AnalyticsConfigurationType]
    # @!attribute prevent_user_existence_errors
    #   <p>When <code>ENABLED</code>, suppresses messages that might indicate a valid user exists 
    #               when someone attempts sign-in. This parameters sets your preference for the errors and 
    #               responses that you want Amazon Cognito APIs to return during authentication, account
    #               confirmation, and password recovery when the user doesn't exist in the user pool. When
    #               set to <code>ENABLED</code> and the user doesn't exist, authentication returns an error
    #               indicating either the username or password was incorrect. Account confirmation and
    #               password recovery return a response indicating a code was sent to a simulated
    #               destination. When set to <code>LEGACY</code>, those APIs return a
    #               <code>UserNotFoundException</code> exception if the user doesn't exist in the user
    #               pool.</p>
    #            <p>Defaults to <code>LEGACY</code>.</p>
    #   @return [String]
    # @!attribute enable_token_revocation
    #   <p>Activates or deactivates <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/token-revocation.html">token
    #                   revocation</a> in the target app client.</p>
    #            <p>If you don't include this parameter, token revocation is automatically activated for
    #               the new user pool client.</p>
    #   @return [Boolean]
    # @!attribute enable_propagate_additional_user_context_data
    #   <p>When <code>true</code>, your application can include additional
    #                   <code>UserContextData</code> in authentication requests. This data includes the IP
    #               address, and contributes to analysis by threat protection features. For more information
    #               about propagation of user context data, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-device-fingerprint">Adding session data to API requests</a>. If you don’t include this parameter,
    #               you can't send the source IP address to Amazon Cognito threat protection features. You can only
    #               activate <code>EnablePropagateAdditionalUserContextData</code> in an app client that has
    #               a client secret.</p>
    #   @return [Boolean]
    # @!attribute auth_session_validity
    #   <p>Amazon Cognito creates a session token for each API request in an authentication flow. <code>AuthSessionValidity</code> is the duration, 
    #   in minutes, of that session token. Your user pool native user must respond to each authentication challenge before the session expires.</p>
    #   @return [Integer]
    # @!attribute refresh_token_rotation
    #   <p>The configuration of your app client for refresh token rotation. When enabled, your
    #               app client issues new ID, access, and refresh tokens when users renew their sessions
    #               with refresh tokens. When disabled, token refresh issues only ID and access
    #               tokens.</p>
    #   @return [Types::RefreshTokenRotationType]
    class CreateUserPoolClientRequest < Struct.new(
      :user_pool_id,
      :client_name,
      :generate_secret,
      :refresh_token_validity,
      :access_token_validity,
      :id_token_validity,
      :token_validity_units,
      :read_attributes,
      :write_attributes,
      :explicit_auth_flows,
      :supported_identity_providers,
      :callback_ur_ls,
      :logout_ur_ls,
      :default_redirect_uri,
      :allowed_o_auth_flows,
      :allowed_o_auth_scopes,
      :allowed_o_auth_flows_user_pool_client,
      :analytics_configuration,
      :prevent_user_existence_errors,
      :enable_token_revocation,
      :enable_propagate_additional_user_context_data,
      :auth_session_validity,
      :refresh_token_rotation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server to create a user pool client.</p>
    # @!attribute user_pool_client
    #   <p>The details of the new app client.</p>
    #   @return [Types::UserPoolClientType]
    class CreateUserPoolClientResponse < Struct.new(
      :user_pool_client,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The domain string. For custom domains, this is the fully-qualified domain name, such
    #               as <code>auth.example.com</code>. For prefix domains, this is the prefix alone, such as
    #                   <code>myprefix</code>. A prefix value of <code>myprefix</code> for a user pool in
    #               the <code>us-east-1</code> Region results in a domain of
    #                   <code>myprefix.auth.us-east-1.amazoncognito.com</code>.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to add a domain.</p>
    #   @return [String]
    # @!attribute managed_login_version
    #   <p>The version of managed login branding that you want to apply to your domain. A value
    #               of <code>1</code> indicates hosted UI (classic) and a version of <code>2</code>
    #               indicates managed login.</p>
    #            <p>Managed login requires that your user pool be configured for any <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html">feature plan</a> other than <code>Lite</code>.</p>
    #   @return [Integer]
    # @!attribute custom_domain_config
    #   <p>The configuration for a custom domain. Configures your domain with an Certificate Manager
    #               certificate in the <code>us-east-1</code> Region.</p>
    #            <p>Provide this parameter only if you want to use a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html">custom domain</a> for your user pool. Otherwise, you can
    #               omit this parameter and use a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain-prefix.html">prefix domain</a> instead.</p>
    #            <p>When you create a custom domain, the passkey RP ID defaults to the custom domain. If
    #               you had a prefix domain active, this will cause passkey integration for your prefix
    #               domain to stop working due to a mismatch in RP ID. To keep the prefix domain passkey
    #               integration working, you can explicitly set RP ID to the prefix domain.</p>
    #   @return [Types::CustomDomainConfigType]
    class CreateUserPoolDomainRequest < Struct.new(
      :domain,
      :user_pool_id,
      :managed_login_version,
      :custom_domain_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_login_version
    #   <p>The version of managed login branding applied your domain. A value of <code>1</code>
    #               indicates hosted UI (classic) and a version of <code>2</code> indicates managed
    #               login.</p>
    #   @return [Integer]
    # @!attribute cloud_front_domain
    #   <p>The fully-qualified domain name (FQDN) of the Amazon CloudFront distribution that hosts your
    #               managed login or classic hosted UI pages. Your domain-name authority must have an alias
    #               record that points requests for your custom domain to this FQDN. Amazon Cognito returns this
    #               value if you set a custom domain with <code>CustomDomainConfig</code>. If you set an
    #               Amazon Cognito prefix domain, this parameter returns null.</p>
    #   @return [String]
    class CreateUserPoolDomainResponse < Struct.new(
      :managed_login_version,
      :cloud_front_domain,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to create a user pool.</p>
    # @!attribute pool_name
    #   <p>A friendly name for your user pool.</p>
    #   @return [String]
    # @!attribute policies
    #   <p>The password policy and sign-in policy in the user pool. The password policy sets
    #               options like password complexity requirements and password history. The sign-in policy
    #               sets the options available to applications in <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice">choice-based authentication</a>.</p>
    #   @return [Types::UserPoolPolicyType]
    # @!attribute deletion_protection
    #   <p>When active, <code>DeletionProtection</code> prevents accidental deletion of your user
    #   pool. Before you can delete a user pool that you have protected against deletion, you
    #   must deactivate this feature.</p>
    #            <p>When you try to delete a protected user pool in a <code>DeleteUserPool</code> API request, 
    #   Amazon Cognito returns an <code>InvalidParameterException</code> error. To delete a protected user pool, 
    #   send a new <code>DeleteUserPool</code> request after you deactivate deletion protection in an 
    #   <code>UpdateUserPool</code> API request.</p>
    #   @return [String]
    # @!attribute lambda_config
    #   <p>A collection of user pool Lambda triggers. Amazon Cognito invokes triggers at several possible
    #               stages of authentication operations. Triggers can modify the outcome of the operations
    #               that invoked them.</p>
    #   @return [Types::LambdaConfigType]
    # @!attribute auto_verified_attributes
    #   <p>The attributes that you want your user pool to automatically verify. For more
    #               information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#allowing-users-to-sign-up-and-confirm-themselves">Verifying contact information at sign-up</a>.</p>
    #   @return [Array<String>]
    # @!attribute alias_attributes
    #   <p>Attributes supported as an alias for this user pool. For more information about alias
    #               attributes, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases">Customizing sign-in attributes</a>.</p>
    #   @return [Array<String>]
    # @!attribute username_attributes
    #   <p>Specifies whether a user can use an email address or phone number as a username when
    #               they sign up. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases">Customizing sign-in attributes</a>.</p>
    #   @return [Array<String>]
    # @!attribute sms_verification_message
    #   <p>This parameter is no longer used.</p>
    #   @return [String]
    # @!attribute email_verification_message
    #   <p>This parameter is no longer used.</p>
    #   @return [String]
    # @!attribute email_verification_subject
    #   <p>This parameter is no longer used.</p>
    #   @return [String]
    # @!attribute verification_message_template
    #   <p>The template for the verification message that your user pool delivers to users who
    #               set an email address or phone number attribute.</p>
    #            <p>Set the email message type that corresponds to your <code>DefaultEmailOption</code>
    #               selection. For <code>CONFIRM_WITH_LINK</code>, specify an
    #                   <code>EmailMessageByLink</code> and leave <code>EmailMessage</code> blank. For
    #                   <code>CONFIRM_WITH_CODE</code>, specify an <code>EmailMessage</code> and leave
    #                   <code>EmailMessageByLink</code> blank. When you supply both parameters with either
    #               choice, Amazon Cognito returns an error.</p>
    #   @return [Types::VerificationMessageTemplateType]
    # @!attribute sms_authentication_message
    #   <p>The contents of the SMS message that your user pool sends to users in SMS OTP and MFA
    #               authentication.</p>
    #   @return [String]
    # @!attribute mfa_configuration
    #   <p>Sets multi-factor authentication (MFA) to be on, off, or optional. When
    #                   <code>ON</code>, all users must set up MFA before they can sign in. When
    #                   <code>OPTIONAL</code>, your application must make a client-side determination of
    #               whether a user wants to register an MFA device. For user pools with adaptive
    #               authentication with threat protection, choose <code>OPTIONAL</code>.</p>
    #            <p>When <code>MfaConfiguration</code> is <code>OPTIONAL</code>, managed login
    #               doesn't automatically prompt users to set up MFA. Amazon Cognito generates MFA prompts in
    #               API responses and in managed login for users who have chosen and configured a preferred
    #               MFA factor.</p>
    #   @return [String]
    # @!attribute user_attribute_update_settings
    #   <p>The settings for updates to user attributes. These settings include the property <code>AttributesRequireVerificationBeforeUpdate</code>,
    #   a user-pool setting that tells Amazon Cognito how to handle changes to the value of your users' email address and phone number attributes. For
    #   more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates">
    #   Verifying updates to email addresses and phone numbers</a>.</p>
    #   @return [Types::UserAttributeUpdateSettingsType]
    # @!attribute device_configuration
    #   <p>The device-remembering configuration for a user pool. Device remembering or device
    #               tracking is a "Remember me on this device" option for user pools that perform
    #               authentication with the device key of a trusted device in the back end, instead of a
    #               user-provided MFA code. For more information about device authentication, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>. A null value indicates that
    #               you have deactivated device remembering in your user pool.</p>
    #            <note>
    #               <p>When you provide a value for any <code>DeviceConfiguration</code> field, you
    #                   activate the Amazon Cognito device-remembering feature. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with devices</a>.</p>
    #            </note>
    #   @return [Types::DeviceConfigurationType]
    # @!attribute email_configuration
    #   <p>The email configuration of your user pool. The email configuration type sets your
    #               preferred sending method, Amazon Web Services Region, and sender for messages from your user
    #               pool.</p>
    #   @return [Types::EmailConfigurationType]
    # @!attribute sms_configuration
    #   <p>The settings for your Amazon Cognito user pool to send SMS messages with Amazon Simple Notification Service. To send SMS
    #               messages with Amazon SNS in the Amazon Web Services Region that you want, the Amazon Cognito user pool uses an
    #               Identity and Access Management (IAM) role in your Amazon Web Services account. For more information see
    #                   <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html">SMS message settings</a>.</p>
    #   @return [Types::SmsConfigurationType]
    # @!attribute user_pool_tags
    #   <p>The tag keys and values to assign to the user pool. A tag is a label that you can use
    #               to categorize and manage user pools in different ways, such as by purpose, owner,
    #               environment, or other criteria.</p>
    #   @return [Hash<String, String>]
    # @!attribute admin_create_user_config
    #   <p>The configuration for administrative creation of users. Includes the template for the
    #               invitation message for new users, the duration of temporary passwords, and permitting
    #               self-service sign-up.</p>
    #   @return [Types::AdminCreateUserConfigType]
    # @!attribute schema
    #   <p>An array of attributes for the new user pool. You can add custom attributes and modify
    #               the properties of default attributes. The specifications in this parameter set the
    #               required attributes in your user pool. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html">Working with user attributes</a>.</p>
    #   @return [Array<Types::SchemaAttributeType>]
    # @!attribute user_pool_add_ons
    #   <p>Contains settings for activation of threat protection, including the operating 
    #   mode and additional authentication types. To log user security information but take 
    #   no action, set to <code>AUDIT</code>. To configure automatic security responses to 
    #   potentially unwanted traffic to your user pool, set to <code>ENFORCED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html">Adding advanced security to a user pool</a>. To activate this setting, your user pool must be on the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html">
    #                        Plus tier</a>.</p>
    #   @return [Types::UserPoolAddOnsType]
    # @!attribute username_configuration
    #   <p>Sets the case sensitivity option for sign-in usernames. When
    #                   <code>CaseSensitive</code> is <code>false</code> (case insensitive), users can sign
    #               in with any combination of capital and lowercase letters. For example,
    #                   <code>username</code>, <code>USERNAME</code>, or <code>UserName</code>, or for
    #               email, <code>email@example.com</code> or <code>EMaiL@eXamplE.Com</code>. For most use
    #               cases, set case sensitivity to <code>false</code> as a best practice. When usernames and
    #               email addresses are case insensitive, Amazon Cognito treats any variation in case as the same
    #               user, and prevents a case variation from being assigned to the same attribute for a
    #               different user.</p>
    #            <p>When <code>CaseSensitive</code> is <code>true</code> (case sensitive), Amazon Cognito
    #               interprets <code>USERNAME</code> and <code>UserName</code> as distinct users.</p>
    #            <p>This configuration is immutable after you set it.</p>
    #   @return [Types::UsernameConfigurationType]
    # @!attribute account_recovery_setting
    #   <p>The available verified method a user can use to recover their password when they call
    #                   <code>ForgotPassword</code>. You can use this setting to define a preferred method
    #               when a user has more than one method available. With this setting, SMS doesn't qualify
    #               for a valid password recovery mechanism if the user also has SMS multi-factor
    #               authentication (MFA) activated. Email MFA is also disqualifying for account recovery
    #               with email. In the absence of this setting, Amazon Cognito uses the legacy behavior to determine
    #               the recovery method where SMS is preferred over email.</p>
    #            <p>As a best practice, configure both <code>verified_email</code> and
    #                   <code>verified_phone_number</code>, with one having a higher priority than the
    #               other.</p>
    #   @return [Types::AccountRecoverySettingType]
    # @!attribute user_pool_tier
    #   <p>The user pool <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html">feature plan</a>, or tier. This parameter determines the
    #               eligibility of the user pool for features like managed login, access-token
    #               customization, and threat protection. Defaults to <code>ESSENTIALS</code>.</p>
    #   @return [String]
    class CreateUserPoolRequest < Struct.new(
      :pool_name,
      :policies,
      :deletion_protection,
      :lambda_config,
      :auto_verified_attributes,
      :alias_attributes,
      :username_attributes,
      :sms_verification_message,
      :email_verification_message,
      :email_verification_subject,
      :verification_message_template,
      :sms_authentication_message,
      :mfa_configuration,
      :user_attribute_update_settings,
      :device_configuration,
      :email_configuration,
      :sms_configuration,
      :user_pool_tags,
      :admin_create_user_config,
      :schema,
      :user_pool_add_ons,
      :username_configuration,
      :account_recovery_setting,
      :user_pool_tier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server for the request to create a user pool.</p>
    # @!attribute user_pool
    #   <p>The details of the created user pool.</p>
    #   @return [Types::UserPoolType]
    class CreateUserPoolResponse < Struct.new(
      :user_pool,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a hosted UI custom domain.</p>
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of an Certificate Manager SSL certificate. You use
    #               this certificate for the subdomain of your custom domain.</p>
    #   @return [String]
    class CustomDomainConfigType < Struct.new(
      :certificate_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The properties of a custom email sender Lambda trigger.</p>
    # @!attribute lambda_version
    #   <p>The user pool trigger version of the request that Amazon Cognito sends to your Lambda function. Higher-numbered versions add fields that support new features.</p>
    #            <p>You must use a <code>LambdaVersion</code> of <code>V1_0</code> with a custom sender
    #               function.</p>
    #   @return [String]
    # @!attribute lambda_arn
    #   <p>The Amazon Resource Name (ARN) of the function that you want to assign to your Lambda trigger.</p>
    #   @return [String]
    class CustomEmailLambdaVersionConfigType < Struct.new(
      :lambda_version,
      :lambda_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The properties of a custom SMS sender Lambda trigger.</p>
    # @!attribute lambda_version
    #   <p>The user pool trigger version of the request that Amazon Cognito sends to your Lambda function. Higher-numbered versions add fields that support new features.</p>
    #            <p>You must use a <code>LambdaVersion</code> of <code>V1_0</code> with a custom sender
    #               function.</p>
    #   @return [String]
    # @!attribute lambda_arn
    #   <p>The Amazon Resource Name (ARN) of the function that you want to assign to your Lambda trigger.</p>
    #   @return [String]
    class CustomSMSLambdaVersionConfigType < Struct.new(
      :lambda_version,
      :lambda_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>The name of the group that you want to delete.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to delete the group.</p>
    #   @return [String]
    class DeleteGroupRequest < Struct.new(
      :group_name,
      :user_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to delete the identity provider.</p>
    #   @return [String]
    # @!attribute provider_name
    #   <p>The name of the IdP that you want to delete.</p>
    #   @return [String]
    class DeleteIdentityProviderRequest < Struct.new(
      :user_pool_id,
      :provider_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_login_branding_id
    #   <p>The ID of the managed login branding style that you want to delete.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the managed login branding style that you want
    #               to delete.</p>
    #   @return [String]
    class DeleteManagedLoginBrandingRequest < Struct.new(
      :managed_login_branding_id,
      :user_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to delete the resource server.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the resource server that you want to delete.</p>
    #   @return [String]
    class DeleteResourceServerRequest < Struct.new(
      :user_pool_id,
      :identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute terms_id
    #   <p>The ID of the terms documents that you want to delete.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the terms documents that you want to
    #               delete.</p>
    #   @return [String]
    class DeleteTermsRequest < Struct.new(
      :terms_id,
      :user_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to delete user attributes.</p>
    # @!attribute user_attribute_names
    #   <p>An array of strings representing the user attribute names you want to delete.</p>
    #            <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name, for example <code>custom:department</code>.</p>
    #   @return [Array<String>]
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    class DeleteUserAttributesRequest < Struct.new(
      :user_attribute_names,
      :access_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server to delete user attributes.</p>
    class DeleteUserAttributesResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to delete a user pool client.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to delete the client.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The ID of the user pool app client that you want to delete.</p>
    #   @return [String]
    class DeleteUserPoolClientRequest < Struct.new(
      :user_pool_id,
      :client_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The domain that you want to delete. For custom domains, this is the fully-qualified
    #               domain name like <code>auth.example.com</code>. For Amazon Cognito prefix domains, this is the
    #               prefix alone, like <code>myprefix</code>.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to delete the domain.</p>
    #   @return [String]
    class DeleteUserPoolDomainRequest < Struct.new(
      :domain,
      :user_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteUserPoolDomainResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to delete a user pool.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that you want to delete.</p>
    #   @return [String]
    class DeleteUserPoolRequest < Struct.new(
      :user_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to delete a user.</p>
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    class DeleteUserRequest < Struct.new(
      :access_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    # @!attribute credential_id
    #   <p>The unique identifier of the passkey that you want to delete.</p>
    #   @return [String]
    class DeleteWebAuthnCredentialRequest < Struct.new(
      :access_token,
      :credential_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteWebAuthnCredentialResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool that has the IdP that you want to describe..</p>
    #   @return [String]
    # @!attribute provider_name
    #   <p>The name of the IdP that you want to describe.</p>
    #   @return [String]
    class DescribeIdentityProviderRequest < Struct.new(
      :user_pool_id,
      :provider_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider
    #   <p>The details of the requested IdP.</p>
    #   @return [Types::IdentityProviderType]
    class DescribeIdentityProviderResponse < Struct.new(
      :identity_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the app client where you want more information
    #               about the managed login branding style.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The app client that's assigned to the branding style that you want more information
    #               about.</p>
    #   @return [String]
    # @!attribute return_merged_resources
    #   <p>When <code>true</code>, returns values for branding options that are unchanged from
    #               Amazon Cognito defaults. When <code>false</code> or when you omit this parameter, returns only
    #               values that you customized in your branding style.</p>
    #   @return [Boolean]
    class DescribeManagedLoginBrandingByClientRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :return_merged_resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_login_branding
    #   <p>The details of the requested branding style.</p>
    #   @return [Types::ManagedLoginBrandingType]
    class DescribeManagedLoginBrandingByClientResponse < Struct.new(
      :managed_login_branding,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the managed login branding style that you want
    #               to get information about.</p>
    #   @return [String]
    # @!attribute managed_login_branding_id
    #   <p>The ID of the managed login branding style that you want to get more information
    #               about.</p>
    #   @return [String]
    # @!attribute return_merged_resources
    #   <p>When <code>true</code>, returns values for branding options that are unchanged from
    #               Amazon Cognito defaults. When <code>false</code> or when you omit this parameter, returns only
    #               values that you customized in your branding style.</p>
    #   @return [Boolean]
    class DescribeManagedLoginBrandingRequest < Struct.new(
      :user_pool_id,
      :managed_login_branding_id,
      :return_merged_resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_login_branding
    #   <p>The details of the requested branding style.</p>
    #   @return [Types::ManagedLoginBrandingType]
    class DescribeManagedLoginBrandingResponse < Struct.new(
      :managed_login_branding,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool that hosts the resource server.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>A unique resource server identifier for the resource server. The identifier can be an
    #               API friendly name like <code>solar-system-data</code>. You can also set an API URL like
    #                   <code>https://solar-system-data-api.example.com</code> as your identifier.</p>
    #            <p>Amazon Cognito represents scopes in the access token in the format
    #                   <code>$resource-server-identifier/$scope</code>. Longer scope-identifier strings
    #               increase the size of your access tokens.</p>
    #   @return [String]
    class DescribeResourceServerRequest < Struct.new(
      :user_pool_id,
      :identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_server
    #   <p>The details of the requested resource server.</p>
    #   @return [Types::ResourceServerType]
    class DescribeResourceServerResponse < Struct.new(
      :resource_server,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool with the risk configuration that you want to inspect. You can
    #               apply default risk configuration at the user pool level and further customize it from
    #               user pool defaults at the app-client level. Specify <code>ClientId</code> to inspect
    #               client-level configuration, or <code>UserPoolId</code> to inspect pool-level
    #               configuration.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The ID of the app client with the risk configuration that you want to inspect. You can
    #               apply default risk configuration at the user pool level and further customize it from
    #               user pool defaults at the app-client level. Specify <code>ClientId</code> to inspect
    #               client-level configuration, or <code>UserPoolId</code> to inspect pool-level
    #               configuration.</p>
    #   @return [String]
    class DescribeRiskConfigurationRequest < Struct.new(
      :user_pool_id,
      :client_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute risk_configuration
    #   <p>The details of the requested risk configuration.</p>
    #   @return [Types::RiskConfigurationType]
    class DescribeRiskConfigurationResponse < Struct.new(
      :risk_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute terms_id
    #   <p>The ID of the terms documents that you want to describe.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the terms documents that you want to
    #               describe.</p>
    #   @return [String]
    class DescribeTermsRequest < Struct.new(
      :terms_id,
      :user_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute terms
    #   <p>A summary of the requested terms documents. Includes a unique identifier for later
    #               changes to the terms documents.</p>
    #   @return [Types::TermsType]
    class DescribeTermsResponse < Struct.new(
      :terms,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to describe the user import job.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that's associated with the import job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The Id of the user import job that you want to describe.</p>
    #   @return [String]
    class DescribeUserImportJobRequest < Struct.new(
      :user_pool_id,
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server to the request to describe the user import
    #             job.</p>
    # @!attribute user_import_job
    #   <p>The details of the user import job. Includes logging destination, status, and the Amazon S3
    #               pre-signed URL for CSV upload.</p>
    #   @return [Types::UserImportJobType]
    class DescribeUserImportJobResponse < Struct.new(
      :user_import_job,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to describe a user pool client.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the app client you want to describe.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The ID of the app client that you want to describe.</p>
    #   @return [String]
    class DescribeUserPoolClientRequest < Struct.new(
      :user_pool_id,
      :client_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server from a request to describe the user pool
    #             client.</p>
    # @!attribute user_pool_client
    #   <p>The details of the request app client.</p>
    #   @return [Types::UserPoolClientType]
    class DescribeUserPoolClientResponse < Struct.new(
      :user_pool_client,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The domain that you want to describe. For custom domains, this is the fully-qualified
    #               domain name, such as <code>auth.example.com</code>. For Amazon Cognito prefix domains, this is
    #               the prefix alone, such as <code>auth</code>.</p>
    #   @return [String]
    class DescribeUserPoolDomainRequest < Struct.new(
      :domain,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_description
    #   <p>The details of the requested user pool domain.</p>
    #   @return [Types::DomainDescriptionType]
    class DescribeUserPoolDomainResponse < Struct.new(
      :domain_description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to describe the user pool.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool you want to describe.</p>
    #   @return [String]
    class DescribeUserPoolRequest < Struct.new(
      :user_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response to describe the user pool.</p>
    # @!attribute user_pool
    #   <p>The details of the requested user pool.</p>
    #   @return [Types::UserPoolType]
    class DescribeUserPoolResponse < Struct.new(
      :user_pool,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The device-remembering configuration for a user pool.</p>
    #          <note>
    #             <p>When you provide a value for any property of <code>DeviceConfiguration</code>, you
    #                 activate the device remembering for the user pool.</p>
    #          </note>
    # @!attribute challenge_required_on_new_device
    #   <p>When true, a remembered device can sign in with device authentication instead of SMS
    #               and time-based one-time password (TOTP) factors for multi-factor authentication
    #               (MFA).</p>
    #            <note>
    #               <p>Whether or not <code>ChallengeRequiredOnNewDevice</code> is true, users who sign
    #                   in with devices that have not been confirmed or remembered must still provide a
    #                   second factor in a user pool that requires MFA.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute device_only_remembered_on_user_prompt
    #   <p>When true, Amazon Cognito doesn't automatically remember a user's device when your app sends a
    #                   <code>ConfirmDevice</code> API request. In your app, create a prompt for your user
    #               to choose whether they want to remember their device. Return the user's choice in an
    #                   <code>UpdateDeviceStatus</code> API request.</p>
    #            <p>When <code>DeviceOnlyRememberedOnUserPrompt</code> is <code>false</code>, Amazon
    #               Cognito immediately remembers devices that you register in a <code>ConfirmDevice</code>
    #               API request.</p>
    #   @return [Boolean]
    class DeviceConfigurationType < Struct.new(
      :challenge_required_on_new_device,
      :device_only_remembered_on_user_prompt,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:challenge_required_on_new_device] = false unless options.key?(:challenge_required_on_new_device)
        options[:device_only_remembered_on_user_prompt] = false unless options.key?(:device_only_remembered_on_user_prompt)
        super
      end
    end

    # <p>This exception is thrown when a user attempts to confirm a device with a device key
    #             that already exists.</p>
    # @!attribute message
    #   @return [String]
    class DeviceKeyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A Secure Remote Password (SRP) value that your application generates when you register
    #             a user's device. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-getting-a-device-key">Getting a device key</a>.</p>
    # @!attribute password_verifier
    #   <p>A password verifier for a user's device. Used in SRP authentication.</p>
    #   @return [String]
    # @!attribute salt
    #   <p>The salt that you want to use in SRP authentication with the user's device.</p>
    #   @return [String]
    class DeviceSecretVerifierConfigType < Struct.new(
      :password_verifier,
      :salt,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a user's device that they've registered for device SRP
    #             authentication in your application. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>.</p>
    # @!attribute device_key
    #   <p>The device key, for example
    #                   <code>us-west-2_EXAMPLE-a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code>.</p>
    #   @return [String]
    # @!attribute device_attributes
    #   <p>Metadata about a user's device, like name and last-access source IP.</p>
    #   @return [Array<Types::AttributeType>]
    # @!attribute device_create_date
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute device_last_modified_date
    #   <p>The date and time when the item was modified. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute device_last_authenticated_date
    #   <p>The date when the user last signed in with the device.</p>
    #   @return [Time]
    class DeviceType < Struct.new(
      :device_key,
      :device_attributes,
      :device_create_date,
      :device_last_modified_date,
      :device_last_authenticated_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A container for information about the user pool domain associated with the hosted UI
    #             and OAuth endpoints.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that the domain is attached to.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account that you created the user pool in.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain string. For custom domains, this is the fully-qualified domain name, such
    #               as <code>auth.example.com</code>. For Amazon Cognito prefix domains, this is the prefix alone,
    #               such as <code>auth</code>.</p>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p>The Amazon S3 bucket where the static files for this domain are stored.</p>
    #   @return [String]
    # @!attribute cloud_front_distribution
    #   <p>The Amazon CloudFront endpoint that hosts your custom domain.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The app version.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The domain status.</p>
    #   @return [String]
    # @!attribute custom_domain_config
    #   <p>The configuration for a custom domain that hosts the sign-up and sign-in webpages for
    #               your application.</p>
    #   @return [Types::CustomDomainConfigType]
    # @!attribute managed_login_version
    #   <p>The version of managed login branding that you want to apply to your domain. A value
    #               of <code>1</code> indicates hosted UI (classic) branding and a version of <code>2</code>
    #               indicates managed login branding.</p>
    #            <p>Managed login requires that your user pool be configured for any <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html">feature plan</a> other than <code>Lite</code>.</p>
    #   @return [Integer]
    class DomainDescriptionType < Struct.new(
      :user_pool_id,
      :aws_account_id,
      :domain,
      :s3_bucket,
      :cloud_front_distribution,
      :version,
      :status,
      :custom_domain_config,
      :managed_login_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the provider is already supported by the user
    #             pool.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateProviderException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The email configuration of your user pool. The email configuration type sets your
    #             preferred sending method, Amazon Web Services Region, and sender for messages from your user
    #             pool.</p>
    #          <note>
    #             <p>Amazon Cognito can send email messages with Amazon Simple Email Service resources in the Amazon Web Services Region where
    #                 you created your user pool, and in alternate Regions in some cases. For more
    #                 information on the supported Regions, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-email.html">Email settings for Amazon Cognito user pools</a>.</p>
    #          </note>
    # @!attribute source_arn
    #   <p>The ARN of a verified email address or an address from a verified domain in Amazon SES. You
    #               can set a <code>SourceArn</code> email from a verified domain only with an API request.
    #               You can set a verified email address, but not an address in a verified domain, in the
    #               Amazon Cognito console. Amazon Cognito uses the email address that you provide in one of the following
    #               ways, depending on the value that you specify for the <code>EmailSendingAccount</code>
    #               parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>If you specify <code>COGNITO_DEFAULT</code>, Amazon Cognito uses this address as the
    #                       custom FROM address when it emails your users using its built-in email
    #                       account.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <code>DEVELOPER</code>, Amazon Cognito emails your users with this
    #                       address by calling Amazon SES on your behalf.</p>
    #               </li>
    #            </ul>
    #            <p>The Region value of the <code>SourceArn</code> parameter must indicate a supported
    #               Amazon Web Services Region of your user pool. Typically, the Region in the <code>SourceArn</code> and
    #               the user pool Region are the same. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-email.html#user-pool-email-developer-region-mapping">Amazon SES email configuration regions</a> in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html">Amazon Cognito Developer
    #                   Guide</a>.</p>
    #   @return [String]
    # @!attribute reply_to_email_address
    #   <p>The destination to which the receiver of the email should reply.</p>
    #   @return [String]
    # @!attribute email_sending_account
    #   <p>Specifies whether Amazon Cognito uses its built-in functionality to send your users email
    #               messages, or uses your Amazon Simple Email Service email configuration. Specify one of the following
    #               values:</p>
    #            <dl>
    #               <dt>COGNITO_DEFAULT</dt>
    #               <dd>
    #                  <p>When Amazon Cognito emails your users, it uses its built-in email functionality.
    #                           When you use the default option, Amazon Cognito allows only a limited number of
    #                           emails each day for your user pool. For typical production environments, the
    #                           default email limit is less than the required delivery volume. To achieve a
    #                           higher delivery volume, specify DEVELOPER to use your Amazon SES email
    #                           configuration.</p>
    #                  <p>To look up the email delivery limit for the default option, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/limits.html">Limits</a> in the <i>Amazon Cognito Developer
    #                           Guide</i>.</p>
    #                  <p>The default FROM address is <code>no-reply@verificationemail.com</code>.
    #                           To customize the FROM address, provide the Amazon Resource Name (ARN) of an
    #                           Amazon SES verified email address for the <code>SourceArn</code>
    #                           parameter.</p>
    #               </dd>
    #               <dt>DEVELOPER</dt>
    #               <dd>
    #                  <p>When Amazon Cognito emails your users, it uses your Amazon SES configuration. Amazon Cognito
    #                           calls Amazon SES on your behalf to send email from your verified email address.
    #                           When you use this option, the email delivery limits are the same limits that
    #                           apply to your Amazon SES verified email address in your Amazon Web Services account.</p>
    #                  <p>If you use this option, provide the ARN of an Amazon SES verified email address
    #                           for the <code>SourceArn</code> parameter.</p>
    #                  <p>Before Amazon Cognito can email your users, it requires additional permissions to
    #                           call Amazon SES on your behalf. When you update your user pool with this option,
    #                           Amazon Cognito creates a <i>service-linked role</i>, which is a type of
    #                           role in your Amazon Web Services account. This role contains the permissions
    #                           that allow you to access Amazon SES and send email messages from your email
    #                           address. For more information about the service-linked role that Amazon Cognito
    #                           creates, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/using-service-linked-roles.html">Using Service-Linked Roles for Amazon Cognito</a> in the
    #                               <i>Amazon Cognito Developer Guide</i>.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute from
    #   <p>Either the sender’s email address or the sender’s name with their email address. For
    #               example, <code>testuser@example.com</code> or <code>Test User
    #                   <testuser@example.com></code>. This address appears before the body of the
    #               email.</p>
    #   @return [String]
    # @!attribute configuration_set
    #   <p>The set of configuration rules that can be applied to emails sent using Amazon Simple Email Service. A
    #               configuration set is applied to an email by including a reference to the configuration
    #               set in the headers of the email. Once applied, all of the rules in that configuration
    #               set are applied to the email. Configuration sets can be used to apply the following
    #               types of rules to emails: </p>
    #            <dl>
    #               <dt>Event publishing</dt>
    #               <dd>
    #                  <p>Amazon Simple Email Service can track the number of send, delivery, open, click, bounce, and
    #                           complaint events for each email sent. Use event publishing to send
    #                           information about these events to other Amazon Web Services services such as and
    #                           Amazon CloudWatch</p>
    #               </dd>
    #               <dt>IP pool management</dt>
    #               <dd>
    #                  <p>When leasing dedicated IP addresses with Amazon Simple Email Service, you can create groups
    #                           of IP addresses, called dedicated IP pools. You can then associate the
    #                           dedicated IP pools with configuration sets.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class EmailConfigurationType < Struct.new(
      :source_arn,
      :reply_to_email_address,
      :email_sending_account,
      :from,
      :configuration_set,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Sets or shows configuration for user pool email message MFA and sign-in with one-time
    #             passwords (OTPs). Includes the subject and body of the email message template for
    #             sign-in and MFA messages. To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                      Essentials tier</a> or higher.</p>
    # @!attribute message
    #   <p>The template for the email messages that your user pool sends to users with codes for
    #               MFA and sign-in with email OTPs. The message must contain the <code>{####}</code>
    #               placeholder. In the message, Amazon Cognito replaces this placeholder with the code. If you
    #               don't provide this parameter, Amazon Cognito sends messages in the default format.</p>
    #   @return [String]
    # @!attribute subject
    #   <p>The subject of the email messages that your user pool sends to users with codes for
    #               MFA and email OTP sign-in.</p>
    #   @return [String]
    class EmailMfaConfigType < Struct.new(
      :message,
      :subject,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>User preferences for multi-factor authentication with email messages. Activates or
    #             deactivates email MFA and sets it as the preferred MFA method when multiple methods are
    #             available. To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                      Essentials tier</a> or higher.</p>
    # @!attribute enabled
    #   <p>Specifies whether email message MFA is active for a user. When the value of this
    #               parameter is <code>Enabled</code>, the user will be prompted for MFA during all sign-in
    #               attempts, unless device tracking is turned on and the device has been trusted.</p>
    #   @return [Boolean]
    # @!attribute preferred_mfa
    #   <p>Specifies whether email message MFA is the user's preferred method.</p>
    #   @return [Boolean]
    class EmailMfaSettingsType < Struct.new(
      :enabled,
      :preferred_mfa,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        options[:preferred_mfa] = false unless options.key?(:preferred_mfa)
        super
      end
    end

    # <p>This exception is thrown when there is a code mismatch and the service fails to
    #             configure the software token TOTP multi-factor authentication (MFA).</p>
    # @!attribute message
    #   @return [String]
    class EnableSoftwareTokenMFAException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The context data that your application submitted in an authentication request with
    #             threat protection, as displayed in an <code>AdminListUserAuthEvents</code>
    #             response.</p>
    # @!attribute ip_address
    #   <p>The source IP address of your user's device.</p>
    #   @return [String]
    # @!attribute device_name
    #   <p>The user's device name.</p>
    #   @return [String]
    # @!attribute timezone
    #   <p>The user's time zone.</p>
    #   @return [String]
    # @!attribute city
    #   <p>The user's city.</p>
    #   @return [String]
    # @!attribute country
    #   <p>The user's country.</p>
    #   @return [String]
    class EventContextDataType < Struct.new(
      :ip_address,
      :device_name,
      :timezone,
      :city,
      :country,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The feedback that your application submitted to a threat protection event log, as
    #             displayed in an <code>AdminListUserAuthEvents</code> response.</p>
    # @!attribute feedback_value
    #   <p>Your feedback to the authentication event. When you provide a <code>FeedbackValue</code>
    #   value of <code>valid</code>, you tell Amazon Cognito that you trust a user session where Amazon Cognito
    #   has evaluated some level of risk. When you provide a <code>FeedbackValue</code> value of
    #   <code>invalid</code>, you tell Amazon Cognito that you don't trust a user session, or you 
    #   don't believe that Amazon Cognito evaluated a high-enough risk level.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The submitter of the event feedback. For example, if you submit event feedback in the
    #               Amazon Cognito console, this value is <code>Admin</code>.</p>
    #   @return [String]
    # @!attribute feedback_date
    #   <p>The date that you or your user submitted the feedback.</p>
    #   @return [Time]
    class EventFeedbackType < Struct.new(
      :feedback_value,
      :provider,
      :feedback_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The risk evaluation by adaptive authentication, as displayed in an
    #                 <code>AdminListUserAuthEvents</code> response. Contains evaluations of
    #             compromised-credentials detection and assessed risk level and action taken by adaptive
    #             authentication.</p>
    # @!attribute risk_decision
    #   <p>The action taken by adaptive authentication. If <code>NoRisk</code>, your user pool
    #               took no action. If <code>AccountTakeover</code>, your user pool applied the adaptive
    #               authentication automated response that you configured. If <code>Block</code>, your user
    #               pool prevented the attempt.</p>
    #   @return [String]
    # @!attribute risk_level
    #   <p>The risk level that adaptive authentication assessed for the authentication
    #               event.</p>
    #   @return [String]
    # @!attribute compromised_credentials_detected
    #   <p>Indicates whether compromised credentials were detected during an authentication
    #               event.</p>
    #   @return [Boolean]
    class EventRiskType < Struct.new(
      :risk_decision,
      :risk_level,
      :compromised_credentials_detected,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown if a code has expired.</p>
    # @!attribute message
    #   <p>The message returned when the expired code exception is thrown.</p>
    #   @return [String]
    class ExpiredCodeException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a feature you attempted to configure isn't
    #             available in your current feature plan.</p>
    # @!attribute message
    #   @return [String]
    class FeatureUnavailableInTierException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for the Amazon Data Firehose stream destination of user activity log export with
    #             threat protection.</p>
    # @!attribute stream_arn
    #   <p>The ARN of an Amazon Data Firehose stream that's the destination for threat protection log
    #               export.</p>
    #   @return [String]
    class FirehoseConfigurationType < Struct.new(
      :stream_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when WAF doesn't allow your request based on a web
    #             ACL that's associated with your user pool.</p>
    # @!attribute message
    #   <p>The message returned when WAF doesn't allow your request based on a web ACL
    #               that's associated with your user pool.</p>
    #   @return [String]
    class ForbiddenException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to forget the device.</p>
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    # @!attribute device_key
    #   <p>The unique identifier, or device key, of the device that the user wants to
    #               forget.</p>
    #   @return [String]
    class ForgetDeviceRequest < Struct.new(
      :access_token,
      :device_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to reset a user's password.</p>
    # @!attribute client_id
    #   <p>The ID of the user pool app client associated with the current signed-in user.</p>
    #   @return [String]
    # @!attribute secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message. For more information
    #               about <code>SecretHash</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>.</p>
    #   @return [String]
    # @!attribute user_context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat 
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    #   @return [Types::UserContextDataType]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the 
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier, 
    #   email address, or phone number.</p>
    #   @return [Types::AnalyticsMetadataType]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #            <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the ForgotPassword API action, Amazon Cognito invokes any
    #               functions that are assigned to the following triggers: <i>pre sign-up</i>,
    #                   <i>custom message</i>, and <i>user migration</i>. When
    #               Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute, which provides the data that you assigned to the ClientMetadata parameter in
    #               your ForgotPassword request. In your function code in Lambda, you can
    #               process the <code>clientMetadata</code> value to enhance your workflow for your specific
    #               needs.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    class ForgotPasswordRequest < Struct.new(
      :client_id,
      :secret_hash,
      :user_context_data,
      :username,
      :analytics_metadata,
      :client_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response from Amazon Cognito to a request to reset a password.</p>
    # @!attribute code_delivery_details
    #   <p>Information about the phone number or email address that Amazon Cognito sent the
    #               password-recovery code to.</p>
    #   @return [Types::CodeDeliveryDetailsType]
    class ForgotPasswordResponse < Struct.new(
      :code_delivery_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to get the header information of the CSV file for the user
    #             import job.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that you want to import users into.</p>
    #   @return [String]
    class GetCSVHeaderRequest < Struct.new(
      :user_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server to the request to get the header information
    #             of the CSV file for the user import job.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the requested user pool.</p>
    #   @return [String]
    # @!attribute csv_header
    #   <p>A comma-separated list of attributes from your user pool. Save this output to a
    #                   <code>.csv</code> file and populate it with the attributes of the users that you
    #               want to import.</p>
    #   @return [Array<String>]
    class GetCSVHeaderResponse < Struct.new(
      :user_pool_id,
      :csv_header,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to get the device.</p>
    # @!attribute device_key
    #   <p>The key of the device that you want to get information about.</p>
    #   @return [String]
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    class GetDeviceRequest < Struct.new(
      :device_key,
      :access_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Gets the device response.</p>
    # @!attribute device
    #   <p>Details of the requested device. Includes device information, last-accessed and
    #               created dates, and the device key.</p>
    #   @return [Types::DeviceType]
    class GetDeviceResponse < Struct.new(
      :device,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>The name of the group that you want to get information about.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the group that you want to query.</p>
    #   @return [String]
    class GetGroupRequest < Struct.new(
      :group_name,
      :user_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>A container for the requested group. Includes description, precedence, and IAM role
    #               values.</p>
    #   @return [Types::GroupType]
    class GetGroupResponse < Struct.new(
      :group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to get information about the IdP.</p>
    #   @return [String]
    # @!attribute idp_identifier
    #   <p>The identifier that you assigned to your user pool. The identifier is an alternative
    #               name for an IdP that is distinct from the IdP name. For example, an IdP with a name of
    #                   <code>MyIdP</code> might have an identifier of the email domain
    #                   <code>example.com</code>.</p>
    #   @return [String]
    class GetIdentityProviderByIdentifierRequest < Struct.new(
      :user_pool_id,
      :idp_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider
    #   <p>The configuration of the IdP in your user pool. Includes additional identifiers, the
    #               IdP name and type, and trust-relationship details like the issuer URL.</p>
    #   @return [Types::IdentityProviderType]
    class GetIdentityProviderByIdentifierResponse < Struct.new(
      :identity_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool that has the logging configuration that you want to
    #               view.</p>
    #   @return [String]
    class GetLogDeliveryConfigurationRequest < Struct.new(
      :user_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute log_delivery_configuration
    #   <p>The logging configuration of the requested user pool. Includes types of logs
    #               configured and their destinations.</p>
    #   @return [Types::LogDeliveryConfigurationType]
    class GetLogDeliveryConfigurationResponse < Struct.new(
      :log_delivery_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request to get a signing certificate from Amazon Cognito.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to view the signing certificate.</p>
    #   @return [String]
    class GetSigningCertificateRequest < Struct.new(
      :user_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Response from Amazon Cognito for a signing certificate request.</p>
    # @!attribute certificate
    #   <p>The x.509 certificate that signs SAML 2.0 authentication requests for your user
    #               pool.</p>
    #   @return [String]
    class GetSigningCertificateResponse < Struct.new(
      :certificate,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute refresh_token
    #   <p>A valid refresh token that can authorize the request for new tokens. When refresh
    #               token rotation is active in the requested app client, this token is invalidated after
    #               the request is complete and after an optional grace period.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The app client that issued the refresh token to the user who wants to request new
    #               tokens.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The client secret of the requested app client, if the client has a secret.</p>
    #   @return [String]
    # @!attribute device_key
    #   <p>When you enable device remembering, Amazon Cognito issues a device key that you can use for
    #               device authentication that bypasses multi-factor authentication (MFA). To implement
    #                   <code>GetTokensFromRefreshToken</code> in a user pool with device remembering, you
    #               must capture the device key from the initial authentication request. If your application
    #               doesn't provide the key of a registered device, Amazon Cognito issues a new one. You must
    #               provide the confirmed device key in this request if device remembering is enabled in
    #               your user pool.</p>
    #            <p>For more information about device remembering, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with devices</a>.</p>
    #   @return [String]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for certain custom
    #               workflows that this action triggers.</p>
    #            <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the <code>GetTokensFromRefreshToken</code> API action, Amazon Cognito invokes the
    #               Lambda function the pre token generation trigger.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    class GetTokensFromRefreshTokenRequest < Struct.new(
      :refresh_token,
      :client_id,
      :client_secret,
      :device_key,
      :client_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_result
    #   <p>The object that your application receives after authentication. Contains tokens and
    #               information for device authentication.</p>
    #   @return [Types::AuthenticationResultType]
    class GetTokensFromRefreshTokenResponse < Struct.new(
      :authentication_result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool that you want to query for branding settings.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The ID of the app client that you want to query for branding settings.</p>
    #   @return [String]
    class GetUICustomizationRequest < Struct.new(
      :user_pool_id,
      :client_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ui_customization
    #   <p>Information about the classic hosted UI custom CSS and logo-image branding that you
    #               applied to the user pool or app client.</p>
    #   @return [Types::UICustomizationType]
    class GetUICustomizationResponse < Struct.new(
      :ui_customization,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to get user attribute verification.</p>
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The name of the attribute that the user wants to verify, for example
    #                   <code>email</code>.</p>
    #   @return [String]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #            <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the GetUserAttributeVerificationCode API action, Amazon Cognito invokes
    #               the function that is assigned to the <i>custom message</i> trigger. When
    #               Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as
    #               input. This payload contains a <code>clientMetadata</code> attribute, which provides the
    #               data that you assigned to the ClientMetadata parameter in your
    #               GetUserAttributeVerificationCode request. In your function code in Lambda, you can process the <code>clientMetadata</code> value to enhance your workflow for
    #               your specific needs.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    class GetUserAttributeVerificationCodeRequest < Struct.new(
      :access_token,
      :attribute_name,
      :client_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The verification code response returned by the server response to get the user
    #             attribute verification code.</p>
    # @!attribute code_delivery_details
    #   <p>Information about the delivery destination of the user attribute verification
    #               code.</p>
    #   @return [Types::CodeDeliveryDetailsType]
    class GetUserAttributeVerificationCodeResponse < Struct.new(
      :code_delivery_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    class GetUserAuthFactorsRequest < Struct.new(
      :access_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute username
    #   <p>The name of the user who is eligible for the authentication factors in the
    #               response.</p>
    #   @return [String]
    # @!attribute preferred_mfa_setting
    #   <p>The challenge method that Amazon Cognito returns to the user in response to sign-in requests.
    #               Users can prefer SMS message, email message, or TOTP MFA.</p>
    #   @return [String]
    # @!attribute user_mfa_setting_list
    #   <p>The MFA options that are activated for the user. The possible values in this list are
    #                   <code>SMS_MFA</code>, <code>EMAIL_OTP</code>, and
    #               <code>SOFTWARE_TOKEN_MFA</code>.</p>
    #   @return [Array<String>]
    # @!attribute configured_user_auth_factors
    #   <p>The authentication types that are available to the user with <code>USER_AUTH</code>
    #               sign-in, for example <code>["PASSWORD", "WEB_AUTHN"]</code>.</p>
    #   @return [Array<String>]
    class GetUserAuthFactorsResponse < Struct.new(
      :username,
      :preferred_mfa_setting,
      :user_mfa_setting_list,
      :configured_user_auth_factors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to query WebAuthn and MFA configuration.</p>
    #   @return [String]
    class GetUserPoolMfaConfigRequest < Struct.new(
      :user_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sms_mfa_configuration
    #   <p>Shows user pool configuration for SMS message MFA. Includes the message template and
    #               the SMS message sending configuration for Amazon SNS.</p>
    #   @return [Types::SmsMfaConfigType]
    # @!attribute software_token_mfa_configuration
    #   <p>Shows user pool configuration for time-based one-time password (TOTP) MFA. Includes
    #               TOTP enabled or disabled state.</p>
    #   @return [Types::SoftwareTokenMfaConfigType]
    # @!attribute email_mfa_configuration
    #   <p>Shows configuration for user pool email message MFA and sign-in with one-time
    #               passwords (OTPs). Includes the subject and body of the email message template for
    #               sign-in and MFA messages. To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    #   @return [Types::EmailMfaConfigType]
    # @!attribute mfa_configuration
    #   <p>Displays the state of multi-factor authentication (MFA) as on, off, or optional. When
    #                   <code>ON</code>, all users must set up MFA before they can sign in. When
    #                   <code>OPTIONAL</code>, your application must make a client-side determination of
    #               whether a user wants to register an MFA device. For user pools with adaptive
    #               authentication with threat protection, choose <code>OPTIONAL</code>.</p>
    #            <p>When <code>MfaConfiguration</code> is <code>OPTIONAL</code>, managed login
    #               doesn't automatically prompt users to set up MFA. Amazon Cognito generates MFA prompts in
    #               API responses and in managed login for users who have chosen and configured a preferred
    #               MFA factor.</p>
    #   @return [String]
    # @!attribute web_authn_configuration
    #   <p>Shows user pool configuration for sign-in with passkey authenticators like biometric
    #               devices and security keys. Passkeys are not eligible MFA factors. They are instead an
    #               eligible primary sign-in factor for <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice">choice-based authentication</a>, or the
    #                   <code>USER_AUTH</code> flow.</p>
    #   @return [Types::WebAuthnConfigurationType]
    class GetUserPoolMfaConfigResponse < Struct.new(
      :sms_mfa_configuration,
      :software_token_mfa_configuration,
      :email_mfa_configuration,
      :mfa_configuration,
      :web_authn_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to get information about the user.</p>
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    class GetUserRequest < Struct.new(
      :access_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server from the request to get information about the
    #             user.</p>
    # @!attribute username
    #   <p>The name of the user that you requested.</p>
    #   @return [String]
    # @!attribute user_attributes
    #   <p>An array of name-value pairs representing user attributes.</p>
    #            <p>Custom attributes are prepended with the <code>custom:</code> prefix.</p>
    #   @return [Array<Types::AttributeType>]
    # @!attribute mfa_options
    #   <p>
    #               <i>This response parameter is no longer supported.</i> It provides
    #               information only about SMS MFA configurations. It doesn't provide information about
    #               time-based one-time password (TOTP) software token MFA configurations. To look up
    #               information about either type of MFA configuration, use UserMFASettingList
    #               instead.</p>
    #   @return [Array<Types::MFAOptionType>]
    # @!attribute preferred_mfa_setting
    #   <p>The user's preferred MFA. Users can prefer SMS message, email message, or TOTP
    #               MFA.</p>
    #   @return [String]
    # @!attribute user_mfa_setting_list
    #   <p>The MFA options that are activated for the user. The possible values in this list are
    #                   <code>SMS_MFA</code>, <code>EMAIL_OTP</code>, and
    #               <code>SOFTWARE_TOKEN_MFA</code>.</p>
    #   @return [Array<String>]
    class GetUserResponse < Struct.new(
      :username,
      :user_attributes,
      :mfa_options,
      :preferred_mfa_setting,
      :user_mfa_setting_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to sign out all devices.</p>
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    class GlobalSignOutRequest < Struct.new(
      :access_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response to the request to sign out all devices.</p>
    class GlobalSignOutResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when Amazon Cognito encounters a group that already exists in the user
    #             pool.</p>
    # @!attribute message
    #   @return [String]
    class GroupExistsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A user pool group. Contains details about the group and the way that it contributes to
    #             IAM role decisions with identity pools. Identity pools can make decisions about the
    #             IAM role to assign based on groups: users get credentials for the role associated with
    #             their highest-priority group.</p>
    # @!attribute group_name
    #   <p>The name of the group.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A friendly description of the group.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role associated with the group. If a group has the highest
    #               priority of a user's groups, users who authenticate with an identity pool get
    #               credentials for the <code>RoleArn</code> that's associated with the group.</p>
    #   @return [String]
    # @!attribute precedence
    #   <p>A non-negative integer value that specifies the precedence of this group relative to
    #               the other groups that a user can belong to in the user pool. Zero is the highest
    #               precedence value. Groups with lower <code>Precedence</code> values take precedence over
    #               groups with higher ornull <code>Precedence</code> values. If a user belongs to two or
    #               more groups, it is the group with the lowest precedence value whose role ARN is given in
    #               the user's tokens for the <code>cognito:roles</code> and
    #                   <code>cognito:preferred_role</code> claims.</p>
    #            <p>Two groups can have the same <code>Precedence</code> value. If this happens, neither
    #               group takes precedence over the other. If two groups with the same
    #                   <code>Precedence</code> have the same role ARN, that role is used in the
    #                   <code>cognito:preferred_role</code> claim in tokens for users in each group. If the
    #               two groups have different role ARNs, the <code>cognito:preferred_role</code> claim isn't
    #               set in users' tokens.</p>
    #            <p>The default <code>Precedence</code> value is <code>null</code>.</p>
    #   @return [Integer]
    # @!attribute last_modified_date
    #   <p>The date and time when the item was modified. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute creation_date
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    class GroupType < Struct.new(
      :group_name,
      :user_pool_id,
      :description,
      :role_arn,
      :precedence,
      :last_modified_date,
      :creation_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The HTTP header in the <code>ContextData</code> parameter.</p>
    # @!attribute header_name
    #   <p>The header name.</p>
    #   @return [String]
    # @!attribute header_value
    #   <p>The header value.</p>
    #   @return [String]
    class HttpHeader < Struct.new(
      :header_name,
      :header_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A user pool identity provider (IdP). Contains information about a third-party IdP to a
    #             user pool, the attributes that it populates to user profiles, and the trust relationship
    #             between the IdP and your user pool.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool associated with the IdP.</p>
    #   @return [String]
    # @!attribute provider_name
    #   <p>A friendly name for the IdP.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The type of IdP. Either SAML, OIDC, or a named social identity provider.</p>
    #   @return [String]
    # @!attribute provider_details
    #   <p>The scopes, URLs, and identifiers for your external identity provider. The following
    #   examples describe the provider detail keys for each IdP type. These values and their
    #   schema are subject to change. Social IdP <code>authorize_scopes</code> values must match
    #   the values listed here.</p>
    #            <dl>
    #               <dt>OpenID Connect (OIDC)</dt>
    #               <dd>
    #                  <p>Amazon Cognito accepts the following elements when it can't discover endpoint
    #                   URLs from <code>oidc_issuer</code>: <code>attributes_url</code>,
    #                       <code>authorize_url</code>, <code>jwks_uri</code>,
    #                       <code>token_url</code>.</p>
    #                  <p>Create or update request: <code>"ProviderDetails": {
    #                       "attributes_request_method": "GET", "attributes_url":
    #                       "https://auth.example.com/userInfo", "authorize_scopes": "openid profile
    #                       email", "authorize_url": "https://auth.example.com/authorize",
    #                       "client_id": "1example23456789", "client_secret":
    #                       "provider-app-client-secret", "jwks_uri":
    #                       "https://auth.example.com/.well-known/jwks.json", "oidc_issuer":
    #                       "https://auth.example.com", "token_url": "https://example.com/token"
    #                       }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": { "attributes_request_method":
    #                       "GET", "attributes_url": "https://auth.example.com/userInfo",
    #                       "attributes_url_add_attributes": "false", "authorize_scopes": "openid
    #                       profile email", "authorize_url": "https://auth.example.com/authorize",
    #                       "client_id": "1example23456789", "client_secret":
    #                       "provider-app-client-secret", "jwks_uri":
    #                       "https://auth.example.com/.well-known/jwks.json", "oidc_issuer":
    #                       "https://auth.example.com", "token_url": "https://example.com/token"
    #                       }</code>
    #                  </p>
    #               </dd>
    #               <dt>SAML</dt>
    #               <dd>
    #                  <p>Create or update request with Metadata URL: <code>"ProviderDetails": { "IDPInit": "true",
    #                       "IDPSignout": "true", "EncryptedResponses" : "true", "MetadataURL":
    #                       "https://auth.example.com/sso/saml/metadata", "RequestSigningAlgorithm":
    #                       "rsa-sha256" }</code>
    #                  </p>
    #                  <p>Create or update request with Metadata file: <code>"ProviderDetails": { "IDPInit": "true",
    #                       "IDPSignout": "true", "EncryptedResponses" : "true",  
    #                       "MetadataFile": "[metadata XML]", "RequestSigningAlgorithm":
    #                       "rsa-sha256" }</code>
    #                  </p>
    #                  <p>The value of <code>MetadataFile</code> must be the plaintext metadata document with all 
    #                   quote (") characters escaped by backslashes.</p>
    #                  <p>Describe response: <code>"ProviderDetails": { "IDPInit": "true",
    #                       "IDPSignout": "true", "EncryptedResponses" : "true", "ActiveEncryptionCertificate": "[certificate]",
    #                       "MetadataURL": "https://auth.example.com/sso/saml/metadata", "RequestSigningAlgorithm":
    #                       "rsa-sha256", "SLORedirectBindingURI":
    #                       "https://auth.example.com/slo/saml", "SSORedirectBindingURI":
    #                       "https://auth.example.com/sso/saml" }</code>
    #                  </p>
    #               </dd>
    #               <dt>LoginWithAmazon</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "authorize_scopes":
    #                       "profile postal_code", "client_id":
    #                       "amzn1.application-oa2-client.1example23456789", "client_secret":
    #                       "provider-app-client-secret"</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": { "attributes_url":
    #                       "https://api.amazon.com/user/profile", "attributes_url_add_attributes":
    #                       "false", "authorize_scopes": "profile postal_code", "authorize_url":
    #                       "https://www.amazon.com/ap/oa", "client_id":
    #                       "amzn1.application-oa2-client.1example23456789", "client_secret":
    #                       "provider-app-client-secret", "token_request_method": "POST",
    #                       "token_url": "https://api.amazon.com/auth/o2/token" }</code>
    #                  </p>
    #               </dd>
    #               <dt>Google</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "authorize_scopes":
    #                       "email profile openid", "client_id":
    #                       "1example23456789.apps.googleusercontent.com", "client_secret":
    #                       "provider-app-client-secret" }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": { "attributes_url":
    #                       "https://people.googleapis.com/v1/people/me?personFields=",
    #                       "attributes_url_add_attributes": "true", "authorize_scopes": "email
    #                       profile openid", "authorize_url":
    #                       "https://accounts.google.com/o/oauth2/v2/auth", "client_id":
    #                       "1example23456789.apps.googleusercontent.com", "client_secret":
    #                       "provider-app-client-secret", "oidc_issuer":
    #                       "https://accounts.google.com", "token_request_method": "POST",
    #                       "token_url": "https://www.googleapis.com/oauth2/v4/token"
    #                   }</code>
    #                  </p>
    #               </dd>
    #               <dt>SignInWithApple</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "authorize_scopes":
    #                       "email name", "client_id": "com.example.cognito", "private_key": "1EXAMPLE", 
    #                       "key_id": "2EXAMPLE", "team_id": "3EXAMPLE" }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": {
    #                       "attributes_url_add_attributes": "false", "authorize_scopes": "email
    #                       name", "authorize_url": "https://appleid.apple.com/auth/authorize",
    #                       "client_id": "com.example.cognito", "key_id": "1EXAMPLE", "oidc_issuer":
    #                       "https://appleid.apple.com", "team_id": "2EXAMPLE",
    #                       "token_request_method": "POST", "token_url":
    #                       "https://appleid.apple.com/auth/token" }</code>
    #                  </p>
    #               </dd>
    #               <dt>Facebook</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "api_version": "v17.0", 
    #               "authorize_scopes": "public_profile, email", "client_id": "1example23456789", 
    #               "client_secret": "provider-app-client-secret" }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": 
    #               { "api_version": "v17.0", "attributes_url": "https://graph.facebook.com/v17.0/me?fields=", 
    #               "attributes_url_add_attributes": "true", "authorize_scopes": "public_profile, email", 
    #               "authorize_url": "https://www.facebook.com/v17.0/dialog/oauth", "client_id": 
    #               "1example23456789", "client_secret": "provider-app-client-secret", "token_request_method": 
    #               "GET", "token_url": "https://graph.facebook.com/v17.0/oauth/access_token" }</code>
    #                  </p>
    #               </dd>
    #            </dl>
    #   @return [Hash<String, String>]
    # @!attribute attribute_mapping
    #   <p>A mapping of IdP attributes to standard and custom user pool attributes.</p>
    #   @return [Hash<String, String>]
    # @!attribute idp_identifiers
    #   <p>A list of IdP identifiers. IdP identifiers are strings that represent friendly names
    #               or domain names of IdPs, for example <code>MyIdP</code> or
    #               <code>auth.example.com</code>. You can choose to route user authorization requests to
    #               the right IdP with either IdP identifiers or IdP names. For more information, see
    #                   <code>identity_provider</code> and <code>idp_identifier</code> at <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html#get-authorize-request-parameters">Authorize endpoint</a>.</p>
    #   @return [Array<String>]
    # @!attribute last_modified_date
    #   <p>The date and time when the item was modified. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute creation_date
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    class IdentityProviderType < Struct.new(
      :user_pool_id,
      :provider_name,
      :provider_type,
      :provider_details,
      :attribute_mapping,
      :idp_identifiers,
      :last_modified_date,
      :creation_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Initiates the authentication request.</p>
    # @!attribute auth_flow
    #   <p>The authentication flow that you want to initiate. Each <code>AuthFlow</code> has
    #               linked <code>AuthParameters</code> that you must submit. The following are some example
    #               flows.</p>
    #            <dl>
    #               <dt>USER_AUTH</dt>
    #               <dd>
    #                  <p>The entry point for <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice">choice-based authentication</a> with passwords,
    #                           one-time passwords, and WebAuthn authenticators. Request a preferred
    #                           authentication type or review available authentication types. From the
    #                           offered authentication types, select one in a challenge response and then
    #                           authenticate with that method in an additional challenge response.
    #                           To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    #               </dd>
    #               <dt>USER_SRP_AUTH</dt>
    #               <dd>
    #                  <p>Username-password authentication with the Secure Remote Password (SRP)
    #                           protocol. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow.html#Using-SRP-password-verification-in-custom-authentication-flow">Use SRP password verification in custom
    #                               authentication flow</a>.</p>
    #               </dd>
    #               <dt>REFRESH_TOKEN_AUTH and REFRESH_TOKEN</dt>
    #               <dd>
    #                  <p>Receive new ID and access tokens when you pass a
    #                               <code>REFRESH_TOKEN</code> parameter with a valid refresh token as the
    #                           value. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-refresh-token.html">Using the refresh token</a>.</p>
    #               </dd>
    #               <dt>CUSTOM_AUTH</dt>
    #               <dd>
    #                  <p>Custom authentication with Lambda triggers. For more information, see
    #                               <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html">Custom authentication challenge Lambda
    #                               triggers</a>.</p>
    #               </dd>
    #               <dt>USER_PASSWORD_AUTH</dt>
    #               <dd>
    #                  <p>Client-side username-password authentication with the password sent
    #                           directly in the request. For more information about client-side and
    #                           server-side authentication, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-public-server-side.html">SDK authorization models</a>.</p>
    #               </dd>
    #            </dl>
    #            <p>
    #               <code>ADMIN_USER_PASSWORD_AUTH</code> is a flow type of <code>AdminInitiateAuth</code>
    #               and isn't valid for InitiateAuth. <code>ADMIN_NO_SRP_AUTH</code> is a legacy server-side
    #               username-password flow and isn't valid for InitiateAuth.</p>
    #   @return [String]
    # @!attribute auth_parameters
    #   <p>The authentication parameters. These are inputs corresponding to the
    #                   <code>AuthFlow</code> that you're invoking.</p>
    #            <p>The following are some authentication flows and their parameters. Add a
    #                   <code>SECRET_HASH</code> parameter if your app client has a client secret. Add
    #                   <code>DEVICE_KEY</code> if you want to bypass multi-factor authentication with a
    #               remembered device. </p>
    #            <dl>
    #               <dt>USER_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>PREFERRED_CHALLENGE</code>. If you don't provide a
    #                                   value for <code>PREFERRED_CHALLENGE</code>, Amazon Cognito responds with the
    #                                       <code>AvailableChallenges</code> parameter that specifies the
    #                                   available sign-in methods.</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>USER_SRP_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>SRP_A</code> (required)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>USER_PASSWORD_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>PASSWORD</code> (required)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>REFRESH_TOKEN</code>(required)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>CUSTOM_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ChallengeName: SRP_A</code> (when doing SRP authentication
    #                                   before custom challenges)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>SRP_A: (An SRP_A value)</code> (when doing SRP
    #                                   authentication before custom challenges)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #            </dl>
    #            <p>For more information about <code>SECRET_HASH</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>. For information about
    #               <code>DEVICE_KEY</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for certain custom
    #               workflows that this action triggers.</p>
    #            <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you send an <code>InitiateAuth</code> request, Amazon Cognito invokes the Lambda functions
    #               that are specified for various triggers. The <code>ClientMetadata</code> value is passed
    #               as input to the functions for only the following triggers.</p>
    #            <ul>
    #               <li>
    #                  <p>Pre sign-up</p>
    #               </li>
    #               <li>
    #                  <p>Pre authentication</p>
    #               </li>
    #               <li>
    #                  <p>User migration</p>
    #               </li>
    #            </ul>
    #            <p>When Amazon Cognito invokes the functions for these triggers, it passes a JSON payload as input
    #               to the function. This payload contains a <code>validationData</code> attribute with the
    #               data that you assigned to the <code>ClientMetadata</code> parameter in your
    #                   <code>InitiateAuth</code> request. In your function, <code>validationData</code> can
    #               contribute to operations that require data that isn't in the default
    #               payload.</p>
    #            <p>
    #               <code>InitiateAuth</code> requests invokes the following triggers without
    #                   <code>ClientMetadata</code> as input.</p>
    #            <ul>
    #               <li>
    #                  <p>Post authentication</p>
    #               </li>
    #               <li>
    #                  <p>Custom message</p>
    #               </li>
    #               <li>
    #                  <p>Pre token generation</p>
    #               </li>
    #               <li>
    #                  <p>Create auth challenge</p>
    #               </li>
    #               <li>
    #                  <p>Define auth challenge</p>
    #               </li>
    #               <li>
    #                  <p>Custom email sender</p>
    #               </li>
    #               <li>
    #                  <p>Custom SMS sender</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    # @!attribute client_id
    #   <p>The ID of the app client that your user wants to sign in to.</p>
    #   @return [String]
    # @!attribute analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the 
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier, 
    #   email address, or phone number.</p>
    #   @return [Types::AnalyticsMetadataType]
    # @!attribute user_context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat 
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    #   @return [Types::UserContextDataType]
    # @!attribute session
    #   <p>The optional session ID from a <code>ConfirmSignUp</code> API request. You can sign in
    #               a user directly from the sign-up process with the <code>USER_AUTH</code> authentication
    #               flow. When you pass the session ID to <code>InitiateAuth</code>, Amazon Cognito assumes the SMS
    #               or email message one-time verification password from <code>ConfirmSignUp</code> as the
    #               primary authentication factor. You're not required to submit this code a second
    #               time. This option is only valid for users who have confirmed their sign-up and are
    #               signing in for the first time within the authentication flow session duration of the
    #               session ID.</p>
    #   @return [String]
    class InitiateAuthRequest < Struct.new(
      :auth_flow,
      :auth_parameters,
      :client_metadata,
      :client_id,
      :analytics_metadata,
      :user_context_data,
      :session,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Initiates the authentication response.</p>
    # @!attribute challenge_name
    #   <p>The name of an additional authentication challenge that you must respond to.</p>
    #            <p>Possible challenges include the following:</p>
    #            <note>
    #               <p>All of the following challenges require <code>USERNAME</code> and, when the app
    #                   client has a client secret, <code>SECRET_HASH</code> in the parameters. Include a 
    #                   <code>DEVICE_KEY</code> for device authentication.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WEB_AUTHN</code>: Respond to the challenge with the results of a
    #                       successful authentication with a WebAuthn authenticator, or passkey, as 
    #                       <code>CREDENTIAL</code>. Examples of WebAuthn authenticators include 
    #                       biometric devices and security keys.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD</code>: Respond with the user's password as <code>PASSWORD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_SRP</code>: Respond with the initial SRP secret as <code>SRP_A</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SELECT_CHALLENGE</code>: Respond with a challenge selection as <code>ANSWER</code>. 
    #                   It must be one of the challenge types in the <code>AvailableChallenges</code> response 
    #                   parameter. Add the parameters of the selected challenge, for example <code>USERNAME</code>
    #                   and <code>SMS_OTP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_MFA</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_MFA</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_OTP</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_OTP_CODE</code> .</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_OTP</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_OTP_CODE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_VERIFIER</code>: Respond with the second stage of SRP secrets as
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, 
    #                           and <code>TIMESTAMP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication
    #                       flow determines that the user should pass another challenge before tokens are
    #                       issued. The parameters of the challenge are determined by your Lambda function
    #                       and issued in the <code>ChallengeParameters</code> of a challenge response.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_SRP_AUTH</code>: Respond with the initial parameters of device SRP 
    #                   authentication. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_PASSWORD_VERIFIER</code>: Respond with
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>,
    #                           <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after
    #                       client-side SRP calculations. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_PASSWORD_REQUIRED</code>: For users who are required to change their
    #                       passwords after successful first login. Respond to this challenge with 
    #                       <code>NEW_PASSWORD</code> and any required attributes that Amazon Cognito returned in 
    #                       the <code>requiredAttributes</code> parameter. You can also set values for 
    #                       attributes that aren't required by your user pool and that your app client 
    #                       can write.</p>
    #                  <p>Amazon Cognito only returns this challenge for users who have temporary passwords.
    #                       When you create passwordless users, you must provide values for all required 
    #                       attributes.</p>
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value. 
    #   In <code>AdminRespondToAuthChallenge</code> or <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the 
    #   <code>requiredAttributes</code> parameter, then use the <code>AdminUpdateUserAttributes</code> or <code>UpdateUserAttributes</code> API 
    #   operation to modify the value of any additional attributes.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MFA_SETUP</code>: For users who are required to setup an MFA factor
    #                       before they can sign in. The MFA types activated for the user pool will be
    #                       listed in the challenge parameters <code>MFAS_CAN_SETUP</code> value. </p>
    #                  <p>To set up time-based one-time password (TOTP) MFA, use the session returned 
    #                       in this challenge from <code>InitiateAuth</code> or <code>AdminInitiateAuth</code> 
    #                       as an input to <code>AssociateSoftwareToken</code>. Then, use the session returned
    #                       by <code>VerifySoftwareToken</code> as an input to 
    #                       <code>RespondToAuthChallenge</code> or <code>AdminRespondToAuthChallenge</code>
    #                   with challenge name <code>MFA_SETUP</code> to complete sign-in.
    #                   </p>
    #                  <p>To set up SMS or email MFA, collect a <code>phone_number</code> or 
    #                       <code>email</code> attribute for the user. Then restart the authentication 
    #                       flow with an <code>InitiateAuth</code> or <code>AdminInitiateAuth</code> request.
    #                   </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute session
    #   <p>The session identifier that links a challenge response to the initial authentication
    #               request. If the user must pass another challenge, Amazon Cognito returns a session ID and
    #               challenge parameters.</p>
    #   @return [String]
    # @!attribute challenge_parameters
    #   <p>The required parameters of the <code>ChallengeName</code> challenge.</p>
    #            <p>All challenges require <code>USERNAME</code>. They also require
    #                   <code>SECRET_HASH</code> if your app client has a client secret.</p>
    #   @return [Hash<String, String>]
    # @!attribute authentication_result
    #   <p>The result of a successful and complete authentication request. This result is only
    #               returned if the user doesn't need to pass another challenge. If they must pass another
    #               challenge before they get tokens, Amazon Cognito returns a challenge in
    #                   <code>ChallengeName</code>, <code>ChallengeParameters</code>, and
    #                   <code>Session</code> response parameters.</p>
    #   @return [Types::AuthenticationResultType]
    # @!attribute available_challenges
    #   <p>This response parameter lists the available authentication challenges that users can
    #               select from in <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice">choice-based authentication</a>. For example, they might be
    #               able to choose between passkey authentication, a one-time password from an SMS message,
    #               and a traditional password.</p>
    #   @return [Array<String>]
    class InitiateAuthResponse < Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result,
      :available_challenges,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when Amazon Cognito encounters an internal error.</p>
    # @!attribute message
    #   <p>The message returned when Amazon Cognito throws an internal error exception.</p>
    #   @return [String]
    class InternalErrorException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when Amazon Cognito isn't allowed to use your email identity. HTTP
    #             status code: 400.</p>
    # @!attribute message
    #   <p>The message returned when you have an unverified email address or the identity policy
    #               isn't set on an email address that Amazon Cognito can access.</p>
    #   @return [String]
    class InvalidEmailRoleAccessPolicyException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when Amazon Cognito encounters an invalid Lambda response.</p>
    # @!attribute message
    #   <p>The message returned when Amazon Cognito throws an invalid Lambda response
    #               exception.</p>
    #   @return [String]
    class InvalidLambdaResponseException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the specified OAuth flow is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidOAuthFlowException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the Amazon Cognito service encounters an invalid
    #             parameter.</p>
    # @!attribute message
    #   <p>The message returned when the Amazon Cognito service throws an invalid parameter
    #               exception.</p>
    #   @return [String]
    # @!attribute reason_code
    #   <p>The reason code of the exception.</p>
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      :reason_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when Amazon Cognito encounters an invalid password.</p>
    # @!attribute message
    #   <p>The message returned when Amazon Cognito throws an invalid user password exception.</p>
    #   @return [String]
    class InvalidPasswordException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is returned when the role provided for SMS configuration doesn't have
    #             permission to publish using Amazon SNS.</p>
    # @!attribute message
    #   <p>The message returned when the invalid SMS role access policy exception is
    #               thrown.</p>
    #   @return [String]
    class InvalidSmsRoleAccessPolicyException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the trust relationship is not valid for the role
    #             provided for SMS configuration. This can happen if you don't trust
    #                 <code>cognito-idp.amazonaws.com</code> or the external ID provided in the role does
    #             not match what is provided in the SMS configuration for the user pool.</p>
    # @!attribute message
    #   <p>The message returned when the role trust relationship for the SMS message is not
    #               valid.</p>
    #   @return [String]
    class InvalidSmsRoleTrustRelationshipException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the user pool configuration is not valid.</p>
    # @!attribute message
    #   <p>The message returned when the user pool configuration is not valid.</p>
    #   @return [String]
    class InvalidUserPoolConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of user pool Lambda triggers. Amazon Cognito invokes triggers at several possible
    #             stages of user pool operations. Triggers can modify the outcome of the operations that
    #             invoked them.</p>
    # @!attribute pre_sign_up
    #   <p>The configuration of a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html">pre sign-up Lambda trigger</a> in a user pool. This trigger
    #               evaluates new users and can bypass confirmation, <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html">link a federated user profile</a>, or block sign-up
    #               requests.</p>
    #   @return [String]
    # @!attribute custom_message
    #   <p>A custom message Lambda trigger. This trigger is an opportunity to customize all SMS
    #               and email messages from your user pool. When a custom message trigger is active, your
    #               user pool routes all messages to a Lambda function that returns a runtime-customized
    #               message subject and body for your user pool to deliver to a user.</p>
    #   @return [String]
    # @!attribute post_confirmation
    #   <p>The configuration of a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-post-confirmation.html">post confirmation Lambda trigger</a> in a user pool. This
    #               trigger can take custom actions after a user confirms their user account and their email
    #               address or phone number.</p>
    #   @return [String]
    # @!attribute pre_authentication
    #   <p>The configuration of a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-authentication.html">pre authentication trigger</a> in a user pool. This trigger
    #               can evaluate and modify user sign-in events.</p>
    #   @return [String]
    # @!attribute post_authentication
    #   <p>The configuration of a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-post-authentication.html">post authentication Lambda trigger</a> in a user pool. This
    #               trigger can take custom actions after a user signs in.</p>
    #   @return [String]
    # @!attribute define_auth_challenge
    #   <p>The configuration of a define auth challenge Lambda trigger, one of three triggers in
    #               the sequence of the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html">custom authentication challenge triggers</a>.</p>
    #   @return [String]
    # @!attribute create_auth_challenge
    #   <p>The configuration of a create auth challenge Lambda trigger, one of three triggers in
    #               the sequence of the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html">custom authentication challenge triggers</a>.</p>
    #   @return [String]
    # @!attribute verify_auth_challenge_response
    #   <p>The configuration of a verify auth challenge Lambda trigger, one of three triggers in
    #               the sequence of the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html">custom authentication challenge triggers</a>.</p>
    #   @return [String]
    # @!attribute pre_token_generation
    #   <p>The legacy configuration of a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-token-generation.html">pre token generation Lambda trigger</a> in a user
    #               pool.</p>
    #            <p>Set this parameter for legacy purposes. If you also set an ARN in
    #                   <code>PreTokenGenerationConfig</code>, its value must be identical to
    #                   <code>PreTokenGeneration</code>. For new instances of pre token generation triggers,
    #               set the <code>LambdaArn</code> of <code>PreTokenGenerationConfig</code>.</p>
    #   @return [String]
    # @!attribute user_migration
    #   <p>The configuration of a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-migrate-user.html">migrate user Lambda trigger</a> in a user pool. This trigger
    #               can create user profiles when users sign in or attempt to reset their password with
    #               credentials that don't exist yet.</p>
    #   @return [String]
    # @!attribute pre_token_generation_config
    #   <p>The detailed configuration of a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-token-generation.html">pre token generation Lambda trigger</a> in a user pool. If
    #               you also set an ARN in <code>PreTokenGeneration</code>, its value must be identical to
    #                   <code>PreTokenGenerationConfig</code>.</p>
    #   @return [Types::PreTokenGenerationVersionConfigType]
    # @!attribute custom_sms_sender
    #   <p>The configuration of a custom SMS sender Lambda trigger. This trigger routes all SMS
    #               notifications from a user pool to a Lambda function that delivers the message using
    #               custom logic.</p>
    #   @return [Types::CustomSMSLambdaVersionConfigType]
    # @!attribute custom_email_sender
    #   <p>The configuration of a custom email sender Lambda trigger. This trigger routes all
    #               email notifications from a user pool to a Lambda function that delivers the message using
    #               custom logic.</p>
    #   @return [Types::CustomEmailLambdaVersionConfigType]
    # @!attribute kms_key_id
    #   <p>The ARN of an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys">KMS key</a>. Amazon Cognito uses the key to encrypt codes and temporary passwords sent to
    #               custom sender Lambda triggers.</p>
    #   @return [String]
    class LambdaConfigType < Struct.new(
      :pre_sign_up,
      :custom_message,
      :post_confirmation,
      :pre_authentication,
      :post_authentication,
      :define_auth_challenge,
      :create_auth_challenge,
      :verify_auth_challenge_response,
      :pre_token_generation,
      :user_migration,
      :pre_token_generation_config,
      :custom_sms_sender,
      :custom_email_sender,
      :kms_key_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a user exceeds the limit for a requested Amazon Web Services
    #             resource.</p>
    # @!attribute message
    #   <p>The message returned when Amazon Cognito throws a limit exceeded exception.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to list the devices.</p>
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of devices that you want Amazon Cognito to return in the response.</p>
    #   @return [Integer]
    # @!attribute pagination_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list. 
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate 
    #   through the full list of items.</p>
    #   @return [String]
    class ListDevicesRequest < Struct.new(
      :access_token,
      :limit,
      :pagination_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response to list devices.</p>
    # @!attribute devices
    #   <p>An array of devices and their details. Each entry that's returned includes device
    #               information, last-accessed and created dates, and the device key.</p>
    #   @return [Array<Types::DeviceType>]
    # @!attribute pagination_token
    #   <p>The identifier that Amazon Cognito returned with the previous request to this operation. When 
    #   you include a pagination token in your request, Amazon Cognito returns the next set of items in 
    #   the list. By use of this token, you can paginate through the full list of items.</p>
    #   @return [String]
    class ListDevicesResponse < Struct.new(
      :devices,
      :pagination_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to list user groups.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of groups that you want Amazon Cognito to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list. 
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate 
    #   through the full list of items.</p>
    #   @return [String]
    class ListGroupsRequest < Struct.new(
      :user_pool_id,
      :limit,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute groups
    #   <p>An array of groups and their details. Each entry that's returned includes
    #               description, precedence, and IAM role values.</p>
    #   @return [Array<Types::GroupType>]
    # @!attribute next_token
    #   <p>The identifier that Amazon Cognito returned with the previous request to this operation. When 
    #   you include a pagination token in your request, Amazon Cognito returns the next set of items in 
    #   the list. By use of this token, you can paginate through the full list of items.</p>
    #   @return [String]
    class ListGroupsResponse < Struct.new(
      :groups,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to list IdPs.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of IdPs that you want Amazon Cognito to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list. 
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate 
    #   through the full list of items.</p>
    #   @return [String]
    class ListIdentityProvidersRequest < Struct.new(
      :user_pool_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute providers
    #   <p>An array of the IdPs in your user pool. For each, the response includes identifiers,
    #               the IdP name and type, and trust-relationship details like the issuer URL.</p>
    #   @return [Array<Types::ProviderDescription>]
    # @!attribute next_token
    #   <p>The identifier that Amazon Cognito returned with the previous request to this operation. When 
    #   you include a pagination token in your request, Amazon Cognito returns the next set of items in 
    #   the list. By use of this token, you can paginate through the full list of items.</p>
    #   @return [String]
    class ListIdentityProvidersResponse < Struct.new(
      :providers,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to list resource servers.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of resource servers that you want Amazon Cognito to return in the
    #               response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list. 
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate 
    #   through the full list of items.</p>
    #   @return [String]
    class ListResourceServersRequest < Struct.new(
      :user_pool_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_servers
    #   <p>An array of resource servers and the details of their configuration. For each, the
    #               response includes names, identifiers, and custom scopes.</p>
    #   @return [Array<Types::ResourceServerType>]
    # @!attribute next_token
    #   <p>The identifier that Amazon Cognito returned with the previous request to this operation. When 
    #   you include a pagination token in your request, Amazon Cognito returns the next set of items in 
    #   the list. By use of this token, you can paginate through the full list of items.</p>
    #   @return [String]
    class ListResourceServersResponse < Struct.new(
      :resource_servers,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the user pool that the tags are assigned to.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags that are assigned to the user pool.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to list terms documents.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of terms documents that you want Amazon Cognito to return in the
    #               response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list. 
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate 
    #   through the full list of items.</p>
    #   @return [String]
    class ListTermsRequest < Struct.new(
      :user_pool_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute terms
    #   <p>A summary of the requested terms documents. Includes unique identifiers for later
    #               changes to the terms documents.</p>
    #   @return [Array<Types::TermsDescriptionType>]
    # @!attribute next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list. 
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate 
    #   through the full list of items.</p>
    #   @return [String]
    class ListTermsResponse < Struct.new(
      :terms,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to list the user import jobs.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to list import jobs.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of import jobs that you want Amazon Cognito to return in the
    #               response.</p>
    #   @return [Integer]
    # @!attribute pagination_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list. 
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate 
    #   through the full list of items.</p>
    #   @return [String]
    class ListUserImportJobsRequest < Struct.new(
      :user_pool_id,
      :max_results,
      :pagination_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server to the request to list the user import
    #             jobs.</p>
    # @!attribute user_import_jobs
    #   <p>An array of user import jobs from the requested user pool. For each, the response
    #               includes logging destination, status, and the Amazon S3 pre-signed URL for CSV upload.</p>
    #   @return [Array<Types::UserImportJobType>]
    # @!attribute pagination_token
    #   <p>The identifier that Amazon Cognito returned with the previous request to this operation. When 
    #   you include a pagination token in your request, Amazon Cognito returns the next set of items in 
    #   the list. By use of this token, you can paginate through the full list of items.</p>
    #   @return [String]
    class ListUserImportJobsResponse < Struct.new(
      :user_import_jobs,
      :pagination_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to list the user pool clients.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to list user pool clients.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of app clients that you want Amazon Cognito to return in the
    #               response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list. 
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate 
    #   through the full list of items.</p>
    #   @return [String]
    class ListUserPoolClientsRequest < Struct.new(
      :user_pool_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server that lists user pool clients.</p>
    # @!attribute user_pool_clients
    #   <p>An array of app clients and their details. Includes app client ID and name.</p>
    #   @return [Array<Types::UserPoolClientDescription>]
    # @!attribute next_token
    #   <p>The identifier that Amazon Cognito returned with the previous request to this operation. When 
    #   you include a pagination token in your request, Amazon Cognito returns the next set of items in 
    #   the list. By use of this token, you can paginate through the full list of items.</p>
    #   @return [String]
    class ListUserPoolClientsResponse < Struct.new(
      :user_pool_clients,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to list user pools.</p>
    # @!attribute next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list. 
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate 
    #   through the full list of items.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of user pools that you want Amazon Cognito to return in the response.</p>
    #   @return [Integer]
    class ListUserPoolsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response to list user pools.</p>
    # @!attribute user_pools
    #   <p>An array of user pools and their configuration details.</p>
    #   @return [Array<Types::UserPoolDescriptionType>]
    # @!attribute next_token
    #   <p>The identifier that Amazon Cognito returned with the previous request to this operation. When 
    #   you include a pagination token in your request, Amazon Cognito returns the next set of items in 
    #   the list. By use of this token, you can paginate through the full list of items.</p>
    #   @return [String]
    class ListUserPoolsResponse < Struct.new(
      :user_pools,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to view the membership of the requested
    #               group.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group that you want to query for user membership.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of groups that you want Amazon Cognito to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list. 
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate 
    #   through the full list of items.</p>
    #   @return [String]
    class ListUsersInGroupRequest < Struct.new(
      :user_pool_id,
      :group_name,
      :limit,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute users
    #   <p>An array of users who are members in the group, and their attributes.</p>
    #   @return [Array<Types::UserType>]
    # @!attribute next_token
    #   <p>The identifier that Amazon Cognito returned with the previous request to this operation. When 
    #   you include a pagination token in your request, Amazon Cognito returns the next set of items in 
    #   the list. By use of this token, you can paginate through the full list of items.</p>
    #   @return [String]
    class ListUsersInGroupResponse < Struct.new(
      :users,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to list users.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to display or search for users.</p>
    #   @return [String]
    # @!attribute attributes_to_get
    #   <p>A JSON array of user attribute names, for example <code>given_name</code>, that you
    #               want Amazon Cognito to include in the response for each user. When you don't provide an
    #                   <code>AttributesToGet</code> parameter, Amazon Cognito returns all attributes for each
    #               user.</p>
    #            <p>Use <code>AttributesToGet</code> with required attributes in your user pool, or in
    #               conjunction with <code>Filter</code>. Amazon Cognito returns an error if not all users in the
    #               results have set a value for the attribute you request. Attributes that you can't
    #               filter on, including custom attributes, must have a value set in every user profile
    #               before an <code>AttributesToGet</code> parameter returns results.</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of users that you want Amazon Cognito to return in the response.</p>
    #   @return [Integer]
    # @!attribute pagination_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list. 
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate 
    #   through the full list of items.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A filter string of the form <code>"AttributeName Filter-Type "AttributeValue"</code>.
    #               Quotation marks within the filter string must be escaped using the backslash
    #                   (<code>\</code>) character. For example, <code>"family_name =
    #               \"Reddy\""</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>AttributeName</i>: The name of the attribute to search for.
    #                       You can only search for one attribute at a time.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>Filter-Type</i>: For an exact match, use <code>=</code>, for
    #                       example, "<code>given_name = \"Jon\"</code>". For a prefix ("starts with")
    #                       match, use <code>^=</code>, for example, "<code>given_name ^= \"Jon\"</code>".
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>AttributeValue</i>: The attribute value that must be matched
    #                       for each user.</p>
    #               </li>
    #            </ul>
    #            <p>If the filter string is empty, <code>ListUsers</code> returns all users in the user
    #               pool.</p>
    #            <p>You can only search for the following standard attributes:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>username</code> (case-sensitive)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>email</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>phone_number</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>given_name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>family_name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>preferred_username</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cognito:user_status</code> (called <b>Status</b> in the Console) (case-insensitive)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>status (called <b>Enabled</b> in the Console)
    #                           (case-sensitive)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sub</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Custom attributes aren't searchable.</p>
    #            <note>
    #               <p>You can also list users with a client-side filter. The server-side filter matches
    #                   no more than one attribute. For an advanced search, use a client-side filter with
    #                   the <code>--query</code> parameter of the <code>list-users</code> action in the
    #                   CLI. When you use a client-side filter, ListUsers returns a paginated list of zero
    #                   or more users. You can receive multiple pages in a row with zero results. Repeat the
    #                   query with each pagination token that is returned until you receive a null
    #                   pagination token value, and then review the combined result. </p>
    #               <p>For more information about server-side and client-side filtering, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html">FilteringCLI output</a> in the <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html">Command Line Interface
    #                       User Guide</a>. </p>
    #            </note>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api">Searching for Users Using the ListUsers API</a> and <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples">Examples of Using the ListUsers API</a> in the <i>Amazon Cognito Developer
    #                   Guide</i>.</p>
    #   @return [String]
    class ListUsersRequest < Struct.new(
      :user_pool_id,
      :attributes_to_get,
      :limit,
      :pagination_token,
      :filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the request to list users.</p>
    # @!attribute users
    #   <p>An array of user pool users who match your query, and their attributes.</p>
    #   @return [Array<Types::UserType>]
    # @!attribute pagination_token
    #   <p>The identifier that Amazon Cognito returned with the previous request to this operation. When 
    #   you include a pagination token in your request, Amazon Cognito returns the next set of items in 
    #   the list. By use of this token, you can paginate through the full list of items.</p>
    #   @return [String]
    class ListUsersResponse < Struct.new(
      :users,
      :pagination_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list. 
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate 
    #   through the full list of items.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of the user's passkey credentials that you want to
    #               return.</p>
    #   @return [Integer]
    class ListWebAuthnCredentialsRequest < Struct.new(
      :access_token,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute credentials
    #   <p>A list of registered passkeys for a user.</p>
    #   @return [Array<Types::WebAuthnCredentialDescription>]
    # @!attribute next_token
    #   <p>The identifier that Amazon Cognito returned with the previous request to this operation. When 
    #   you include a pagination token in your request, Amazon Cognito returns the next set of items in 
    #   the list. By use of this token, you can paginate through the full list of items.</p>
    #   @return [String]
    class ListWebAuthnCredentialsResponse < Struct.new(
      :credentials,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of user event logs to an external Amazon Web Services service like
    #                 Amazon Data Firehose, Amazon S3, or Amazon CloudWatch Logs.</p>
    # @!attribute log_level
    #   <p>The <code>errorlevel</code> selection of logs that a user pool sends for detailed
    #               activity logging. To send <code>userNotification</code> activity with <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/exporting-quotas-and-usage.html">information
    #                   about message delivery</a>, choose <code>ERROR</code> with
    #                   <code>CloudWatchLogsConfiguration</code>. To send <code>userAuthEvents</code>
    #               activity with user logs from threat protection with the Plus feature plan, choose
    #                   <code>INFO</code> with one of <code>CloudWatchLogsConfiguration</code>,
    #                   <code>FirehoseConfiguration</code>, or <code>S3Configuration</code>.</p>
    #   @return [String]
    # @!attribute event_source
    #   <p>The source of events that your user pool sends for logging. To send error-level logs
    #               about user notification activity, set to <code>userNotification</code>. To send
    #               info-level logs about threat-protection user activity in user pools with the Plus
    #               feature plan, set to <code>userAuthEvents</code>.</p>
    #   @return [String]
    # @!attribute cloud_watch_logs_configuration
    #   <p>The CloudWatch log group destination of user pool detailed activity logs, or of user
    #               activity log export with threat protection.</p>
    #   @return [Types::CloudWatchLogsConfigurationType]
    # @!attribute s3_configuration
    #   <p>The Amazon S3 bucket destination of user activity log export with threat protection.
    #               To activate this setting, your user pool must be on the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html">
    #                        Plus tier</a>.</p>
    #   @return [Types::S3ConfigurationType]
    # @!attribute firehose_configuration
    #   <p>The Amazon Data Firehose stream destination of user activity log export with threat protection.
    #               To activate this setting, your user pool must be on the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html">
    #                        Plus tier</a>.</p>
    #   @return [Types::FirehoseConfigurationType]
    class LogConfigurationType < Struct.new(
      :log_level,
      :event_source,
      :cloud_watch_logs_configuration,
      :s3_configuration,
      :firehose_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The logging parameters of a user pool, as returned in the response to a
    #                 <code>GetLogDeliveryConfiguration</code> request.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you configured logging.</p>
    #   @return [String]
    # @!attribute log_configurations
    #   <p>A logging destination of a user pool. User pools can have multiple logging
    #               destinations for message-delivery and user-activity logs.</p>
    #   @return [Array<Types::LogConfigurationType>]
    class LogDeliveryConfigurationType < Struct.new(
      :user_pool_id,
      :log_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when Amazon Cognito can't find a multi-factor authentication
    #             (MFA) method.</p>
    # @!attribute message
    #   <p>The message returned when Amazon Cognito throws an MFA method not found
    #               exception.</p>
    #   @return [String]
    class MFAMethodNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             <i>This data type is no longer supported.</i> Applies only to SMS
    #             multi-factor authentication (MFA) configurations. Does not apply to time-based one-time
    #             password (TOTP) software token MFA configurations.</p>
    # @!attribute delivery_medium
    #   <p>The delivery medium to send the MFA code. You can use this parameter to set only the
    #                   <code>SMS</code> delivery medium value.</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The attribute name of the MFA option type. The only valid value is
    #                   <code>phone_number</code>.</p>
    #   @return [String]
    class MFAOptionType < Struct.new(
      :delivery_medium,
      :attribute_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when you attempt to apply a managed login branding style to
    #             an app client that already has an assigned style.</p>
    # @!attribute message
    #   @return [String]
    class ManagedLoginBrandingExistsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A managed login branding style that's assigned to a user pool app client.</p>
    # @!attribute managed_login_branding_id
    #   <p>The ID of the managed login branding style.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The user pool where the branding style is assigned.</p>
    #   @return [String]
    # @!attribute use_cognito_provided_values
    #   <p>When true, applies the default branding style options. This option reverts to default
    #               style options that are managed by Amazon Cognito. You can modify them later in the branding
    #               editor.</p>
    #            <p>When you specify <code>true</code> for this option, you must also omit values for
    #                   <code>Settings</code> and <code>Assets</code> in the request.</p>
    #   @return [Boolean]
    # @!attribute settings
    #   <p>A JSON file, encoded as a <code>Document</code> type, with the the settings that you
    #               want to apply to your style.</p>
    #            <p>The following components are not currently implemented and reserved for future
    #               use:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>signUp</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>instructions</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sessionTimerDisplay</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>languageSelector</code> (for localization, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-localization">Managed login localization)</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [JSON]
    # @!attribute assets
    #   <p>An array of image files that you want to apply to roles like backgrounds, logos, and
    #               icons. Each object must also indicate whether it is for dark mode, light mode, or
    #               browser-adaptive mode.</p>
    #   @return [Array<Types::AssetType>]
    # @!attribute creation_date
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date and time when the item was modified. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    class ManagedLoginBrandingType < Struct.new(
      :managed_login_branding_id,
      :user_pool_id,
      :use_cognito_provided_values,
      :settings,
      :assets,
      :creation_date,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:use_cognito_provided_values] = false unless options.key?(:use_cognito_provided_values)
        super
      end
    end

    # <p>The message template structure.</p>
    # @!attribute sms_message
    #   <p>The message template for SMS messages.</p>
    #   @return [String]
    # @!attribute email_message
    #   <p>The message template for email messages. EmailMessage is allowed only if <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is DEVELOPER. </p>
    #   @return [String]
    # @!attribute email_subject
    #   <p>The subject line for email messages. EmailSubject is allowed only if <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is DEVELOPER. </p>
    #   @return [String]
    class MessageTemplateType < Struct.new(
      :sms_message,
      :email_message,
      :email_subject,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information that your user pool responds with in <code>AuthenticationResult</code>when
    #             you configure it to remember devices and a user signs in with an unrecognized device.
    #             Amazon Cognito presents a new device key that you can use to set up <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">device authentication</a> in a "Remember me on this device"
    #             authentication model.</p>
    # @!attribute device_key
    #   <p>The device key, an identifier used in generating the
    #                   <code>DEVICE_PASSWORD_VERIFIER</code> for device SRP authentication.</p>
    #   @return [String]
    # @!attribute device_group_key
    #   <p>The device group key, an identifier used in generating the
    #                   <code>DEVICE_PASSWORD_VERIFIER</code> for device SRP authentication.</p>
    #   @return [String]
    class NewDeviceMetadataType < Struct.new(
      :device_key,
      :device_group_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a user isn't authorized.</p>
    # @!attribute message
    #   <p>The message returned when the Amazon Cognito service returns a not authorized exception.</p>
    #   @return [String]
    class NotAuthorizedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for Amazon SES email messages that threat protection sends to a user when
    #             your adaptive authentication automated response has a <i>Notify</i>
    #             action.</p>
    # @!attribute from
    #   <p>The email address that sends the email message. The address must be either
    #               individually verified with Amazon Simple Email Service, or from a domain that has been verified with
    #               Amazon SES.</p>
    #   @return [String]
    # @!attribute reply_to
    #   <p>The reply-to email address of an email template.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) of the identity that is associated with the sending
    #               authorization policy. This identity permits Amazon Cognito to send for the email address
    #               specified in the <code>From</code> parameter.</p>
    #   @return [String]
    # @!attribute block_email
    #   <p>The template for the email message that your user pool sends when a detected risk
    #               event is blocked.</p>
    #   @return [Types::NotifyEmailType]
    # @!attribute no_action_email
    #   <p>The template for the email message that your user pool sends when no action is taken
    #               in response to a detected risk.</p>
    #   @return [Types::NotifyEmailType]
    # @!attribute mfa_email
    #   <p>The template for the email message that your user pool sends when MFA is challenged in
    #               response to a detected risk.</p>
    #   @return [Types::NotifyEmailType]
    class NotifyConfigurationType < Struct.new(
      :from,
      :reply_to,
      :source_arn,
      :block_email,
      :no_action_email,
      :mfa_email,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The template for email messages that threat protection sends to a user when your
    #             threat protection automated response has a <i>Notify</i> action.</p>
    # @!attribute subject
    #   <p>The subject of the threat protection email notification.</p>
    #   @return [String]
    # @!attribute html_body
    #   <p>The body of an email notification formatted in HTML. Choose an <code>HtmlBody</code>
    #               or a <code>TextBody</code> to send an HTML-formatted or plaintext message,
    #               respectively.</p>
    #   @return [String]
    # @!attribute text_body
    #   <p>The body of an email notification formatted in plaintext. Choose an
    #                   <code>HtmlBody</code> or a <code>TextBody</code> to send an HTML-formatted or
    #               plaintext message, respectively.</p>
    #   @return [String]
    class NotifyEmailType < Struct.new(
      :subject,
      :html_body,
      :text_body,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The minimum and maximum values of an attribute that is of the number type, for example
    #                 <code>custom:age</code>.</p>
    # @!attribute min_value
    #   <p>The minimum value of an attribute that is of the number data type.</p>
    #   @return [String]
    # @!attribute max_value
    #   <p>The maximum length of a number attribute value. Must be a number less than or equal to
    #                   <code>2^1023</code>, represented as a string with a length of 131072 characters or
    #               fewer.</p>
    #   @return [String]
    class NumberAttributeConstraintsType < Struct.new(
      :min_value,
      :max_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The message returned when a user's new password matches a previous password and
    #             doesn't comply with the password-history policy.</p>
    # @!attribute message
    #   @return [String]
    class PasswordHistoryPolicyViolationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The password policy settings for a user pool, including complexity, history, and
    #             length requirements.</p>
    # @!attribute minimum_length
    #   <p>The minimum length of the password in the policy that you have set. This value can't
    #               be less than 6.</p>
    #   @return [Integer]
    # @!attribute require_uppercase
    #   <p>The requirement in a password policy that users must include at least one uppercase
    #               letter in their password.</p>
    #   @return [Boolean]
    # @!attribute require_lowercase
    #   <p>The requirement in a password policy that users must include at least one lowercase
    #               letter in their password.</p>
    #   @return [Boolean]
    # @!attribute require_numbers
    #   <p>The requirement in a password policy that users must include at least one number in
    #               their password.</p>
    #   @return [Boolean]
    # @!attribute require_symbols
    #   <p>The requirement in a password policy that users must include at least one symbol in
    #               their password.</p>
    #   @return [Boolean]
    # @!attribute password_history_size
    #   <p>The number of previous passwords that you want Amazon Cognito to restrict each user from
    #               reusing. Users can't set a password that matches any of <code>n</code> previous
    #               passwords, where <code>n</code> is the value of <code>PasswordHistorySize</code>.</p>
    #   @return [Integer]
    # @!attribute temporary_password_validity_days
    #   <p>The number of days a temporary password is valid in the password policy. If the user
    #               doesn't sign in during this time, an administrator must reset their password. Defaults
    #               to <code>7</code>. If you submit a value of <code>0</code>, Amazon Cognito treats it as a null
    #               value and sets <code>TemporaryPasswordValidityDays</code> to its default value.</p>
    #            <note>
    #               <p>When you set <code>TemporaryPasswordValidityDays</code> for a user pool, you can
    #                   no longer set a value for the legacy <code>UnusedAccountValidityDays</code>
    #                   parameter in that user pool.</p>
    #            </note>
    #   @return [Integer]
    class PasswordPolicyType < Struct.new(
      :minimum_length,
      :require_uppercase,
      :require_lowercase,
      :require_numbers,
      :require_symbols,
      :password_history_size,
      :temporary_password_validity_days,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:require_uppercase] = false unless options.key?(:require_uppercase)
        options[:require_lowercase] = false unless options.key?(:require_lowercase)
        options[:require_numbers] = false unless options.key?(:require_numbers)
        options[:require_symbols] = false unless options.key?(:require_symbols)
        options[:temporary_password_validity_days] = 0 unless options.key?(:temporary_password_validity_days)
        super
      end
    end

    # <p>This exception is thrown when a password reset is required.</p>
    # @!attribute message
    #   <p>The message returned when a password reset is required.</p>
    #   @return [String]
    class PasswordResetRequiredException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The properties of a pre token generation Lambda trigger.</p>
    # @!attribute lambda_version
    #   <p>The user pool trigger version of the request that Amazon Cognito sends to your Lambda function. Higher-numbered versions add fields that support new features.</p>
    #   @return [String]
    # @!attribute lambda_arn
    #   <p>The Amazon Resource Name (ARN) of the function that you want to assign to your Lambda trigger.</p>
    #            <p>This parameter and the <code>PreTokenGeneration</code> property of
    #                   <code>LambdaConfig</code> have the same value. For new instances of pre token
    #               generation triggers, set <code>LambdaArn</code>.</p>
    #   @return [String]
    class PreTokenGenerationVersionConfigType < Struct.new(
      :lambda_version,
      :lambda_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a precondition is not met.</p>
    # @!attribute message
    #   <p>The message returned when a precondition is not met.</p>
    #   @return [String]
    class PreconditionNotMetException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a user pool identity provider (IdP), including name and type.</p>
    # @!attribute provider_name
    #   <p>The name of the IdP, for example <code>MySAMLProvider</code>.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The type of the provider, for example <code>SAML</code>. Amazon Cognito supports SAML 2.0,
    #               OIDC, and social IdPs. User pools list supported social IdPs by name in this response
    #               parameter: Facebook, Google, Login with Amazon, and Sign in with Apple.</p>
    #   @return [String]
    # @!attribute last_modified_date
    #   <p>The date and time when the item was modified. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute creation_date
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    class ProviderDescription < Struct.new(
      :provider_name,
      :provider_type,
      :last_modified_date,
      :creation_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The characteristics of a source or destination user for linking a federated user
    #             profile to a local user profile.</p>
    # @!attribute provider_name
    #   <p>The name of the provider, such as Facebook, Google, or Login with Amazon.</p>
    #   @return [String]
    # @!attribute provider_attribute_name
    #   <p>The name of the provider attribute to link to, such as <code>NameID</code>.</p>
    #   @return [String]
    # @!attribute provider_attribute_value
    #   <p>The value of the provider attribute to link to, such as
    #               <code>xxxxx_account</code>.</p>
    #   @return [String]
    class ProviderUserIdentifierType < Struct.new(
      :provider_name,
      :provider_attribute_name,
      :provider_attribute_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A recovery option for a user. The <code>AccountRecoverySettingType</code> data type is
    #             an array of this object. Each <code>RecoveryOptionType</code> has a priority property
    #             that determines whether it is a primary or secondary option.</p>
    #          <p>For example, if <code>verified_email</code> has a priority of <code>1</code> and
    #                 <code>verified_phone_number</code> has a priority of <code>2</code>, your user pool
    #             sends account-recovery messages to a verified email address but falls back to an SMS
    #             message if the user has a verified phone number. The <code>admin_only</code> option
    #             prevents self-service account recovery.</p>
    # @!attribute priority
    #   <p>Your priority preference for using the specified attribute in account recovery. The
    #               highest priority is <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The recovery method that this object sets a recovery option for.</p>
    #   @return [String]
    class RecoveryOptionType < Struct.new(
      :priority,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is throw when your application requests token refresh with a refresh
    #             token that has been invalidated by refresh-token rotation.</p>
    # @!attribute message
    #   @return [String]
    class RefreshTokenReuseException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of your app client for refresh token rotation. When enabled, your
    #             app client issues new ID, access, and refresh tokens when users renew their sessions
    #             with refresh tokens. When disabled, token refresh issues only ID and access
    #             tokens.</p>
    # @!attribute feature
    #   <p>The state of refresh token rotation for the current app client.</p>
    #   @return [String]
    # @!attribute retry_grace_period_seconds
    #   <p>When you request a token refresh with <code>GetTokensFromRefreshToken</code>, the
    #               original refresh token that you're rotating out can remain valid for a period of time of
    #               up to 60 seconds. This allows for client-side retries. When
    #                   <code>RetryGracePeriodSeconds</code> is <code>0</code>, the grace period is disabled
    #               and a successful request immediately invalidates the submitted refresh token.</p>
    #   @return [Integer]
    class RefreshTokenRotationType < Struct.new(
      :feature,
      :retry_grace_period_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to resend the confirmation code.</p>
    # @!attribute client_id
    #   <p>The ID of the user pool app client where the user signed up.</p>
    #   @return [String]
    # @!attribute secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message. For more information
    #               about <code>SecretHash</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>.</p>
    #   @return [String]
    # @!attribute user_context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat 
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    #   @return [Types::UserContextDataType]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the 
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier, 
    #   email address, or phone number.</p>
    #   @return [Types::AnalyticsMetadataType]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #            <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the ResendConfirmationCode API action, Amazon Cognito invokes the function that is
    #               assigned to the <i>custom message</i> trigger. When Amazon Cognito invokes this
    #               function, it passes a JSON payload, which the function receives as input. This payload
    #               contains a <code>clientMetadata</code> attribute, which provides the data that you
    #               assigned to the ClientMetadata parameter in your ResendConfirmationCode request. In your
    #               function code in Lambda, you can process the <code>clientMetadata</code> value to enhance
    #               your workflow for your specific needs.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    class ResendConfirmationCodeRequest < Struct.new(
      :client_id,
      :secret_hash,
      :user_context_data,
      :username,
      :analytics_metadata,
      :client_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the server when Amazon Cognito makes the request to resend a confirmation
    #             code.</p>
    # @!attribute code_delivery_details
    #   <p>Information about the phone number or email address that Amazon Cognito sent the confirmation
    #               code to.</p>
    #   @return [Types::CodeDeliveryDetailsType]
    class ResendConfirmationCodeResponse < Struct.new(
      :code_delivery_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the Amazon Cognito service can't find the requested
    #             resource.</p>
    # @!attribute message
    #   <p>The message returned when the Amazon Cognito service returns a resource not found
    #               exception.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One custom scope associated with a user pool resource server. This data type is a
    #             member of <code>ResourceServerScopeType</code>. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html">
    #                 Scopes, M2M, and API authorization with resource servers</a>. </p>
    # @!attribute scope_name
    #   <p>The name of the scope. Amazon Cognito renders custom scopes in the format
    #                   <code>resourceServerIdentifier/ScopeName</code>. For example, if this parameter is
    #                   <code>exampleScope</code> in the resource server with the identifier
    #                   <code>exampleResourceServer</code>, you request and receive the scope
    #                   <code>exampleResourceServer/exampleScope</code>.</p>
    #   @return [String]
    # @!attribute scope_description
    #   <p>A friendly description of a custom scope.</p>
    #   @return [String]
    class ResourceServerScopeType < Struct.new(
      :scope_name,
      :scope_description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a resource server configuration and associated custom scopes in a user
    #             pool.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the resource server configuration.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>A unique resource server identifier for the resource server. The identifier can be an
    #               API friendly name like <code>solar-system-data</code>. You can also set an API URL like
    #                   <code>https://solar-system-data-api.example.com</code> as your identifier.</p>
    #            <p>Amazon Cognito represents scopes in the access token in the format
    #                   <code>$resource-server-identifier/$scope</code>. Longer scope-identifier strings
    #               increase the size of your access tokens.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource server.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>A list of scopes that are defined for the resource server.</p>
    #   @return [Array<Types::ResourceServerScopeType>]
    class ResourceServerType < Struct.new(
      :user_pool_id,
      :identifier,
      :name,
      :scopes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to respond to an authentication challenge.</p>
    # @!attribute client_id
    #   <p>The ID of the app client where the user is signing in.</p>
    #   @return [String]
    # @!attribute challenge_name
    #   <p>The name of the challenge that you are responding to.</p>
    #            <note>
    #               <p>You can't respond to an <code>ADMIN_NO_SRP_AUTH</code> challenge with this
    #                   operation.</p>
    #            </note>
    #            <p>Possible challenges include the following:</p>
    #            <note>
    #               <p>All of the following challenges require <code>USERNAME</code> and, when the app
    #                   client has a client secret, <code>SECRET_HASH</code> in the parameters. Include a 
    #                   <code>DEVICE_KEY</code> for device authentication.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WEB_AUTHN</code>: Respond to the challenge with the results of a
    #                       successful authentication with a WebAuthn authenticator, or passkey, as 
    #                       <code>CREDENTIAL</code>. Examples of WebAuthn authenticators include 
    #                       biometric devices and security keys.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD</code>: Respond with the user's password as <code>PASSWORD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_SRP</code>: Respond with the initial SRP secret as <code>SRP_A</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SELECT_CHALLENGE</code>: Respond with a challenge selection as <code>ANSWER</code>. 
    #                   It must be one of the challenge types in the <code>AvailableChallenges</code> response 
    #                   parameter. Add the parameters of the selected challenge, for example <code>USERNAME</code>
    #                   and <code>SMS_OTP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_MFA</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_MFA</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_OTP</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_OTP_CODE</code> .</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_OTP</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_OTP_CODE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_VERIFIER</code>: Respond with the second stage of SRP secrets as
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, 
    #                           and <code>TIMESTAMP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication
    #                       flow determines that the user should pass another challenge before tokens are
    #                       issued. The parameters of the challenge are determined by your Lambda function
    #                       and issued in the <code>ChallengeParameters</code> of a challenge response.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_SRP_AUTH</code>: Respond with the initial parameters of device SRP 
    #                   authentication. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_PASSWORD_VERIFIER</code>: Respond with
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>,
    #                           <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after
    #                       client-side SRP calculations. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_PASSWORD_REQUIRED</code>: For users who are required to change their
    #                       passwords after successful first login. Respond to this challenge with 
    #                       <code>NEW_PASSWORD</code> and any required attributes that Amazon Cognito returned in 
    #                       the <code>requiredAttributes</code> parameter. You can also set values for 
    #                       attributes that aren't required by your user pool and that your app client 
    #                       can write.</p>
    #                  <p>Amazon Cognito only returns this challenge for users who have temporary passwords.
    #                       When you create passwordless users, you must provide values for all required 
    #                       attributes.</p>
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value. 
    #   In <code>AdminRespondToAuthChallenge</code> or <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the 
    #   <code>requiredAttributes</code> parameter, then use the <code>AdminUpdateUserAttributes</code> or <code>UpdateUserAttributes</code> API 
    #   operation to modify the value of any additional attributes.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MFA_SETUP</code>: For users who are required to setup an MFA factor
    #                       before they can sign in. The MFA types activated for the user pool will be
    #                       listed in the challenge parameters <code>MFAS_CAN_SETUP</code> value. </p>
    #                  <p>To set up time-based one-time password (TOTP) MFA, use the session returned 
    #                       in this challenge from <code>InitiateAuth</code> or <code>AdminInitiateAuth</code> 
    #                       as an input to <code>AssociateSoftwareToken</code>. Then, use the session returned
    #                       by <code>VerifySoftwareToken</code> as an input to 
    #                       <code>RespondToAuthChallenge</code> or <code>AdminRespondToAuthChallenge</code>
    #                   with challenge name <code>MFA_SETUP</code> to complete sign-in.
    #                   </p>
    #                  <p>To set up SMS or email MFA, collect a <code>phone_number</code> or 
    #                       <code>email</code> attribute for the user. Then restart the authentication 
    #                       flow with an <code>InitiateAuth</code> or <code>AdminInitiateAuth</code> request.
    #                   </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute session
    #   <p>The session identifier that maintains the state of authentication requests and
    #               challenge responses. If an <code>AdminInitiateAuth</code> or
    #                   <code>AdminRespondToAuthChallenge</code> API request results in a determination that
    #               your application must pass another challenge, Amazon Cognito returns a session with other
    #               challenge parameters. Send this session identifier, unmodified, to the next
    #                   <code>AdminRespondToAuthChallenge</code> request.</p>
    #   @return [String]
    # @!attribute challenge_responses
    #   <p>The responses to the challenge that you received in the previous request. Each
    #       challenge has its own required response parameters. The following examples are partial
    #       JSON request bodies that highlight challenge-response parameters.</p>
    #            <important>
    #               <p>You must provide a SECRET_HASH parameter in all challenge responses to an app
    #           client that has a client secret. Include a <code>DEVICE_KEY</code> for device
    #           authentication.</p>
    #            </important>
    #            <dl>
    #               <dt>SELECT_CHALLENGE</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #               "USERNAME": "[username]",
    #               "ANSWER": "[Challenge name]"}</code>
    #                  </p>
    #                  <p>Available challenges are <code>PASSWORD</code>, <code>PASSWORD_SRP</code>, 
    #               <code>EMAIL_OTP</code>, <code>SMS_OTP</code>, and <code>WEB_AUTHN</code>.</p>
    #                  <p>Complete authentication in the <code>SELECT_CHALLENGE</code> response for
    #               <code>PASSWORD</code>, <code>PASSWORD_SRP</code>, and <code>WEB_AUTHN</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "WEB_AUTHN",
    #                     "USERNAME": "[username]",
    #                     "CREDENTIAL": "[AuthenticationResponseJSON]"}</code>
    #                        </p>
    #                        <p>See <a href="https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson">
    #                     AuthenticationResponseJSON</a>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "PASSWORD",
    #                     "USERNAME": "[username]",
    #                     "PASSWORD": "[password]"}</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "PASSWORD_SRP",
    #                     "USERNAME": "[username]",
    #                     "SRP_A": "[SRP_A]"}</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For <code>SMS_OTP</code> and <code>EMAIL_OTP</code>, respond with the
    #               username and answer. Your user pool will send a code for the user to submit in
    #               the next challenge response.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "SMS_OTP",
    #                     "USERNAME": "[username]"}</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "EMAIL_OTP",
    #                     "USERNAME": "[username]"}</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>WEB_AUTHN</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "WEB_AUTHN", "ChallengeResponses": {
    #                     "USERNAME": "[username]",
    #                     "CREDENTIAL": "[AuthenticationResponseJSON]"}</code>
    #                  </p>
    #                  <p>See <a href="https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson">
    #                     AuthenticationResponseJSON</a>.</p>
    #               </dd>
    #               <dt>PASSWORD</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "PASSWORD", "ChallengeResponses": {
    #                     "USERNAME": "[username]",
    #                     "PASSWORD": "[password]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>PASSWORD_SRP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "PASSWORD_SRP", "ChallengeResponses": {
    #                     "USERNAME": "[username]",
    #                     "SRP_A": "[SRP_A]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>SMS_OTP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SMS_OTP", "ChallengeResponses": 
    #               {"SMS_OTP_CODE": "[code]", "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>EMAIL_OTP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "EMAIL_OTP", "ChallengeResponses": {"EMAIL_OTP_CODE":
    #                       "[code]", "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>SMS_MFA</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SMS_MFA", "ChallengeResponses": {"SMS_MFA_CODE":
    #                       "[code]", "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>PASSWORD_VERIFIER</dt>
    #               <dd>
    #                  <p>This challenge response is part of the SRP flow. Amazon Cognito requires 
    #               that your application respond to this challenge within a few seconds. When
    #               the response time exceeds this period, your user pool returns a
    #               <code>NotAuthorizedException</code> error.</p>
    #                  <p>
    #                     <code>"ChallengeName": "PASSWORD_VERIFIER", "ChallengeResponses":
    #                       {"PASSWORD_CLAIM_SIGNATURE": "[claim_signature]",
    #                       "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP":
    #                       [timestamp], "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>CUSTOM_CHALLENGE</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "CUSTOM_CHALLENGE", "ChallengeResponses":
    #                       {"USERNAME": "[username]", "ANSWER": "[challenge_answer]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>NEW_PASSWORD_REQUIRED</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "NEW_PASSWORD_REQUIRED", "ChallengeResponses":
    #                       {"NEW_PASSWORD": "[new_password]", "USERNAME":
    #                   "[username]"}</code>
    #                  </p>
    #                  <p>To set any required attributes that <code>InitiateAuth</code> returned in
    #                   an <code>requiredAttributes</code> parameter, add
    #                       <code>"userAttributes.[attribute_name]": "[attribute_value]"</code>.
    #                   This parameter can also set values for writable attributes that aren't
    #                   required by your user pool.</p>
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value. 
    #   In <code>AdminRespondToAuthChallenge</code> or <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the 
    #   <code>requiredAttributes</code> parameter, then use the <code>AdminUpdateUserAttributes</code> or <code>UpdateUserAttributes</code> API 
    #   operation to modify the value of any additional attributes.</p>
    #                  </note>
    #               </dd>
    #               <dt>SOFTWARE_TOKEN_MFA</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SOFTWARE_TOKEN_MFA", "ChallengeResponses":
    #                       {"USERNAME": "[username]", "SOFTWARE_TOKEN_MFA_CODE":
    #                       [authenticator_code]}</code>
    #                  </p>
    #               </dd>
    #               <dt>DEVICE_SRP_AUTH</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "DEVICE_SRP_AUTH", "ChallengeResponses": {"USERNAME":
    #                   "[username]", "DEVICE_KEY": "[device_key]", "SRP_A":
    #                   "[srp_a]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>DEVICE_PASSWORD_VERIFIER</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "DEVICE_PASSWORD_VERIFIER", "ChallengeResponses":
    #                   {"DEVICE_KEY": "[device_key]", "PASSWORD_CLAIM_SIGNATURE":
    #                   "[claim_signature]", "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]",
    #                   "TIMESTAMP": [timestamp], "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>MFA_SETUP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "MFA_SETUP", "ChallengeResponses": {"USERNAME":
    #                   "[username]"}, "SESSION": "[Session ID from
    #                   VerifySoftwareToken]"</code>
    #                  </p>
    #               </dd>
    #               <dt>SELECT_MFA_TYPE</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SELECT_MFA_TYPE", "ChallengeResponses": {"USERNAME":
    #                   "[username]", "ANSWER": "[SMS_MFA|EMAIL_MFA|SOFTWARE_TOKEN_MFA]"}</code>
    #                  </p>
    #               </dd>
    #            </dl>
    #            <p>For more information about <code>SECRET_HASH</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>. For information about
    #       <code>DEVICE_KEY</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the 
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier, 
    #   email address, or phone number.</p>
    #   @return [Types::AnalyticsMetadataType]
    # @!attribute user_context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat 
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    #   @return [Types::UserContextDataType]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #            <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the RespondToAuthChallenge API action, Amazon Cognito invokes any
    #               functions that are assigned to the following triggers: <i>post
    #                   authentication</i>, <i>pre token generation</i>,
    #                   <i>define auth challenge</i>, <i>create auth
    #                   challenge</i>, and <i>verify auth challenge</i>. When Amazon Cognito
    #               invokes any of these functions, it passes a JSON payload, which the function receives as
    #               input. This payload contains a <code>clientMetadata</code> attribute, which provides the
    #               data that you assigned to the ClientMetadata parameter in your RespondToAuthChallenge
    #               request. In your function code in Lambda, you can process the
    #                   <code>clientMetadata</code> value to enhance your workflow for your specific
    #               needs.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    class RespondToAuthChallengeRequest < Struct.new(
      :client_id,
      :challenge_name,
      :session,
      :challenge_responses,
      :analytics_metadata,
      :user_context_data,
      :client_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response to respond to the authentication challenge.</p>
    # @!attribute challenge_name
    #   <p>The name of the next challenge that you must respond to.</p>
    #            <p>Possible challenges include the following:</p>
    #            <note>
    #               <p>All of the following challenges require <code>USERNAME</code> and, when the app
    #                   client has a client secret, <code>SECRET_HASH</code> in the parameters. Include a 
    #                   <code>DEVICE_KEY</code> for device authentication.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WEB_AUTHN</code>: Respond to the challenge with the results of a
    #                       successful authentication with a WebAuthn authenticator, or passkey, as 
    #                       <code>CREDENTIAL</code>. Examples of WebAuthn authenticators include 
    #                       biometric devices and security keys.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD</code>: Respond with the user's password as <code>PASSWORD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_SRP</code>: Respond with the initial SRP secret as <code>SRP_A</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SELECT_CHALLENGE</code>: Respond with a challenge selection as <code>ANSWER</code>. 
    #                   It must be one of the challenge types in the <code>AvailableChallenges</code> response 
    #                   parameter. Add the parameters of the selected challenge, for example <code>USERNAME</code>
    #                   and <code>SMS_OTP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_MFA</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_MFA</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_OTP</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_OTP_CODE</code> .</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_OTP</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_OTP_CODE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_VERIFIER</code>: Respond with the second stage of SRP secrets as
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, 
    #                           and <code>TIMESTAMP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication
    #                       flow determines that the user should pass another challenge before tokens are
    #                       issued. The parameters of the challenge are determined by your Lambda function
    #                       and issued in the <code>ChallengeParameters</code> of a challenge response.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_SRP_AUTH</code>: Respond with the initial parameters of device SRP 
    #                   authentication. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_PASSWORD_VERIFIER</code>: Respond with
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>,
    #                           <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after
    #                       client-side SRP calculations. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_PASSWORD_REQUIRED</code>: For users who are required to change their
    #                       passwords after successful first login. Respond to this challenge with 
    #                       <code>NEW_PASSWORD</code> and any required attributes that Amazon Cognito returned in 
    #                       the <code>requiredAttributes</code> parameter. You can also set values for 
    #                       attributes that aren't required by your user pool and that your app client 
    #                       can write.</p>
    #                  <p>Amazon Cognito only returns this challenge for users who have temporary passwords.
    #                       When you create passwordless users, you must provide values for all required 
    #                       attributes.</p>
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value. 
    #   In <code>AdminRespondToAuthChallenge</code> or <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the 
    #   <code>requiredAttributes</code> parameter, then use the <code>AdminUpdateUserAttributes</code> or <code>UpdateUserAttributes</code> API 
    #   operation to modify the value of any additional attributes.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MFA_SETUP</code>: For users who are required to setup an MFA factor
    #                       before they can sign in. The MFA types activated for the user pool will be
    #                       listed in the challenge parameters <code>MFAS_CAN_SETUP</code> value. </p>
    #                  <p>To set up time-based one-time password (TOTP) MFA, use the session returned 
    #                       in this challenge from <code>InitiateAuth</code> or <code>AdminInitiateAuth</code> 
    #                       as an input to <code>AssociateSoftwareToken</code>. Then, use the session returned
    #                       by <code>VerifySoftwareToken</code> as an input to 
    #                       <code>RespondToAuthChallenge</code> or <code>AdminRespondToAuthChallenge</code>
    #                   with challenge name <code>MFA_SETUP</code> to complete sign-in.
    #                   </p>
    #                  <p>To set up SMS or email MFA, collect a <code>phone_number</code> or 
    #                       <code>email</code> attribute for the user. Then restart the authentication 
    #                       flow with an <code>InitiateAuth</code> or <code>AdminInitiateAuth</code> request.
    #                   </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute session
    #   <p>The session identifier that maintains the state of authentication requests and
    #               challenge responses. If an <code>InitiateAuth</code> or
    #                   <code>RespondToAuthChallenge</code> API request results in a determination that your
    #               application must pass another challenge, Amazon Cognito returns a session with other challenge
    #               parameters. Send this session identifier, unmodified, to the next
    #                   <code>RespondToAuthChallenge</code> request.</p>
    #   @return [String]
    # @!attribute challenge_parameters
    #   <p>The parameters that define your response to the next challenge.</p>
    #   @return [Hash<String, String>]
    # @!attribute authentication_result
    #   <p>The outcome of a successful authentication process. After your application has passed
    #               all challenges, Amazon Cognito returns an <code>AuthenticationResult</code> with the JSON web
    #               tokens (JWTs) that indicate successful sign-in.</p>
    #   @return [Types::AuthenticationResultType]
    class RespondToAuthChallengeResponse < Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute token
    #   <p>The refresh token that you want to revoke.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The ID of the app client where the token that you want to revoke was issued.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The client secret of the requested app client, if the client has a secret.</p>
    #   @return [String]
    class RevokeTokenRequest < Struct.new(
      :token,
      :client_id,
      :client_secret,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RevokeTokenResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The settings of risk configuration for threat protection with threat protection in a
    #             user pool.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that has the risk configuration applied.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The app client where this configuration is applied. When this parameter isn't present,
    #               the risk configuration applies to all user pool app clients that don't have
    #               client-level settings.</p>
    #   @return [String]
    # @!attribute compromised_credentials_risk_configuration
    #   <p>Settings for compromised-credentials actions and authentication types with threat
    #               protection in full-function <code>ENFORCED</code> mode.</p>
    #   @return [Types::CompromisedCredentialsRiskConfigurationType]
    # @!attribute account_takeover_risk_configuration
    #   <p>The settings for automated responses and notification templates for adaptive
    #               authentication with threat protection.</p>
    #   @return [Types::AccountTakeoverRiskConfigurationType]
    # @!attribute risk_exception_configuration
    #   <p>Exceptions to the risk evaluation configuration, including always-allow and
    #               always-block IP address ranges. </p>
    #   @return [Types::RiskExceptionConfigurationType]
    # @!attribute last_modified_date
    #   <p>The date and time when the item was modified. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    class RiskConfigurationType < Struct.new(
      :user_pool_id,
      :client_id,
      :compromised_credentials_risk_configuration,
      :account_takeover_risk_configuration,
      :risk_exception_configuration,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Exceptions to the risk evaluation configuration, including always-allow and
    #             always-block IP address ranges. </p>
    # @!attribute blocked_ip_range_list
    #   <p>An always-block IP address list. Overrides the risk decision and always blocks
    #               authentication requests. This parameter is displayed and set in CIDR notation.</p>
    #   @return [Array<String>]
    # @!attribute skipped_ip_range_list
    #   <p>An always-allow IP address list. Risk detection isn't performed on the IP addresses in
    #               this range list. This parameter is displayed and set in CIDR notation.</p>
    #   @return [Array<String>]
    class RiskExceptionConfigurationType < Struct.new(
      :blocked_ip_range_list,
      :skipped_ip_range_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for the Amazon S3 bucket destination of user activity log export with threat
    #             protection.</p>
    # @!attribute bucket_arn
    #   <p>The ARN of an Amazon S3 bucket that's the destination for threat protection log
    #               export.</p>
    #   @return [String]
    class S3ConfigurationType < Struct.new(
      :bucket_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A user's preference for using SMS message multi-factor authentication (MFA). Turns SMS
    #             MFA on and off, and can set SMS as preferred when other MFA options are available. You
    #             can't turn off SMS MFA for any of your users when MFA is required in your user pool; you
    #             can only set the type that your user prefers. </p>
    # @!attribute enabled
    #   <p>Specifies whether SMS message MFA is activated. If an MFA type is activated for a
    #               user, the user will be prompted for MFA during all sign-in attempts, unless device
    #               tracking is turned on and the device has been trusted.</p>
    #   @return [Boolean]
    # @!attribute preferred_mfa
    #   <p>Specifies whether SMS is the preferred MFA method. If true, your user pool prompts the
    #               specified user for a code delivered by SMS message after username-password sign-in
    #               succeeds. </p>
    #   @return [Boolean]
    class SMSMfaSettingsType < Struct.new(
      :enabled,
      :preferred_mfa,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        options[:preferred_mfa] = false unless options.key?(:preferred_mfa)
        super
      end
    end

    # <p>A list of the user attributes and their properties in your user pool. The attribute
    #             schema contains standard attributes, custom attributes with a <code>custom:</code>
    #             prefix, and developer attributes with a <code>dev:</code> prefix. For more information,
    #             see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html">User pool
    #                 attributes</a>.</p>
    #          <p>Developer-only <code>dev:</code> attributes are a legacy feature of user pools, and
    #             are read-only to all app clients. You can create and update developer-only attributes
    #             only with IAM-authenticated API operations. Use app client read/write permissions
    #             instead.</p>
    # @!attribute name
    #   <p>The name of your user pool attribute. When you create or update a user pool, adding a
    #               schema attribute creates a custom or developer-only attribute. When you add an attribute
    #               with a <code>Name</code> value of <code>MyAttribute</code>, Amazon Cognito creates the custom
    #               attribute <code>custom:MyAttribute</code>. When <code>DeveloperOnlyAttribute</code> is
    #                   <code>true</code>, Amazon Cognito creates your attribute as <code>dev:MyAttribute</code>. In
    #               an operation that describes a user pool, Amazon Cognito returns this value as <code>value</code>
    #               for standard attributes, <code>custom:value</code> for custom attributes, and
    #                   <code>dev:value</code> for developer-only attributes..</p>
    #   @return [String]
    # @!attribute attribute_data_type
    #   <p>The data format of the values for your attribute. When you choose an
    #                   <code>AttributeDataType</code>, Amazon Cognito validates the input against the data type. A
    #               custom attribute value in your user's ID token is always a string, for example
    #                   <code>"custom:isMember" : "true"</code> or <code>"custom:YearsAsMember" :
    #                   "12"</code>. </p>
    #   @return [String]
    # @!attribute developer_only_attribute
    #   <note>
    #               <p>You should use <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UserPoolClientType.html#CognitoUserPools-Type-UserPoolClientType-WriteAttributes">WriteAttributes</a> in the user pool client to control how attributes can
    #                   be mutated for new use cases instead of using
    #                   <code>DeveloperOnlyAttribute</code>.</p>
    #            </note>
    #            <p>Specifies whether the attribute type is developer only. This attribute can only be
    #               modified by an administrator. Users won't be able to modify this attribute using their
    #               access token. For example, <code>DeveloperOnlyAttribute</code> can be modified using
    #               AdminUpdateUserAttributes but can't be updated using UpdateUserAttributes.</p>
    #   @return [Boolean]
    # @!attribute mutable
    #   <p>Specifies whether the value of the attribute can be changed.</p>
    #            <p>Any user pool attribute whose value you map from an IdP attribute must be mutable,
    #               with a parameter value of <code>true</code>. Amazon Cognito updates mapped attributes when users
    #               sign in to your application through an IdP. If an attribute is immutable, Amazon Cognito throws
    #               an error when it attempts to update the attribute. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html">Specifying Identity Provider Attribute Mappings for Your User
    #                   Pool</a>.</p>
    #   @return [Boolean]
    # @!attribute required
    #   <p>Specifies whether a user pool attribute is required. If the attribute is required and
    #               the user doesn't provide a value, registration or sign-in will fail.</p>
    #   @return [Boolean]
    # @!attribute number_attribute_constraints
    #   <p>Specifies the constraints for an attribute of the number type.</p>
    #   @return [Types::NumberAttributeConstraintsType]
    # @!attribute string_attribute_constraints
    #   <p>Specifies the constraints for an attribute of the string type.</p>
    #   @return [Types::StringAttributeConstraintsType]
    class SchemaAttributeType < Struct.new(
      :name,
      :attribute_data_type,
      :developer_only_attribute,
      :mutable,
      :required,
      :number_attribute_constraints,
      :string_attribute_constraints,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:developer_only_attribute] = nil unless options.key?(:developer_only_attribute)
        options[:mutable] = nil unless options.key?(:mutable)
        options[:required] = nil unless options.key?(:required)
        super
      end
    end

    # <p>This exception is thrown when the specified scope doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class ScopeDoesNotExistException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to configure logging.</p>
    #   @return [String]
    # @!attribute log_configurations
    #   <p>A collection of the logging configurations for a user pool.</p>
    #   @return [Array<Types::LogConfigurationType>]
    class SetLogDeliveryConfigurationRequest < Struct.new(
      :user_pool_id,
      :log_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute log_delivery_configuration
    #   <p>The logging configuration that you applied to the requested user pool.</p>
    #   @return [Types::LogDeliveryConfigurationType]
    class SetLogDeliveryConfigurationResponse < Struct.new(
      :log_delivery_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to set a risk configuration. If you include
    #                   <code>UserPoolId</code> in your request, don't include <code>ClientId</code>.
    #               When the client ID is null, the same risk configuration is applied to all the clients in
    #               the userPool. When you include both <code>ClientId</code> and <code>UserPoolId</code>,
    #               Amazon Cognito maps the configuration to the app client only.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The ID of the app client where you want to set a risk configuration. If
    #                   <code>ClientId</code> is null, then the risk configuration is mapped to
    #                   <code>UserPoolId</code>. When the client ID is null, the same risk configuration is
    #               applied to all the clients in the userPool.</p>
    #            <p>When you include a <code>ClientId</code> parameter, Amazon Cognito maps the configuration to
    #               the app client. When you include both <code>ClientId</code> and <code>UserPoolId</code>,
    #               Amazon Cognito maps the configuration to the app client only.</p>
    #   @return [String]
    # @!attribute compromised_credentials_risk_configuration
    #   <p>The configuration of automated reactions to detected compromised credentials. Includes
    #               settings for blocking future sign-in requests and for the types of password-submission
    #               events you want to monitor.</p>
    #   @return [Types::CompromisedCredentialsRiskConfigurationType]
    # @!attribute account_takeover_risk_configuration
    #   <p>The settings for automated responses and notification templates for adaptive
    #               authentication with threat protection.</p>
    #   @return [Types::AccountTakeoverRiskConfigurationType]
    # @!attribute risk_exception_configuration
    #   <p>A set of IP-address overrides to threat protection. You can set up IP-address
    #               always-block and always-allow lists.</p>
    #   @return [Types::RiskExceptionConfigurationType]
    class SetRiskConfigurationRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :compromised_credentials_risk_configuration,
      :account_takeover_risk_configuration,
      :risk_exception_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute risk_configuration
    #   <p>The API response that contains the risk configuration that you set and the timestamp
    #               of the most recent change.</p>
    #   @return [Types::RiskConfigurationType]
    class SetRiskConfigurationResponse < Struct.new(
      :risk_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to apply branding to the classic hosted
    #               UI.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The ID of the app client that you want to customize. To apply a default style to all
    #               app clients not configured with client-level branding, set this parameter value to
    #                   <code>ALL</code>.</p>
    #   @return [String]
    # @!attribute css
    #   <p>A plaintext CSS file that contains the custom fields that you want to apply to your
    #               user pool or app client. To download a template, go to the Amazon Cognito console. Navigate to
    #               your user pool <i>App clients</i> tab, select <i>Login
    #                   pages</i>, edit <i>Hosted UI (classic) style</i>, and select
    #               the link to <code>CSS template.css</code>.</p>
    #   @return [String]
    # @!attribute image_file
    #   <p>The image that you want to set as your login in the classic hosted UI, as a
    #               Base64-formatted binary object.</p>
    #   @return [String]
    class SetUICustomizationRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :css,
      :image_file,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ui_customization
    #   <p>Information about the hosted UI branding that you applied.</p>
    #   @return [Types::UICustomizationType]
    class SetUICustomizationResponse < Struct.new(
      :ui_customization,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sms_mfa_settings
    #   <p>User preferences for SMS message MFA. Activates or deactivates SMS MFA and sets it as
    #               the preferred MFA method when multiple methods are available.</p>
    #   @return [Types::SMSMfaSettingsType]
    # @!attribute software_token_mfa_settings
    #   <p>User preferences for time-based one-time password (TOTP) MFA. Activates or deactivates
    #               TOTP MFA and sets it as the preferred MFA method when multiple methods are available.
    #               Users must register a TOTP authenticator before they set this as their preferred MFA
    #               method.</p>
    #   @return [Types::SoftwareTokenMfaSettingsType]
    # @!attribute email_mfa_settings
    #   <p>User preferences for email message MFA. Activates or deactivates email MFA and sets it
    #               as the preferred MFA method when multiple methods are available.
    #               To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    #   @return [Types::EmailMfaSettingsType]
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    class SetUserMFAPreferenceRequest < Struct.new(
      :sms_mfa_settings,
      :software_token_mfa_settings,
      :email_mfa_settings,
      :access_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class SetUserMFAPreferenceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #   @return [String]
    # @!attribute sms_mfa_configuration
    #   <p>Configures user pool SMS messages for MFA. Sets the message template and the SMS
    #               message sending configuration for Amazon SNS.</p>
    #   @return [Types::SmsMfaConfigType]
    # @!attribute software_token_mfa_configuration
    #   <p>Configures a user pool for time-based one-time password (TOTP) MFA. Enables or
    #               disables TOTP.</p>
    #   @return [Types::SoftwareTokenMfaConfigType]
    # @!attribute email_mfa_configuration
    #   <p>Sets configuration for user pool email message MFA and sign-in with one-time passwords
    #               (OTPs). Includes the subject and body of the email message template for sign-in and MFA
    #               messages. To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    #   @return [Types::EmailMfaConfigType]
    # @!attribute mfa_configuration
    #   <p>Sets multi-factor authentication (MFA) to be on, off, or optional. When
    #                   <code>ON</code>, all users must set up MFA before they can sign in. When
    #                   <code>OPTIONAL</code>, your application must make a client-side determination of
    #               whether a user wants to register an MFA device. For user pools with adaptive
    #               authentication with threat protection, choose <code>OPTIONAL</code>.</p>
    #            <p>When <code>MfaConfiguration</code> is <code>OPTIONAL</code>, managed login
    #               doesn't automatically prompt users to set up MFA. Amazon Cognito generates MFA prompts in
    #               API responses and in managed login for users who have chosen and configured a preferred
    #               MFA factor.</p>
    #   @return [String]
    # @!attribute web_authn_configuration
    #   <p>The configuration of your user pool for passkey, or WebAuthn, authentication and
    #               registration. You can set this configuration independent of the MFA configuration
    #               options in this operation.</p>
    #   @return [Types::WebAuthnConfigurationType]
    class SetUserPoolMfaConfigRequest < Struct.new(
      :user_pool_id,
      :sms_mfa_configuration,
      :software_token_mfa_configuration,
      :email_mfa_configuration,
      :mfa_configuration,
      :web_authn_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sms_mfa_configuration
    #   <p>Shows user pool SMS message configuration for MFA and sign-in with SMS-message OTPs.
    #               Includes the message template and the SMS message sending configuration for
    #               Amazon SNS.</p>
    #   @return [Types::SmsMfaConfigType]
    # @!attribute software_token_mfa_configuration
    #   <p>Shows user pool configuration for time-based one-time password (TOTP) MFA. Includes
    #               TOTP enabled or disabled state.</p>
    #   @return [Types::SoftwareTokenMfaConfigType]
    # @!attribute email_mfa_configuration
    #   <p>Shows configuration for user pool email message MFA and sign-in with one-time
    #               passwords (OTPs). Includes the subject and body of the email message template for
    #               sign-in and MFA messages. To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    #   @return [Types::EmailMfaConfigType]
    # @!attribute mfa_configuration
    #   <p>Displays multi-factor authentication (MFA) as on, off, or optional. When
    #                   <code>ON</code>, all users must set up MFA before they can sign in. When
    #                   <code>OPTIONAL</code>, your application must make a client-side determination of
    #               whether a user wants to register an MFA device. For user pools with adaptive
    #               authentication with threat protection, choose <code>OPTIONAL</code>.</p>
    #            <p>When <code>MfaConfiguration</code> is <code>OPTIONAL</code>, managed login
    #               doesn't automatically prompt users to set up MFA. Amazon Cognito generates MFA prompts in
    #               API responses and in managed login for users who have chosen and configured a preferred
    #               MFA factor.</p>
    #   @return [String]
    # @!attribute web_authn_configuration
    #   <p>The configuration of your user pool for passkey, or WebAuthn, sign-in with
    #               authenticators like biometric and security-key devices. Includes relying-party
    #               configuration and settings for user-verification requirements.</p>
    #   @return [Types::WebAuthnConfigurationType]
    class SetUserPoolMfaConfigResponse < Struct.new(
      :sms_mfa_configuration,
      :software_token_mfa_configuration,
      :email_mfa_configuration,
      :mfa_configuration,
      :web_authn_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to set user settings.</p>
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    # @!attribute mfa_options
    #   <p>You can use this parameter only to set an SMS configuration that uses SMS for
    #               delivery.</p>
    #   @return [Array<Types::MFAOptionType>]
    class SetUserSettingsRequest < Struct.new(
      :access_token,
      :mfa_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the server for a set user settings request.</p>
    class SetUserSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The policy for allowed types of authentication in a user pool.
    #             To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                      Essentials tier</a> or higher.</p>
    # @!attribute allowed_first_auth_factors
    #   <p>The sign-in methods that a user pool supports as the first factor. You can permit
    #               users to start authentication with a standard username and password, or with other
    #               one-time password and hardware factors.</p>
    #   @return [Array<String>]
    class SignInPolicyType < Struct.new(
      :allowed_first_auth_factors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to register a user.</p>
    # @!attribute client_id
    #   <p>The ID of the app client where the user wants to sign up.</p>
    #   @return [String]
    # @!attribute secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message. For more information
    #               about <code>SecretHash</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the user that you want to sign up. The value of this parameter is
    #               typically a username, but can be any alias attribute in your user pool.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The user's proposed password. The password must comply with the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/managing-users-passwords.html">password requirements</a> of your user pool.</p>
    #            <p>Users can sign up without a password when your user pool supports passwordless sign-in
    #               with email or SMS OTPs. To create a user with no password, omit this parameter or submit
    #               a blank value. You can only create a passwordless user when passwordless sign-in is
    #               available.</p>
    #   @return [String]
    # @!attribute user_attributes
    #   <p>An array of name-value pairs representing user attributes.</p>
    #            <p>For custom attributes, include a <code>custom:</code> prefix in the attribute name,
    #               for example <code>custom:department</code>.</p>
    #   @return [Array<Types::AttributeType>]
    # @!attribute validation_data
    #   <p>Temporary user attributes that contribute to the outcomes of your pre sign-up Lambda
    #       trigger. This set of key-value pairs are for custom validation of information that you 
    #       collect from your users but don't need to retain.</p>
    #            <p>Your Lambda function can analyze this additional data and act on it. Your function
    #       can automatically confirm and verify select users or perform external API operations 
    #       like logging user attributes and validation data to Amazon CloudWatch Logs.</p>
    #            <p>For more information about the pre sign-up Lambda trigger, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html">Pre sign-up Lambda trigger</a>.</p>
    #   @return [Array<Types::AttributeType>]
    # @!attribute analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the 
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier, 
    #   email address, or phone number.</p>
    #   @return [Types::AnalyticsMetadataType]
    # @!attribute user_context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat 
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    #   @return [Types::UserContextDataType]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #            <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the SignUp API action, Amazon Cognito invokes any functions that are assigned to the
    #               following triggers: <i>pre sign-up</i>, <i>custom
    #                   message</i>, and <i>post confirmation</i>. When Amazon Cognito invokes
    #               any of these functions, it passes a JSON payload, which the function receives as input.
    #               This payload contains a <code>clientMetadata</code> attribute, which provides the data
    #               that you assigned to the ClientMetadata parameter in your SignUp request. In your
    #               function code in Lambda, you can process the <code>clientMetadata</code> value to enhance
    #               your workflow for your specific needs.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    class SignUpRequest < Struct.new(
      :client_id,
      :secret_hash,
      :username,
      :password,
      :user_attributes,
      :validation_data,
      :analytics_metadata,
      :user_context_data,
      :client_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the server for a registration request.</p>
    # @!attribute user_confirmed
    #   <p>Indicates whether the user was automatically confirmed. You can auto-confirm users
    #               with a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html">pre sign-up Lambda trigger</a>.</p>
    #   @return [Boolean]
    # @!attribute code_delivery_details
    #   <p>In user pools that automatically verify and confirm new users, Amazon Cognito sends users a
    #               message with a code or link that confirms ownership of the phone number or email address
    #               that they entered. The <code>CodeDeliveryDetails</code> object is information about the
    #               delivery destination for that link or code.</p>
    #   @return [Types::CodeDeliveryDetailsType]
    # @!attribute user_sub
    #   <p>The unique identifier of the new user, for example
    #                   <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>.</p>
    #   @return [String]
    # @!attribute session
    #   <p>A session Id that you can pass to <code>ConfirmSignUp</code> when you want to
    #               immediately sign in your user with the <code>USER_AUTH</code> flow after they complete
    #               sign-up.</p>
    #   @return [String]
    class SignUpResponse < Struct.new(
      :user_confirmed,
      :code_delivery_details,
      :user_sub,
      :session,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:user_confirmed] = false unless options.key?(:user_confirmed)
        super
      end
    end

    # <p>User pool configuration for delivery of SMS messages with Amazon Simple Notification Service. To send SMS
    #             messages with Amazon SNS in the Amazon Web Services Region that you want, the Amazon Cognito user pool uses an
    #             Identity and Access Management (IAM) role in your Amazon Web Services account.</p>
    # @!attribute sns_caller_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS caller. This is the ARN of the IAM role
    #               in your Amazon Web Services account that Amazon Cognito will use to send SMS messages. SMS
    #               messages are subject to a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html">spending limit</a>. </p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID provides additional security for your IAM role. You can use an
    #                   <code>ExternalId</code> with the IAM role that you use with Amazon SNS to send SMS
    #               messages for your user pool. If you provide an <code>ExternalId</code>, your Amazon Cognito user
    #               pool includes it in the request to assume your IAM role. You can configure the role
    #               trust policy to require that Amazon Cognito, and any principal, provide the
    #                   <code>ExternalID</code>. If you use the Amazon Cognito Management Console to create a role
    #               for SMS multi-factor authentication (MFA), Amazon Cognito creates a role with the required
    #               permissions and a trust policy that demonstrates use of the
    #               <code>ExternalId</code>.</p>
    #            <p>For more information about the <code>ExternalId</code> of a role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html">How to use an
    #                   external ID when granting access to your Amazon Web Services resources to a third
    #                   party</a>.</p>
    #   @return [String]
    # @!attribute sns_region
    #   <p>The Amazon Web Services Region to use with Amazon SNS integration. You can choose the same Region as your
    #               user pool, or a supported <b>Legacy Amazon SNS alternate
    #               Region</b>. </p>
    #            <p>
    #               Amazon Cognito resources in the Asia Pacific (Seoul) Amazon Web Services Region must use your Amazon SNS
    #               configuration in the Asia Pacific (Tokyo) Region. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html">SMS message settings for Amazon Cognito user pools</a>.</p>
    #   @return [String]
    class SmsConfigurationType < Struct.new(
      :sns_caller_arn,
      :external_id,
      :sns_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of multi-factor authentication (MFA) with SMS messages in a user
    #             pool.</p>
    # @!attribute sms_authentication_message
    #   <p>The SMS authentication message that will be sent to users with the code they must sign
    #               in with. The message must contain the <code>{####}</code> placeholder. Your user pool
    #               replaces the placeholder with the MFA code. If this parameter isn't provided, your user
    #               pool sends a default message.</p>
    #   @return [String]
    # @!attribute sms_configuration
    #   <p>User pool configuration for delivery of SMS messages with Amazon Simple Notification Service. To send SMS
    #               messages with Amazon SNS in the Amazon Web Services Region that you want, the Amazon Cognito user pool uses an
    #               Identity and Access Management (IAM) role in your Amazon Web Services account.</p>
    #            <p>You can set <code>SmsConfiguration</code> in <code>CreateUserPool</code> and <code>
    #                   UpdateUserPool</code>, or in <code>SetUserPoolMfaConfig</code>.</p>
    #   @return [Types::SmsConfigurationType]
    class SmsMfaConfigType < Struct.new(
      :sms_authentication_message,
      :sms_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the software token time-based one-time password (TOTP)
    #             multi-factor authentication (MFA) isn't activated for the user pool.</p>
    # @!attribute message
    #   @return [String]
    class SoftwareTokenMFANotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for time-based one-time password (TOTP) multi-factor authentication (MFA) in
    #             a user pool. Enables and disables availability of this feature.</p>
    # @!attribute enabled
    #   <p>The activation state of TOTP MFA.</p>
    #   @return [Boolean]
    class SoftwareTokenMfaConfigType < Struct.new(
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>A user's preference for using time-based one-time password (TOTP) multi-factor
    #             authentication (MFA). Turns TOTP MFA on and off, and can set TOTP as preferred when
    #             other MFA options are available. You can't turn off TOTP MFA for any of your users when
    #             MFA is required in your user pool; you can only set the type that your user prefers. </p>
    # @!attribute enabled
    #   <p>Specifies whether software token MFA is activated. If an MFA type is activated for a
    #               user, the user will be prompted for MFA during all sign-in attempts, unless device
    #               tracking is turned on and the device has been trusted.</p>
    #   @return [Boolean]
    # @!attribute preferred_mfa
    #   <p>Specifies whether software token MFA is the preferred MFA method.</p>
    #   @return [Boolean]
    class SoftwareTokenMfaSettingsType < Struct.new(
      :enabled,
      :preferred_mfa,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        options[:preferred_mfa] = false unless options.key?(:preferred_mfa)
        super
      end
    end

    # <p>Represents the request to start the user import job.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that you want to start importing users into.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID of a user import job that you previously created.</p>
    #   @return [String]
    class StartUserImportJobRequest < Struct.new(
      :user_pool_id,
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server to the request to start the user import
    #             job.</p>
    # @!attribute user_import_job
    #   <p>The details of the user import job. Includes logging destination, status, and the Amazon S3
    #               pre-signed URL for CSV upload.</p>
    #   @return [Types::UserImportJobType]
    class StartUserImportJobResponse < Struct.new(
      :user_import_job,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    class StartWebAuthnRegistrationRequest < Struct.new(
      :access_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute credential_creation_options
    #   <p>The information that a user can provide in their request to register with their
    #               passkey provider.</p>
    #   @return [JSON]
    class StartWebAuthnRegistrationResponse < Struct.new(
      :credential_creation_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to stop the user import job.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that you want to stop.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID of a running user import job.</p>
    #   @return [String]
    class StopUserImportJobRequest < Struct.new(
      :user_pool_id,
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server to the request to stop the user import
    #             job.</p>
    # @!attribute user_import_job
    #   <p>The details of the user import job. Includes logging destination, status, and the Amazon S3
    #               pre-signed URL for CSV upload.</p>
    #   @return [Types::UserImportJobType]
    class StopUserImportJobResponse < Struct.new(
      :user_import_job,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The minimum and maximum length values of an attribute that is of the string type, for
    #             example <code>custom:department</code>.</p>
    # @!attribute min_length
    #   <p>The minimum length of a string attribute value.</p>
    #   @return [String]
    # @!attribute max_length
    #   <p>The maximum length of a string attribute value. Must be a number less than or equal to
    #                   <code>2^1023</code>, represented as a string with a length of 131072 characters or
    #               fewer.</p>
    #   @return [String]
    class StringAttributeConstraintsType < Struct.new(
      :min_length,
      :max_length,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the user pool to assign the tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tag keys and values that you want to assign to the user pool.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a set of terms documents. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-terms-documents">Terms documents</a>.</p>
    # @!attribute terms_id
    #   <p>The ID of the requested terms documents.</p>
    #   @return [String]
    # @!attribute terms_name
    #   <p>The type and friendly name of the requested terms documents.</p>
    #   @return [String]
    # @!attribute enforcement
    #   <p>This parameter is reserved for future use and currently accepts one value.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date and time when the item was modified. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    class TermsDescriptionType < Struct.new(
      :terms_id,
      :terms_name,
      :enforcement,
      :creation_date,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Terms document names must be unique to the app client. This exception is thrown when
    #             you attempt to create terms documents with a duplicate <code>TermsName</code>.</p>
    # @!attribute message
    #   @return [String]
    class TermsExistsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a set of terms documents. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-terms-documents">Terms documents</a>.</p>
    # @!attribute terms_id
    #   <p>The ID of the terms documents.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the terms documents.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The ID of the app client that the terms documents are assigned to.</p>
    #   @return [String]
    # @!attribute terms_name
    #   <p>The type and friendly name of the terms documents.</p>
    #   @return [String]
    # @!attribute terms_source
    #   <p>This parameter is reserved for future use and currently accepts one value.</p>
    #   @return [String]
    # @!attribute enforcement
    #   <p>This parameter is reserved for future use and currently accepts one value.</p>
    #   @return [String]
    # @!attribute links
    #   <p>A map of URLs to languages. For each localized language that will view the requested
    #               <code>TermsName</code>, assign a URL. A selection of <code>cognito:default</code>
    #               displays for all languages that don't have a language-specific URL.</p>
    #            <p>For example, <code>"cognito:default": "https://terms.example.com", "cognito:spanish":
    #                   "https://terms.example.com/es"</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute creation_date
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date and time when the item was modified. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    class TermsType < Struct.new(
      :terms_id,
      :user_pool_id,
      :client_id,
      :terms_name,
      :terms_source,
      :enforcement,
      :links,
      :creation_date,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when you've attempted to change your feature plan but
    #             the operation isn't permitted.</p>
    # @!attribute message
    #   @return [String]
    class TierChangeNotAllowedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The time units that, with <code>IdTokenValidity</code>,
    #                 <code>AccessTokenValidity</code>, and <code>RefreshTokenValidity</code>, set and
    #             display the duration of ID, access, and refresh tokens for an app client. You can assign
    #             a separate token validity unit to each type of token. </p>
    # @!attribute access_token
    #   <p> A time unit for the value that you set in the <code>AccessTokenValidity</code>
    #               parameter. The default <code>AccessTokenValidity</code> time unit is <code>hours</code>.
    #                   <code>AccessTokenValidity</code> duration can range from five minutes to one
    #               day.</p>
    #   @return [String]
    # @!attribute id_token
    #   <p>A time unit for the value that you set in the <code>IdTokenValidity</code> parameter.
    #               The default <code>IdTokenValidity</code> time unit is <code>hours</code>.
    #                   <code>IdTokenValidity</code> duration can range from five minutes to one day.</p>
    #   @return [String]
    # @!attribute refresh_token
    #   <p>A time unit for the value that you set in the <code>RefreshTokenValidity</code>
    #               parameter. The default <code>RefreshTokenValidity</code> time unit is <code>days</code>.
    #                   <code>RefreshTokenValidity</code> duration can range from 60 minutes to 10
    #               years.</p>
    #   @return [String]
    class TokenValidityUnitsType < Struct.new(
      :access_token,
      :id_token,
      :refresh_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the user has made too many failed attempts for a given
    #             action, such as sign-in.</p>
    # @!attribute message
    #   <p>The message returned when Amazon Cognito returns a <code>TooManyFailedAttempts</code>
    #               exception.</p>
    #   @return [String]
    class TooManyFailedAttemptsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the user has made too many requests for a given
    #             operation.</p>
    # @!attribute message
    #   <p>The message returned when the Amazon Cognito service returns a too many requests
    #               exception.</p>
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A container for the UI customization information for the hosted UI in a user
    #             pool.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool with hosted UI customizations.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The app client ID for your UI customization. When this value isn't present, the
    #               customization applies to all user pool app clients that don't have client-level
    #               settings..</p>
    #   @return [String]
    # @!attribute image_url
    #   <p>A URL path to the hosted logo image of your UI customization.</p>
    #   @return [String]
    # @!attribute css
    #   <p>The CSS values in the UI customization.</p>
    #   @return [String]
    # @!attribute css_version
    #   <p>The CSS version number.</p>
    #   @return [String]
    # @!attribute last_modified_date
    #   <p>The date and time when the item was modified. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute creation_date
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    class UICustomizationType < Struct.new(
      :user_pool_id,
      :client_id,
      :image_url,
      :css,
      :css_version,
      :last_modified_date,
      :creation_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Exception that is thrown when the request isn't authorized. This can happen due to an
    #             invalid access token in the request.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when Amazon Cognito encounters an unexpected exception with
    #             Lambda.</p>
    # @!attribute message
    #   <p>The message returned when Amazon Cognito returns an unexpected Lambda exception.</p>
    #   @return [String]
    class UnexpectedLambdaException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the specified identifier isn't supported.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedIdentityProviderException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Exception that is thrown when you attempt to perform an operation that isn't enabled
    #             for the user pool client.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedOperationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Exception that is thrown when an unsupported token is passed to an operation.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedTokenTypeException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because the user is in an unsupported state.</p>
    # @!attribute message
    #   <p>The message returned when the user is in an unsupported state.</p>
    #   @return [String]
    class UnsupportedUserStateException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the user pool that the tags are assigned to.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>An array of tag keys that you want to remove from the user pool.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to update auth event feedback.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The ID of the authentication event that you want to submit feedback for.</p>
    #   @return [String]
    # @!attribute feedback_token
    #   <p>The feedback token, an encrypted object generated by Amazon Cognito and passed to your user in
    #               the notification email message from the event.</p>
    #   @return [String]
    # @!attribute feedback_value
    #   <p>Your feedback to the authentication event. When you provide a <code>FeedbackValue</code>
    #   value of <code>valid</code>, you tell Amazon Cognito that you trust a user session where Amazon Cognito
    #   has evaluated some level of risk. When you provide a <code>FeedbackValue</code> value of
    #   <code>invalid</code>, you tell Amazon Cognito that you don't trust a user session, or you 
    #   don't believe that Amazon Cognito evaluated a high-enough risk level.</p>
    #   @return [String]
    class UpdateAuthEventFeedbackRequest < Struct.new(
      :user_pool_id,
      :username,
      :event_id,
      :feedback_token,
      :feedback_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateAuthEventFeedbackResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to update the device status.</p>
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    # @!attribute device_key
    #   <p>The device key of the device you want to update, for example
    #                   <code>us-west-2_a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>.</p>
    #   @return [String]
    # @!attribute device_remembered_status
    #   <p>To enable device authentication with the specified device, set to
    #                   <code>remembered</code>.To disable, set to <code>not_remembered</code>.</p>
    #   @return [String]
    class UpdateDeviceStatusRequest < Struct.new(
      :access_token,
      :device_key,
      :device_remembered_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response to the request to update the device status.</p>
    class UpdateDeviceStatusResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>The name of the group that you want to update.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the group you want to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description of the existing group.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that you want to associate with the
    #               group. The role assignment contributes to the <code>cognito:roles</code> and
    #                   <code>cognito:preferred_role</code> claims in group members' tokens.</p>
    #   @return [String]
    # @!attribute precedence
    #   <p>A non-negative integer value that specifies the precedence of this group relative to
    #               the other groups that a user can belong to in the user pool. Zero is the highest
    #               precedence value. Groups with lower <code>Precedence</code> values take precedence over
    #               groups with higher or null <code>Precedence</code> values. If a user belongs to two or
    #               more groups, it is the group with the lowest precedence value whose role ARN is given in
    #               the user's tokens for the <code>cognito:roles</code> and
    #                   <code>cognito:preferred_role</code> claims.</p>
    #            <p>Two groups can have the same <code>Precedence</code> value. If this happens, neither
    #               group takes precedence over the other. If two groups with the same
    #                   <code>Precedence</code> have the same role ARN, that role is used in the
    #                   <code>cognito:preferred_role</code> claim in tokens for users in each group. If the
    #               two groups have different role ARNs, the <code>cognito:preferred_role</code> claim isn't
    #               set in users' tokens.</p>
    #            <p>The default <code>Precedence</code> value is null. The maximum <code>Precedence</code>
    #               value is <code>2^31-1</code>.</p>
    #   @return [Integer]
    class UpdateGroupRequest < Struct.new(
      :group_name,
      :user_pool_id,
      :description,
      :role_arn,
      :precedence,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>Contains the updated details of the group, including precedence, IAM role, and
    #               description.</p>
    #   @return [Types::GroupType]
    class UpdateGroupResponse < Struct.new(
      :group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The Id of the user pool where you want to update your IdP.</p>
    #   @return [String]
    # @!attribute provider_name
    #   <p>The name of the IdP that you want to update. You can pass the identity provider name
    #               in the <code>identity_provider</code> query parameter of requests to the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html">Authorize endpoint</a> to silently redirect to sign-in with the associated
    #               IdP.</p>
    #   @return [String]
    # @!attribute provider_details
    #   <p>The scopes, URLs, and identifiers for your external identity provider. The following
    #   examples describe the provider detail keys for each IdP type. These values and their
    #   schema are subject to change. Social IdP <code>authorize_scopes</code> values must match
    #   the values listed here.</p>
    #            <dl>
    #               <dt>OpenID Connect (OIDC)</dt>
    #               <dd>
    #                  <p>Amazon Cognito accepts the following elements when it can't discover endpoint
    #                   URLs from <code>oidc_issuer</code>: <code>attributes_url</code>,
    #                       <code>authorize_url</code>, <code>jwks_uri</code>,
    #                       <code>token_url</code>.</p>
    #                  <p>Create or update request: <code>"ProviderDetails": {
    #                       "attributes_request_method": "GET", "attributes_url":
    #                       "https://auth.example.com/userInfo", "authorize_scopes": "openid profile
    #                       email", "authorize_url": "https://auth.example.com/authorize",
    #                       "client_id": "1example23456789", "client_secret":
    #                       "provider-app-client-secret", "jwks_uri":
    #                       "https://auth.example.com/.well-known/jwks.json", "oidc_issuer":
    #                       "https://auth.example.com", "token_url": "https://example.com/token"
    #                       }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": { "attributes_request_method":
    #                       "GET", "attributes_url": "https://auth.example.com/userInfo",
    #                       "attributes_url_add_attributes": "false", "authorize_scopes": "openid
    #                       profile email", "authorize_url": "https://auth.example.com/authorize",
    #                       "client_id": "1example23456789", "client_secret":
    #                       "provider-app-client-secret", "jwks_uri":
    #                       "https://auth.example.com/.well-known/jwks.json", "oidc_issuer":
    #                       "https://auth.example.com", "token_url": "https://example.com/token"
    #                       }</code>
    #                  </p>
    #               </dd>
    #               <dt>SAML</dt>
    #               <dd>
    #                  <p>Create or update request with Metadata URL: <code>"ProviderDetails": { "IDPInit": "true",
    #                       "IDPSignout": "true", "EncryptedResponses" : "true", "MetadataURL":
    #                       "https://auth.example.com/sso/saml/metadata", "RequestSigningAlgorithm":
    #                       "rsa-sha256" }</code>
    #                  </p>
    #                  <p>Create or update request with Metadata file: <code>"ProviderDetails": { "IDPInit": "true",
    #                       "IDPSignout": "true", "EncryptedResponses" : "true",  
    #                       "MetadataFile": "[metadata XML]", "RequestSigningAlgorithm":
    #                       "rsa-sha256" }</code>
    #                  </p>
    #                  <p>The value of <code>MetadataFile</code> must be the plaintext metadata document with all 
    #                   quote (") characters escaped by backslashes.</p>
    #                  <p>Describe response: <code>"ProviderDetails": { "IDPInit": "true",
    #                       "IDPSignout": "true", "EncryptedResponses" : "true", "ActiveEncryptionCertificate": "[certificate]",
    #                       "MetadataURL": "https://auth.example.com/sso/saml/metadata", "RequestSigningAlgorithm":
    #                       "rsa-sha256", "SLORedirectBindingURI":
    #                       "https://auth.example.com/slo/saml", "SSORedirectBindingURI":
    #                       "https://auth.example.com/sso/saml" }</code>
    #                  </p>
    #               </dd>
    #               <dt>LoginWithAmazon</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "authorize_scopes":
    #                       "profile postal_code", "client_id":
    #                       "amzn1.application-oa2-client.1example23456789", "client_secret":
    #                       "provider-app-client-secret"</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": { "attributes_url":
    #                       "https://api.amazon.com/user/profile", "attributes_url_add_attributes":
    #                       "false", "authorize_scopes": "profile postal_code", "authorize_url":
    #                       "https://www.amazon.com/ap/oa", "client_id":
    #                       "amzn1.application-oa2-client.1example23456789", "client_secret":
    #                       "provider-app-client-secret", "token_request_method": "POST",
    #                       "token_url": "https://api.amazon.com/auth/o2/token" }</code>
    #                  </p>
    #               </dd>
    #               <dt>Google</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "authorize_scopes":
    #                       "email profile openid", "client_id":
    #                       "1example23456789.apps.googleusercontent.com", "client_secret":
    #                       "provider-app-client-secret" }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": { "attributes_url":
    #                       "https://people.googleapis.com/v1/people/me?personFields=",
    #                       "attributes_url_add_attributes": "true", "authorize_scopes": "email
    #                       profile openid", "authorize_url":
    #                       "https://accounts.google.com/o/oauth2/v2/auth", "client_id":
    #                       "1example23456789.apps.googleusercontent.com", "client_secret":
    #                       "provider-app-client-secret", "oidc_issuer":
    #                       "https://accounts.google.com", "token_request_method": "POST",
    #                       "token_url": "https://www.googleapis.com/oauth2/v4/token"
    #                   }</code>
    #                  </p>
    #               </dd>
    #               <dt>SignInWithApple</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "authorize_scopes":
    #                       "email name", "client_id": "com.example.cognito", "private_key": "1EXAMPLE", 
    #                       "key_id": "2EXAMPLE", "team_id": "3EXAMPLE" }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": {
    #                       "attributes_url_add_attributes": "false", "authorize_scopes": "email
    #                       name", "authorize_url": "https://appleid.apple.com/auth/authorize",
    #                       "client_id": "com.example.cognito", "key_id": "1EXAMPLE", "oidc_issuer":
    #                       "https://appleid.apple.com", "team_id": "2EXAMPLE",
    #                       "token_request_method": "POST", "token_url":
    #                       "https://appleid.apple.com/auth/token" }</code>
    #                  </p>
    #               </dd>
    #               <dt>Facebook</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "api_version": "v17.0", 
    #               "authorize_scopes": "public_profile, email", "client_id": "1example23456789", 
    #               "client_secret": "provider-app-client-secret" }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": 
    #               { "api_version": "v17.0", "attributes_url": "https://graph.facebook.com/v17.0/me?fields=", 
    #               "attributes_url_add_attributes": "true", "authorize_scopes": "public_profile, email", 
    #               "authorize_url": "https://www.facebook.com/v17.0/dialog/oauth", "client_id": 
    #               "1example23456789", "client_secret": "provider-app-client-secret", "token_request_method": 
    #               "GET", "token_url": "https://graph.facebook.com/v17.0/oauth/access_token" }</code>
    #                  </p>
    #               </dd>
    #            </dl>
    #   @return [Hash<String, String>]
    # @!attribute attribute_mapping
    #   <p>A mapping of IdP attributes to standard and custom user pool attributes. Specify a
    #               user pool attribute as the key of the key-value pair, and the IdP attribute claim name
    #               as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute idp_identifiers
    #   <p>An array of IdP identifiers, for example <code>"IdPIdentifiers": [ "MyIdP", "MyIdP2"
    #                   ]</code>. Identifiers are friendly names that you can pass in the
    #                   <code>idp_identifier</code> query parameter of requests to the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html">Authorize endpoint</a> to silently redirect to sign-in with the associated IdP.
    #               Identifiers in a domain format also enable the use of <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managing-saml-idp-naming.html">email-address matching with SAML providers</a>. </p>
    #   @return [Array<String>]
    class UpdateIdentityProviderRequest < Struct.new(
      :user_pool_id,
      :provider_name,
      :provider_details,
      :attribute_mapping,
      :idp_identifiers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider
    #   <p>The identity provider details.</p>
    #   @return [Types::IdentityProviderType]
    class UpdateIdentityProviderResponse < Struct.new(
      :identity_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the managed login branding style that you want
    #               to update.</p>
    #   @return [String]
    # @!attribute managed_login_branding_id
    #   <p>The ID of the managed login branding style that you want to update.</p>
    #   @return [String]
    # @!attribute use_cognito_provided_values
    #   <p>When <code>true</code>, applies the default branding style options. This option
    #               reverts to default style options that are managed by Amazon Cognito. You can modify them later in
    #               the branding editor.</p>
    #            <p>When you specify <code>true</code> for this option, you must also omit values for
    #                   <code>Settings</code> and <code>Assets</code> in the request.</p>
    #   @return [Boolean]
    # @!attribute settings
    #   <p>A JSON file, encoded as a <code>Document</code> type, with the the settings that you
    #               want to apply to your style.</p>
    #            <p>The following components are not currently implemented and reserved for future
    #               use:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>signUp</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>instructions</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sessionTimerDisplay</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>languageSelector</code> (for localization, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-localization">Managed login localization)</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [JSON]
    # @!attribute assets
    #   <p>An array of image files that you want to apply to roles like backgrounds, logos, and
    #               icons. Each object must also indicate whether it is for dark mode, light mode, or
    #               browser-adaptive mode.</p>
    #   @return [Array<Types::AssetType>]
    class UpdateManagedLoginBrandingRequest < Struct.new(
      :user_pool_id,
      :managed_login_branding_id,
      :use_cognito_provided_values,
      :settings,
      :assets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_login_branding
    #   <p>The details of the branding style that you updated.</p>
    #   @return [Types::ManagedLoginBrandingType]
    class UpdateManagedLoginBrandingResponse < Struct.new(
      :managed_login_branding,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the resource server that you want to
    #               update.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>A unique resource server identifier for the resource server. The identifier can be an
    #               API friendly name like <code>solar-system-data</code>. You can also set an API URL like
    #                   <code>https://solar-system-data-api.example.com</code> as your identifier.</p>
    #            <p>Amazon Cognito represents scopes in the access token in the format
    #                   <code>$resource-server-identifier/$scope</code>. Longer scope-identifier strings
    #               increase the size of your access tokens.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name of the resource server.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>An array of updated custom scope names and descriptions that you want to associate
    #               with your resource server.</p>
    #   @return [Array<Types::ResourceServerScopeType>]
    class UpdateResourceServerRequest < Struct.new(
      :user_pool_id,
      :identifier,
      :name,
      :scopes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_server
    #   <p>The updated details of the requested resource server.</p>
    #   @return [Types::ResourceServerType]
    class UpdateResourceServerResponse < Struct.new(
      :resource_server,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute terms_id
    #   <p>The ID of the terms document that you want to update.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the terms that you want to update.</p>
    #   @return [String]
    # @!attribute terms_name
    #   <p>The new name that you want to apply to the requested terms documents.</p>
    #   @return [String]
    # @!attribute terms_source
    #   <p>This parameter is reserved for future use and currently accepts only one value.</p>
    #   @return [String]
    # @!attribute enforcement
    #   <p>This parameter is reserved for future use and currently accepts only one value.</p>
    #   @return [String]
    # @!attribute links
    #   <p>A map of URLs to languages. For each localized language that will view the requested
    #               <code>TermsName</code>, assign a URL. A selection of <code>cognito:default</code>
    #               displays for all languages that don't have a language-specific URL.</p>
    #            <p>For example, <code>"cognito:default": "https://terms.example.com", "cognito:spanish":
    #                   "https://terms.example.com/es"</code>.</p>
    #   @return [Hash<String, String>]
    class UpdateTermsRequest < Struct.new(
      :terms_id,
      :user_pool_id,
      :terms_name,
      :terms_source,
      :enforcement,
      :links,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute terms
    #   <p>A summary of the updates to your terms documents.</p>
    #   @return [Types::TermsType]
    class UpdateTermsResponse < Struct.new(
      :terms,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to update user attributes.</p>
    # @!attribute user_attributes
    #   <p>An array of name-value pairs representing user attributes.</p>
    #            <p>For custom attributes, you must add a <code>custom:</code> prefix to the attribute
    #               name.</p>
    #            <p>If you have set an attribute to require verification before Amazon Cognito updates its value,
    #               this request doesn’t immediately update the value of that attribute. After your user
    #               receives and responds to a verification message to verify the new value, Amazon Cognito updates
    #               the attribute value. Your user can sign in and receive messages with the original
    #               attribute value until they verify the new value.</p>
    #   @return [Array<Types::AttributeType>]
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action initiates. </p>
    #            <p>You create custom workflows by assigning Lambda functions to user pool triggers. When
    #               you use the UpdateUserAttributes API action, Amazon Cognito invokes the function that is assigned
    #               to the <i>custom message</i> trigger. When Amazon Cognito invokes this function, it
    #               passes a JSON payload, which the function receives as input. This payload contains a
    #                   <code>clientMetadata</code> attribute, which provides the data that you assigned to
    #               the ClientMetadata parameter in your UpdateUserAttributes request. In your function code
    #               in Lambda, you can process the <code>clientMetadata</code> value to enhance your workflow
    #               for your specific needs.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Using Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    class UpdateUserAttributesRequest < Struct.new(
      :user_attributes,
      :access_token,
      :client_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server for the request to update user
    #             attributes.</p>
    # @!attribute code_delivery_details_list
    #   <p>When the attribute-update request includes an email address or phone number attribute,
    #               Amazon Cognito sends a message to users with a code that confirms ownership of the new value that
    #               they entered. The <code>CodeDeliveryDetails</code> object is information about the
    #               delivery destination for that link or code. This behavior happens in user pools
    #               configured to automatically verify changes to those attributes. For more information,
    #               see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#verifying-when-users-change-their-email-or-phone-number">Verifying when users change their email or phone
    #               number</a>.</p>
    #   @return [Array<Types::CodeDeliveryDetailsType>]
    class UpdateUserAttributesResponse < Struct.new(
      :code_delivery_details_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to update the user pool client.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool where you want to update the app client.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The ID of the app client that you want to update.</p>
    #   @return [String]
    # @!attribute client_name
    #   <p>A friendly name for the app client.</p>
    #   @return [String]
    # @!attribute refresh_token_validity
    #   <p>The refresh token time limit. After this limit expires, your user can't use 
    #   their refresh token. To specify the time unit for <code>RefreshTokenValidity</code> as 
    #   <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>, 
    #   set a <code>TokenValidityUnits</code> value in your API request.</p>
    #            <p>For example, when you set <code>RefreshTokenValidity</code> as <code>10</code> and
    #   <code>TokenValidityUnits</code> as <code>days</code>, your user can refresh their session
    #   and retrieve new access and ID tokens for 10 days.</p>
    #            <p>The default time unit for <code>RefreshTokenValidity</code> in an API request is days. 
    #   You can't set <code>RefreshTokenValidity</code> to 0. If you do, Amazon Cognito overrides the 
    #   value with the default value of 30 days. <i>Valid range</i> is displayed below 
    #   in seconds.</p>
    #            <p>If you don't specify otherwise in the configuration of your app client, your refresh
    #   tokens are valid for 30 days.</p>
    #   @return [Integer]
    # @!attribute access_token_validity
    #   <p>The access token time limit. After this limit expires, your user can't use 
    #   their access token. To specify the time unit for <code>AccessTokenValidity</code> as 
    #   <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>, 
    #   set a <code>TokenValidityUnits</code> value in your API request.</p>
    #            <p>For example, when you set <code>AccessTokenValidity</code> to <code>10</code> and
    #   <code>TokenValidityUnits</code> to <code>hours</code>, your user can authorize access with
    #   their access token for 10 hours.</p>
    #            <p>The default time unit for <code>AccessTokenValidity</code> in an API request is hours. 
    #   <i>Valid range</i> is displayed below in seconds.</p>
    #            <p>If you don't specify otherwise in the configuration of your app client, your access
    #   tokens are valid for one hour.</p>
    #   @return [Integer]
    # @!attribute id_token_validity
    #   <p>The ID token time limit. After this limit expires, your user can't use 
    #   their ID token. To specify the time unit for <code>IdTokenValidity</code> as 
    #   <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>, 
    #   set a <code>TokenValidityUnits</code> value in your API request.</p>
    #            <p>For example, when you set <code>IdTokenValidity</code> as <code>10</code> and
    #   <code>TokenValidityUnits</code> as <code>hours</code>, your user can authenticate their 
    #   session with their ID token for 10 hours.</p>
    #            <p>The default time unit for <code>IdTokenValidity</code> in an API request is hours. 
    #   <i>Valid range</i> is displayed below in seconds.</p>
    #            <p>If you don't specify otherwise in the configuration of your app client, your ID
    #   tokens are valid for one hour.</p>
    #   @return [Integer]
    # @!attribute token_validity_units
    #   <p>The units that validity times are represented in. The default unit for refresh tokens
    #               is days, and the default for ID and access tokens are hours.</p>
    #   @return [Types::TokenValidityUnitsType]
    # @!attribute read_attributes
    #   <p>The list of user attributes that you want your app client to have read access to.
    #       After your user authenticates in your app, their access token authorizes them to read
    #       their own attribute value for any attribute in this list.</p>
    #            <p>When you don't specify the <code>ReadAttributes</code> for your app client, your
    #       app can read the values of <code>email_verified</code>,
    #       <code>phone_number_verified</code>, and the standard attributes of your user pool.
    #       When your user pool app client has read access to these default attributes,
    #       <code>ReadAttributes</code> doesn't return any information. Amazon Cognito only
    #       populates <code>ReadAttributes</code> in the API response if you have specified your own
    #       custom set of read attributes.</p>
    #   @return [Array<String>]
    # @!attribute write_attributes
    #   <p>The list of user attributes that you want your app client to have write access to.
    #       After your user authenticates in your app, their access token authorizes them to set or
    #       modify their own attribute value for any attribute in this list.</p>
    #            <p>When you don't specify the <code>WriteAttributes</code> for your app client, your
    #       app can write the values of the Standard attributes of your user pool. When your user
    #       pool has write access to these default attributes, <code>WriteAttributes</code>
    #       doesn't return any information. Amazon Cognito only populates
    #           <code>WriteAttributes</code> in the API response if you have specified your own
    #       custom set of write attributes.</p>
    #            <p>If your app client allows users to sign in through an IdP, this array must include all
    #       attributes that you have mapped to IdP attributes. Amazon Cognito updates mapped attributes when
    #       users sign in to your application through an IdP. If your app client does not have write
    #       access to a mapped attribute, Amazon Cognito throws an error when it tries to update the
    #       attribute. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html">Specifying IdP Attribute Mappings for Your user
    #       pool</a>.</p>
    #   @return [Array<String>]
    # @!attribute explicit_auth_flows
    #   <p>The <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html">authentication flows</a> that you want your user pool client to support. For each app 
    #   client in your user pool, you can sign in your users with any combination of one or more flows, including with 
    #   a user name and Secure Remote Password (SRP), a user name and password, or a custom authentication process that 
    #   you define with Lambda functions.</p>
    #            <note>
    #               <p>If you don't specify a value for <code>ExplicitAuthFlows</code>, your app client supports 
    #   <code>ALLOW_REFRESH_TOKEN_AUTH</code>, <code>ALLOW_USER_SRP_AUTH</code>, and <code>ALLOW_CUSTOM_AUTH</code>.
    #   </p>
    #            </note>
    #            <p>The values for authentication flow options include the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_USER_AUTH</code>: Enable selection-based sign-in
    #               with <code>USER_AUTH</code>. This setting covers username-password,
    #               secure remote password (SRP), passwordless, and passkey authentication.
    #               This authentiation flow can do username-password and SRP authentication
    #               without other <code>ExplicitAuthFlows</code> permitting them. For example
    #               users can complete an SRP challenge through <code>USER_AUTH</code> 
    #               without the flow <code>USER_SRP_AUTH</code> being active for the app
    #               client. This flow doesn't include <code>CUSTOM_AUTH</code>.
    #           </p>
    #                  <p>To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_ADMIN_USER_PASSWORD_AUTH</code>: Enable admin based user password
    #               authentication flow <code>ADMIN_USER_PASSWORD_AUTH</code>. This setting replaces
    #               the <code>ADMIN_NO_SRP_AUTH</code> setting. With this authentication flow, your app
    #               passes a user name and password to Amazon Cognito in the request, instead of using the Secure 
    #               Remote Password (SRP) protocol to securely transmit the password.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_CUSTOM_AUTH</code>: Enable Lambda trigger based
    #               authentication.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_USER_PASSWORD_AUTH</code>: Enable user password-based
    #               authentication. In this flow, Amazon Cognito receives the password in the request instead
    #               of using the SRP protocol to verify passwords.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_USER_SRP_AUTH</code>: Enable SRP-based authentication.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_REFRESH_TOKEN_AUTH</code>: Enable authflow to refresh
    #               tokens.</p>
    #               </li>
    #            </ul>
    #            <p>In some environments, you will see the values <code>ADMIN_NO_SRP_AUTH</code>, <code>CUSTOM_AUTH_FLOW_ONLY</code>, or <code>USER_PASSWORD_AUTH</code>. 
    #   You can't assign these legacy <code>ExplicitAuthFlows</code> values to user pool clients at the same time as values that begin with <code>ALLOW_</code>,
    #   like <code>ALLOW_USER_SRP_AUTH</code>.</p>
    #   @return [Array<String>]
    # @!attribute supported_identity_providers
    #   <p>A list of provider names for the identity providers (IdPs) that are supported on this
    #               client. The following are supported: <code>COGNITO</code>, <code>Facebook</code>,
    #               <code>Google</code>, <code>SignInWithApple</code>, and <code>LoginWithAmazon</code>.
    #               You can also specify the names that you configured for the SAML and OIDC IdPs in your
    #               user pool, for example <code>MySAMLIdP</code> or <code>MyOIDCIdP</code>.</p>
    #            <p>This parameter sets the IdPs that <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html">managed 
    #               login</a> will display on the login page for your app client. The removal of 
    #               <code>COGNITO</code> from this list doesn't prevent authentication operations 
    #               for local users with the user pools API in an Amazon Web Services SDK. The only way to prevent 
    #               SDK-based authentication is to block access with a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-waf.html">WAF rule</a>.
    #           </p>
    #   @return [Array<String>]
    # @!attribute callback_ur_ls
    #   <p>A list of allowed redirect, or callback, URLs for managed login authentication. These
    #               URLs are the paths where you want to send your users' browsers after they complete
    #               authentication with managed login or a third-party IdP. Typically, callback URLs are the
    #               home of an application that uses OAuth or OIDC libraries to process authentication
    #               outcomes.</p>
    #            <p>A redirect URI must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                  <p>Be registered with the authorization server. Amazon Cognito doesn't accept
    #                       authorization requests with <code>redirect_uri</code> values that aren't in
    #                       the list of <code>CallbackURLs</code> that you provide in this parameter.</p>
    #               </li>
    #               <li>
    #                  <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #            <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #            <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes
    #               only.</p>
    #            <p>App callback URLs such as <code>myapp://example</code> are also supported.</p>
    #   @return [Array<String>]
    # @!attribute logout_ur_ls
    #   <p>A list of allowed logout URLs for managed login authentication. When you pass
    #                   <code>logout_uri</code> and <code>client_id</code> parameters to
    #                   <code>/logout</code>, Amazon Cognito signs out your user and redirects them to the logout
    #               URL. This parameter describes the URLs that you want to be the permitted targets of
    #                   <code>logout_uri</code>. A typical use of these URLs is when a user selects "Sign
    #               out" and you redirect them to your public homepage. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html">Logout
    #                   endpoint</a>.</p>
    #   @return [Array<String>]
    # @!attribute default_redirect_uri
    #   <p>The default redirect URI. In app clients with one assigned IdP, replaces
    #                   <code>redirect_uri</code> in authentication requests. Must be in the
    #                   <code>CallbackURLs</code> list.</p>
    #   @return [String]
    # @!attribute allowed_o_auth_flows
    #   <p>The OAuth grant types that you want your app client to generate. To create an app
    #               client that generates client credentials grants, you must add
    #                   <code>client_credentials</code> as the only allowed OAuth flow.</p>
    #            <dl>
    #               <dt>code</dt>
    #               <dd>
    #                  <p>Use a code grant flow, which provides an authorization code as the
    #                           response. This code can be exchanged for access tokens with the
    #                               <code>/oauth2/token</code> endpoint.</p>
    #               </dd>
    #               <dt>implicit</dt>
    #               <dd>
    #                  <p>Issue the access token (and, optionally, ID token, based on scopes)
    #                           directly to your user.</p>
    #               </dd>
    #               <dt>client_credentials</dt>
    #               <dd>
    #                  <p>Issue the access token from the <code>/oauth2/token</code> endpoint
    #                           directly to a non-person user using a combination of the client ID and
    #                           client secret.</p>
    #               </dd>
    #            </dl>
    #   @return [Array<String>]
    # @!attribute allowed_o_auth_scopes
    #   <p>The OAuth, OpenID Connect (OIDC), and custom scopes that you want to permit your app
    #               client to authorize access with. Scopes govern access control to user pool self-service
    #               API operations, user data from the <code>userInfo</code> endpoint, and third-party APIs.
    #               Scope values include <code>phone</code>, <code>email</code>, <code>openid</code>, and
    #                   <code>profile</code>. The <code>aws.cognito.signin.user.admin</code> scope
    #               authorizes user self-service operations. Custom scopes with resource servers authorize
    #               access to external APIs.</p>
    #   @return [Array<String>]
    # @!attribute allowed_o_auth_flows_user_pool_client
    #   <p>Set to <code>true</code> to use OAuth 2.0 authorization server features in your app client.</p>
    #            <p>This parameter must have a value of <code>true</code> before you can configure 
    #   the following features in your app client.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CallBackURLs</code>: Callback URLs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LogoutURLs</code>: Sign-out redirect URLs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllowedOAuthScopes</code>: OAuth 2.0 scopes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllowedOAuthFlows</code>: Support for authorization code, implicit, and client credentials OAuth 2.0 grants.</p>
    #               </li>
    #            </ul>
    #            <p>To use authorization server features, configure one of these features in the Amazon Cognito console or set 
    #   <code>AllowedOAuthFlowsUserPoolClient</code> to <code>true</code> in a <code>CreateUserPoolClient</code> or 
    #   <code>UpdateUserPoolClient</code> API request. If you don't set a value for 
    #   <code>AllowedOAuthFlowsUserPoolClient</code> in a request with the CLI or SDKs, it defaults 
    #   to <code>false</code>. When <code>false</code>, only SDK-based API sign-in is permitted.</p>
    #   @return [Boolean]
    # @!attribute analytics_configuration
    #   <p>The user pool analytics configuration for collecting metrics and sending them to your
    #               Amazon Pinpoint campaign.</p>
    #            <p>In Amazon Web Services Regions where Amazon Pinpoint isn't available, user pools might not have access to
    #               analytics or might be configurable with campaigns in the US East (N. Virginia) Region.
    #               For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-pinpoint-integration.html">Using Amazon Pinpoint analytics</a>.</p>
    #   @return [Types::AnalyticsConfigurationType]
    # @!attribute prevent_user_existence_errors
    #   <p>When <code>ENABLED</code>, suppresses messages that might indicate a valid user exists 
    #               when someone attempts sign-in. This parameters sets your preference for the errors and 
    #               responses that you want Amazon Cognito APIs to return during authentication, account
    #               confirmation, and password recovery when the user doesn't exist in the user pool. When
    #               set to <code>ENABLED</code> and the user doesn't exist, authentication returns an error
    #               indicating either the username or password was incorrect. Account confirmation and
    #               password recovery return a response indicating a code was sent to a simulated
    #               destination. When set to <code>LEGACY</code>, those APIs return a
    #               <code>UserNotFoundException</code> exception if the user doesn't exist in the user
    #               pool.</p>
    #            <p>Defaults to <code>LEGACY</code>.</p>
    #   @return [String]
    # @!attribute enable_token_revocation
    #   <p>Activates or deactivates <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/token-revocation.html">token
    #                   revocation</a> in the target app client.</p>
    #   @return [Boolean]
    # @!attribute enable_propagate_additional_user_context_data
    #   <p>When <code>true</code>, your application can include additional
    #                   <code>UserContextData</code> in authentication requests. This data includes the IP
    #               address, and contributes to analysis by threat protection features. For more information
    #               about propagation of user context data, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-device-fingerprint">Adding session data to API requests</a>. If you don’t include this parameter,
    #               you can't send the source IP address to Amazon Cognito threat protection features. You can only
    #               activate <code>EnablePropagateAdditionalUserContextData</code> in an app client that has
    #               a client secret.</p>
    #   @return [Boolean]
    # @!attribute auth_session_validity
    #   <p>Amazon Cognito creates a session token for each API request in an authentication flow. <code>AuthSessionValidity</code> is the duration, 
    #   in minutes, of that session token. Your user pool native user must respond to each authentication challenge before the session expires.</p>
    #   @return [Integer]
    # @!attribute refresh_token_rotation
    #   <p>The configuration of your app client for refresh token rotation. When enabled, your
    #               app client issues new ID, access, and refresh tokens when users renew their sessions
    #               with refresh tokens. When disabled, token refresh issues only ID and access
    #               tokens.</p>
    #   @return [Types::RefreshTokenRotationType]
    class UpdateUserPoolClientRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :client_name,
      :refresh_token_validity,
      :access_token_validity,
      :id_token_validity,
      :token_validity_units,
      :read_attributes,
      :write_attributes,
      :explicit_auth_flows,
      :supported_identity_providers,
      :callback_ur_ls,
      :logout_ur_ls,
      :default_redirect_uri,
      :allowed_o_auth_flows,
      :allowed_o_auth_scopes,
      :allowed_o_auth_flows_user_pool_client,
      :analytics_configuration,
      :prevent_user_existence_errors,
      :enable_token_revocation,
      :enable_propagate_additional_user_context_data,
      :auth_session_validity,
      :refresh_token_rotation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server to the request to update the user pool
    #             client.</p>
    # @!attribute user_pool_client
    #   <p>The updated details of your app client.</p>
    #   @return [Types::UserPoolClientType]
    class UpdateUserPoolClientResponse < Struct.new(
      :user_pool_client,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The UpdateUserPoolDomain request input.</p>
    # @!attribute domain
    #   <p>The name of the domain that you want to update. For custom domains, this is the
    #               fully-qualified domain name, for example <code>auth.example.com</code>. For prefix
    #               domains, this is the prefix alone, such as <code>myprefix</code>.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that is associated with the domain you're updating.</p>
    #   @return [String]
    # @!attribute managed_login_version
    #   <p>A version number that indicates the state of managed login for your domain. Version
    #               <code>1</code> is hosted UI (classic). Version <code>2</code> is the newer managed
    #               login with the branding editor. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html">Managed login</a>.</p>
    #   @return [Integer]
    # @!attribute custom_domain_config
    #   <p>The configuration for a custom domain that hosts managed login for your application.
    #               In an <code>UpdateUserPoolDomain</code> request, this parameter specifies an SSL
    #               certificate for the managed login hosted webserver. The certificate must be an ACM ARN
    #               in <code>us-east-1</code>.</p>
    #            <p>When you create a custom domain, the passkey RP ID defaults to the custom domain. If
    #               you had a prefix domain active, this will cause passkey integration for your prefix
    #               domain to stop working due to a mismatch in RP ID. To keep the prefix domain passkey
    #               integration working, you can explicitly set RP ID to the prefix domain.</p>
    #   @return [Types::CustomDomainConfigType]
    class UpdateUserPoolDomainRequest < Struct.new(
      :domain,
      :user_pool_id,
      :managed_login_version,
      :custom_domain_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The UpdateUserPoolDomain response output.</p>
    # @!attribute managed_login_version
    #   <p>A version number that indicates the state of managed login for your domain. Version
    #               <code>1</code> is hosted UI (classic). Version <code>2</code> is the newer managed
    #               login with the branding editor. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html">Managed login</a>.</p>
    #   @return [Integer]
    # @!attribute cloud_front_domain
    #   <p>The fully-qualified domain name (FQDN) of the Amazon CloudFront distribution that hosts your
    #               managed login or classic hosted UI pages. You domain-name authority must have an alias
    #               record that points requests for your custom domain to this FQDN. Amazon Cognito returns this
    #               value if you set a custom domain with <code>CustomDomainConfig</code>. If you set an
    #               Amazon Cognito prefix domain, this operation returns a blank response.</p>
    #   @return [String]
    class UpdateUserPoolDomainResponse < Struct.new(
      :managed_login_version,
      :cloud_front_domain,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to update the user pool.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool you want to update.</p>
    #   @return [String]
    # @!attribute policies
    #   <p>The password policy and sign-in policy in the user pool. The password policy sets
    #               options like password complexity requirements and password history. The sign-in policy
    #               sets the options available to applications in <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice">choice-based authentication</a>.</p>
    #   @return [Types::UserPoolPolicyType]
    # @!attribute deletion_protection
    #   <p>When active, <code>DeletionProtection</code> prevents accidental deletion of your user
    #   pool. Before you can delete a user pool that you have protected against deletion, you
    #   must deactivate this feature.</p>
    #            <p>When you try to delete a protected user pool in a <code>DeleteUserPool</code> API request, 
    #   Amazon Cognito returns an <code>InvalidParameterException</code> error. To delete a protected user pool, 
    #   send a new <code>DeleteUserPool</code> request after you deactivate deletion protection in an 
    #   <code>UpdateUserPool</code> API request.</p>
    #   @return [String]
    # @!attribute lambda_config
    #   <p>A collection of user pool Lambda triggers. Amazon Cognito invokes triggers at several possible
    #               stages of authentication operations. Triggers can modify the outcome of the operations
    #               that invoked them.</p>
    #   @return [Types::LambdaConfigType]
    # @!attribute auto_verified_attributes
    #   <p>The attributes that you want your user pool to automatically verify. Possible values:
    #                   <b>email</b>, <b>phone_number</b>. For more information see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#allowing-users-to-sign-up-and-confirm-themselves">Verifying contact information at sign-up</a>.</p>
    #   @return [Array<String>]
    # @!attribute sms_verification_message
    #   <p>This parameter is no longer used.</p>
    #   @return [String]
    # @!attribute email_verification_message
    #   <p>This parameter is no longer used.</p>
    #   @return [String]
    # @!attribute email_verification_subject
    #   <p>This parameter is no longer used.</p>
    #   @return [String]
    # @!attribute verification_message_template
    #   <p>The template for the verification message that your user pool delivers to users who
    #               set an email address or phone number attribute.</p>
    #            <p>Set the email message type that corresponds to your <code>DefaultEmailOption</code>
    #               selection. For <code>CONFIRM_WITH_LINK</code>, specify an
    #                   <code>EmailMessageByLink</code> and leave <code>EmailMessage</code> blank. For
    #                   <code>CONFIRM_WITH_CODE</code>, specify an <code>EmailMessage</code> and leave
    #                   <code>EmailMessageByLink</code> blank. When you supply both parameters with either
    #               choice, Amazon Cognito returns an error.</p>
    #   @return [Types::VerificationMessageTemplateType]
    # @!attribute sms_authentication_message
    #   <p>The contents of the SMS message that your user pool sends to users in SMS
    #               authentication.</p>
    #   @return [String]
    # @!attribute user_attribute_update_settings
    #   <p>The settings for updates to user attributes. These settings include the property <code>AttributesRequireVerificationBeforeUpdate</code>,
    #   a user-pool setting that tells Amazon Cognito how to handle changes to the value of your users' email address and phone number attributes. For
    #   more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates">
    #   Verifying updates to email addresses and phone numbers</a>.</p>
    #   @return [Types::UserAttributeUpdateSettingsType]
    # @!attribute mfa_configuration
    #   <p>Sets multi-factor authentication (MFA) to be on, off, or optional. When
    #                   <code>ON</code>, all users must set up MFA before they can sign in. When
    #                   <code>OPTIONAL</code>, your application must make a client-side determination of
    #               whether a user wants to register an MFA device. For user pools with adaptive
    #               authentication with threat protection, choose <code>OPTIONAL</code>.</p>
    #            <p>When <code>MfaConfiguration</code> is <code>OPTIONAL</code>, managed login
    #               doesn't automatically prompt users to set up MFA. Amazon Cognito generates MFA prompts in
    #               API responses and in managed login for users who have chosen and configured a preferred
    #               MFA factor.</p>
    #   @return [String]
    # @!attribute device_configuration
    #   <p>The device-remembering configuration for a user pool. Device remembering or device
    #               tracking is a "Remember me on this device" option for user pools that perform
    #               authentication with the device key of a trusted device in the back end, instead of a
    #               user-provided MFA code. For more information about device authentication, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>. A null value indicates that
    #               you have deactivated device remembering in your user pool.</p>
    #            <note>
    #               <p>When you provide a value for any <code>DeviceConfiguration</code> field, you
    #                   activate the Amazon Cognito device-remembering feature. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with devices</a>.</p>
    #            </note>
    #   @return [Types::DeviceConfigurationType]
    # @!attribute email_configuration
    #   <p>The email configuration of your user pool. The email configuration type sets your
    #               preferred sending method, Amazon Web Services Region, and sender for email invitation and verification
    #               messages from your user pool.</p>
    #   @return [Types::EmailConfigurationType]
    # @!attribute sms_configuration
    #   <p>The SMS configuration with the settings for your Amazon Cognito user pool to send SMS message
    #               with Amazon Simple Notification Service. To send SMS messages with Amazon SNS in the Amazon Web Services Region that you want, the
    #               Amazon Cognito user pool uses an Identity and Access Management (IAM) role in your Amazon Web Services account. For
    #               more information see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html">SMS message settings</a>.</p>
    #   @return [Types::SmsConfigurationType]
    # @!attribute user_pool_tags
    #   <p>The tag keys and values to assign to the user pool. A tag is a label that you can use
    #               to categorize and manage user pools in different ways, such as by purpose, owner,
    #               environment, or other criteria.</p>
    #   @return [Hash<String, String>]
    # @!attribute admin_create_user_config
    #   <p>The configuration for administrative creation of users. Includes the template for the
    #               invitation message for new users, the duration of temporary passwords, and permitting
    #               self-service sign-up.</p>
    #   @return [Types::AdminCreateUserConfigType]
    # @!attribute user_pool_add_ons
    #   <p>Contains settings for activation of threat protection, including the operating 
    #   mode and additional authentication types. To log user security information but take 
    #   no action, set to <code>AUDIT</code>. To configure automatic security responses to 
    #   potentially unwanted traffic to your user pool, set to <code>ENFORCED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html">Adding advanced security to a user pool</a>. To activate this setting, your user pool must be on the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html">
    #                        Plus tier</a>.</p>
    #   @return [Types::UserPoolAddOnsType]
    # @!attribute account_recovery_setting
    #   <p>The available verified method a user can use to recover their password when they call
    #                   <code>ForgotPassword</code>. You can use this setting to define a preferred method
    #               when a user has more than one method available. With this setting, SMS doesn't qualify
    #               for a valid password recovery mechanism if the user also has SMS multi-factor
    #               authentication (MFA) activated. In the absence of this setting, Amazon Cognito uses the legacy
    #               behavior to determine the recovery method where SMS is preferred through email.</p>
    #   @return [Types::AccountRecoverySettingType]
    # @!attribute pool_name
    #   <p>The updated name of your user pool.</p>
    #   @return [String]
    # @!attribute user_pool_tier
    #   <p>The user pool <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html">feature plan</a>, or tier. This parameter determines the
    #               eligibility of the user pool for features like managed login, access-token
    #               customization, and threat protection. Defaults to <code>ESSENTIALS</code>.</p>
    #   @return [String]
    class UpdateUserPoolRequest < Struct.new(
      :user_pool_id,
      :policies,
      :deletion_protection,
      :lambda_config,
      :auto_verified_attributes,
      :sms_verification_message,
      :email_verification_message,
      :email_verification_subject,
      :verification_message_template,
      :sms_authentication_message,
      :user_attribute_update_settings,
      :mfa_configuration,
      :device_configuration,
      :email_configuration,
      :sms_configuration,
      :user_pool_tags,
      :admin_create_user_config,
      :user_pool_add_ons,
      :account_recovery_setting,
      :pool_name,
      :user_pool_tier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response from the server when you make a request to update the user
    #             pool.</p>
    class UpdateUserPoolResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The settings for updates to user attributes. These settings include the property <code>AttributesRequireVerificationBeforeUpdate</code>,
    # a user-pool setting that tells Amazon Cognito how to handle changes to the value of your users' email address and phone number attributes. For
    # more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates">
    # Verifying updates to email addresses and phone numbers</a>.</p>
    # @!attribute attributes_require_verification_before_update
    #   <p>Requires that your user verifies their email address, phone number, or both before
    #               Amazon Cognito updates the value of that attribute. When you update a user attribute that has
    #               this option activated, Amazon Cognito sends a verification message to the new phone number or
    #               email address. Amazon Cognito doesn’t change the value of the attribute until your user responds
    #               to the verification message and confirms the new value.</p>
    #            <p>When <code>AttributesRequireVerificationBeforeUpdate</code> is false, your user pool
    #               doesn't require that your users verify attribute changes before Amazon Cognito updates them. In a
    #               user pool where <code>AttributesRequireVerificationBeforeUpdate</code> is false, API
    #               operations that change attribute values can immediately update a user’s
    #                   <code>email</code> or <code>phone_number</code> attribute.</p>
    #   @return [Array<String>]
    class UserAttributeUpdateSettingsType < Struct.new(
      :attributes_require_verification_before_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contextual data, such as the user's device fingerprint, IP address, or location, used
    #             for evaluating the risk of an unexpected event by Amazon Cognito threat protection.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute ip_address
    #   <p>The source IP address of your user's device.</p>
    #   @return [String]
    # @!attribute encoded_data
    #   <p>Encoded device-fingerprint details that your app collected with the Amazon Cognito
    #               context data collection library. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-device-fingerprint">Adding user device and session data to API requests</a>.</p>
    #   @return [String]
    class UserContextDataType < Struct.new(
      :ip_address,
      :encoded_data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when you're trying to modify a user pool while a user import
    #             job is in progress for that pool.</p>
    # @!attribute message
    #   <p>The message returned when the user pool has an import job running.</p>
    #   @return [String]
    class UserImportInProgressException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A user import job in a user pool. Describes the status of user import with a CSV file.
    #             For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html">Importing users into user pools from a CSV file</a>.</p>
    # @!attribute job_name
    #   <p>The friendly name of the user import job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID of the user import job.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that the users are being imported into.</p>
    #   @return [String]
    # @!attribute pre_signed_url
    #   <p>The pre-signed URL target for uploading the CSV file.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute start_date
    #   <p>The date when the user import job was started.</p>
    #   @return [Time]
    # @!attribute completion_date
    #   <p>The date when the user import job was completed.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the user import job. One of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Created</code> - The job was created but not started.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Pending</code> - A transition state. You have started the job, but it
    #                       has not begun importing users yet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InProgress</code> - The job has started, and users are being
    #                       imported.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Stopping</code> - You have stopped the job, but the job has not stopped
    #                       importing users yet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Stopped</code> - You have stopped the job, and the job has stopped
    #                       importing users.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Succeeded</code> - The job has completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code> - The job has stopped due to an error.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Expired</code> - You created a job, but did not start the job within
    #                       24-48 hours. All data associated with the job was deleted, and the job can't be
    #                       started.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute cloud_watch_logs_role_arn
    #   <p>The role Amazon Resource Name (ARN) for the Amazon CloudWatch Logging role for the user import
    #               job. For more information, see "Creating the CloudWatch Logs IAM Role" in the Amazon Cognito Developer
    #               Guide.</p>
    #   @return [String]
    # @!attribute imported_users
    #   <p>The number of users that were successfully imported.</p>
    #   @return [Integer]
    # @!attribute skipped_users
    #   <p>The number of users that were skipped.</p>
    #   @return [Integer]
    # @!attribute failed_users
    #   <p>The number of users that couldn't be imported.</p>
    #   @return [Integer]
    # @!attribute completion_message
    #   <p>The message returned when the user import job is completed.</p>
    #   @return [String]
    class UserImportJobType < Struct.new(
      :job_name,
      :job_id,
      :user_pool_id,
      :pre_signed_url,
      :creation_date,
      :start_date,
      :completion_date,
      :status,
      :cloud_watch_logs_role_arn,
      :imported_users,
      :skipped_users,
      :failed_users,
      :completion_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:imported_users] = 0 unless options.key?(:imported_users)
        options[:skipped_users] = 0 unless options.key?(:skipped_users)
        options[:failed_users] = 0 unless options.key?(:failed_users)
        super
      end
    end

    # <p>This exception is thrown when the Amazon Cognito service encounters a user validation exception
    #             with the Lambda service.</p>
    # @!attribute message
    #   <p>The message returned when the Amazon Cognito service returns a user validation exception with
    #               the Lambda service.</p>
    #   @return [String]
    class UserLambdaValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a user isn't confirmed successfully.</p>
    # @!attribute message
    #   <p>The message returned when a user isn't confirmed successfully.</p>
    #   @return [String]
    class UserNotConfirmedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a user isn't found.</p>
    # @!attribute message
    #   <p>The message returned when a user isn't found.</p>
    #   @return [String]
    class UserNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when user pool add-ons aren't enabled.</p>
    # @!attribute message
    #   @return [String]
    class UserPoolAddOnNotEnabledException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains settings for activation of threat protection, including the operating 
    # mode and additional authentication types. To log user security information but take 
    # no action, set to <code>AUDIT</code>. To configure automatic security responses to 
    # potentially unwanted traffic to your user pool, set to <code>ENFORCED</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html">Adding advanced security to a user pool</a>. To activate this setting, your user pool must be on the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html">
    #                      Plus tier</a>.</p>
    # @!attribute advanced_security_mode
    #   <p>The operating mode of threat protection for standard authentication types in your user
    #               pool, including username-password and secure remote password (SRP) authentication.
    #           </p>
    #   @return [String]
    # @!attribute advanced_security_additional_flows
    #   <p>Threat protection configuration options for additional authentication types in your
    #               user pool, including custom
    #               authentication. </p>
    #   @return [Types::AdvancedSecurityAdditionalFlowsType]
    class UserPoolAddOnsType < Struct.new(
      :advanced_security_mode,
      :advanced_security_additional_flows,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A short description of a user pool app client.</p>
    # @!attribute client_id
    #   <p>The app client ID.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that's associated with the app client.</p>
    #   @return [String]
    # @!attribute client_name
    #   <p>The app client name.</p>
    #   @return [String]
    class UserPoolClientDescription < Struct.new(
      :client_id,
      :user_pool_id,
      :client_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of a user pool client.</p>
    # @!attribute user_pool_id
    #   <p>The ID of the user pool associated with the app client.</p>
    #   @return [String]
    # @!attribute client_name
    #   <p>The name of the app client.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The ID of the app client.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The app client secret.</p>
    #   @return [String]
    # @!attribute last_modified_date
    #   <p>The date and time when the item was modified. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute creation_date
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute refresh_token_validity
    #   <p>The refresh token time limit. After this limit expires, your user can't use 
    #   their refresh token. To specify the time unit for <code>RefreshTokenValidity</code> as 
    #   <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>, 
    #   set a <code>TokenValidityUnits</code> value in your API request.</p>
    #            <p>For example, when you set <code>RefreshTokenValidity</code> as <code>10</code> and
    #   <code>TokenValidityUnits</code> as <code>days</code>, your user can refresh their session
    #   and retrieve new access and ID tokens for 10 days.</p>
    #            <p>The default time unit for <code>RefreshTokenValidity</code> in an API request is days. 
    #   You can't set <code>RefreshTokenValidity</code> to 0. If you do, Amazon Cognito overrides the 
    #   value with the default value of 30 days. <i>Valid range</i> is displayed below 
    #   in seconds.</p>
    #            <p>If you don't specify otherwise in the configuration of your app client, your refresh
    #   tokens are valid for 30 days.</p>
    #   @return [Integer]
    # @!attribute access_token_validity
    #   <p>The access token time limit. After this limit expires, your user can't use 
    #   their access token. To specify the time unit for <code>AccessTokenValidity</code> as 
    #   <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>, 
    #   set a <code>TokenValidityUnits</code> value in your API request.</p>
    #            <p>For example, when you set <code>AccessTokenValidity</code> to <code>10</code> and
    #   <code>TokenValidityUnits</code> to <code>hours</code>, your user can authorize access with
    #   their access token for 10 hours.</p>
    #            <p>The default time unit for <code>AccessTokenValidity</code> in an API request is hours. 
    #   <i>Valid range</i> is displayed below in seconds.</p>
    #            <p>If you don't specify otherwise in the configuration of your app client, your access
    #   tokens are valid for one hour.</p>
    #   @return [Integer]
    # @!attribute id_token_validity
    #   <p>The ID token time limit. After this limit expires, your user can't use 
    #   their ID token. To specify the time unit for <code>IdTokenValidity</code> as 
    #   <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>, 
    #   set a <code>TokenValidityUnits</code> value in your API request.</p>
    #            <p>For example, when you set <code>IdTokenValidity</code> as <code>10</code> and
    #   <code>TokenValidityUnits</code> as <code>hours</code>, your user can authenticate their 
    #   session with their ID token for 10 hours.</p>
    #            <p>The default time unit for <code>IdTokenValidity</code> in an API request is hours. 
    #   <i>Valid range</i> is displayed below in seconds.</p>
    #            <p>If you don't specify otherwise in the configuration of your app client, your ID
    #   tokens are valid for one hour.</p>
    #   @return [Integer]
    # @!attribute token_validity_units
    #   <p>The time units that, with <code>IdTokenValidity</code>,
    #                   <code>AccessTokenValidity</code>, and <code>RefreshTokenValidity</code>, set and
    #               display the duration of ID, access, and refresh tokens for an app client. You can assign
    #               a separate token validity unit to each type of token. </p>
    #   @return [Types::TokenValidityUnitsType]
    # @!attribute read_attributes
    #   <p>The list of user attributes that you want your app client to have read access to.
    #       After your user authenticates in your app, their access token authorizes them to read
    #       their own attribute value for any attribute in this list.</p>
    #            <p>When you don't specify the <code>ReadAttributes</code> for your app client, your
    #       app can read the values of <code>email_verified</code>,
    #       <code>phone_number_verified</code>, and the standard attributes of your user pool.
    #       When your user pool app client has read access to these default attributes,
    #       <code>ReadAttributes</code> doesn't return any information. Amazon Cognito only
    #       populates <code>ReadAttributes</code> in the API response if you have specified your own
    #       custom set of read attributes.</p>
    #   @return [Array<String>]
    # @!attribute write_attributes
    #   <p>The list of user attributes that you want your app client to have write access to.
    #       After your user authenticates in your app, their access token authorizes them to set or
    #       modify their own attribute value for any attribute in this list.</p>
    #            <p>When you don't specify the <code>WriteAttributes</code> for your app client, your
    #       app can write the values of the Standard attributes of your user pool. When your user
    #       pool has write access to these default attributes, <code>WriteAttributes</code>
    #       doesn't return any information. Amazon Cognito only populates
    #           <code>WriteAttributes</code> in the API response if you have specified your own
    #       custom set of write attributes.</p>
    #            <p>If your app client allows users to sign in through an IdP, this array must include all
    #       attributes that you have mapped to IdP attributes. Amazon Cognito updates mapped attributes when
    #       users sign in to your application through an IdP. If your app client does not have write
    #       access to a mapped attribute, Amazon Cognito throws an error when it tries to update the
    #       attribute. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html">Specifying IdP Attribute Mappings for Your user
    #       pool</a>.</p>
    #   @return [Array<String>]
    # @!attribute explicit_auth_flows
    #   <p>The <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html">authentication flows</a> that you want your user pool client to support. For each app 
    #   client in your user pool, you can sign in your users with any combination of one or more flows, including with 
    #   a user name and Secure Remote Password (SRP), a user name and password, or a custom authentication process that 
    #   you define with Lambda functions.</p>
    #            <note>
    #               <p>If you don't specify a value for <code>ExplicitAuthFlows</code>, your app client supports 
    #   <code>ALLOW_REFRESH_TOKEN_AUTH</code>, <code>ALLOW_USER_SRP_AUTH</code>, and <code>ALLOW_CUSTOM_AUTH</code>.
    #   </p>
    #            </note>
    #            <p>The values for authentication flow options include the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_USER_AUTH</code>: Enable selection-based sign-in
    #               with <code>USER_AUTH</code>. This setting covers username-password,
    #               secure remote password (SRP), passwordless, and passkey authentication.
    #               This authentiation flow can do username-password and SRP authentication
    #               without other <code>ExplicitAuthFlows</code> permitting them. For example
    #               users can complete an SRP challenge through <code>USER_AUTH</code> 
    #               without the flow <code>USER_SRP_AUTH</code> being active for the app
    #               client. This flow doesn't include <code>CUSTOM_AUTH</code>.
    #           </p>
    #                  <p>To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_ADMIN_USER_PASSWORD_AUTH</code>: Enable admin based user password
    #               authentication flow <code>ADMIN_USER_PASSWORD_AUTH</code>. This setting replaces
    #               the <code>ADMIN_NO_SRP_AUTH</code> setting. With this authentication flow, your app
    #               passes a user name and password to Amazon Cognito in the request, instead of using the Secure 
    #               Remote Password (SRP) protocol to securely transmit the password.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_CUSTOM_AUTH</code>: Enable Lambda trigger based
    #               authentication.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_USER_PASSWORD_AUTH</code>: Enable user password-based
    #               authentication. In this flow, Amazon Cognito receives the password in the request instead
    #               of using the SRP protocol to verify passwords.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_USER_SRP_AUTH</code>: Enable SRP-based authentication.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_REFRESH_TOKEN_AUTH</code>: Enable authflow to refresh
    #               tokens.</p>
    #               </li>
    #            </ul>
    #            <p>In some environments, you will see the values <code>ADMIN_NO_SRP_AUTH</code>, <code>CUSTOM_AUTH_FLOW_ONLY</code>, or <code>USER_PASSWORD_AUTH</code>. 
    #   You can't assign these legacy <code>ExplicitAuthFlows</code> values to user pool clients at the same time as values that begin with <code>ALLOW_</code>,
    #   like <code>ALLOW_USER_SRP_AUTH</code>.</p>
    #   @return [Array<String>]
    # @!attribute supported_identity_providers
    #   <p>A list of provider names for the identity providers (IdPs) that are supported on this
    #               client. The following are supported: <code>COGNITO</code>, <code>Facebook</code>,
    #               <code>Google</code>, <code>SignInWithApple</code>, and <code>LoginWithAmazon</code>.
    #               You can also specify the names that you configured for the SAML and OIDC IdPs in your
    #               user pool, for example <code>MySAMLIdP</code> or <code>MyOIDCIdP</code>.</p>
    #            <p>This parameter sets the IdPs that <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html">managed 
    #               login</a> will display on the login page for your app client. The removal of 
    #               <code>COGNITO</code> from this list doesn't prevent authentication operations 
    #               for local users with the user pools API in an Amazon Web Services SDK. The only way to prevent 
    #               SDK-based authentication is to block access with a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-waf.html">WAF rule</a>.
    #           </p>
    #   @return [Array<String>]
    # @!attribute callback_ur_ls
    #   <p>A list of allowed redirect (callback) URLs for the IdPs.</p>
    #            <p>A redirect URI must:</p>
    #            <ul>
    #               <li>
    #                  <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                  <p>Be registered with the authorization server.</p>
    #               </li>
    #               <li>
    #                  <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #            <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #            <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes
    #               only.</p>
    #            <p>App callback URLs such as myapp://example are also supported.</p>
    #   @return [Array<String>]
    # @!attribute logout_ur_ls
    #   <p>A list of allowed logout URLs for the IdPs.</p>
    #   @return [Array<String>]
    # @!attribute default_redirect_uri
    #   <p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p>
    #            <p>A redirect URI must:</p>
    #            <ul>
    #               <li>
    #                  <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                  <p>Be registered with the authorization server.</p>
    #               </li>
    #               <li>
    #                  <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #            <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #            <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes
    #               only.</p>
    #            <p>App callback URLs such as myapp://example are also supported.</p>
    #   @return [String]
    # @!attribute allowed_o_auth_flows
    #   <p>The OAuth grant types that you want your app client to generate. To create an app
    #               client that generates client credentials grants, you must add
    #                   <code>client_credentials</code> as the only allowed OAuth flow.</p>
    #            <dl>
    #               <dt>code</dt>
    #               <dd>
    #                  <p>Use a code grant flow, which provides an authorization code as the
    #                           response. This code can be exchanged for access tokens with the
    #                               <code>/oauth2/token</code> endpoint.</p>
    #               </dd>
    #               <dt>implicit</dt>
    #               <dd>
    #                  <p>Issue the access token (and, optionally, ID token, based on scopes)
    #                           directly to your user.</p>
    #               </dd>
    #               <dt>client_credentials</dt>
    #               <dd>
    #                  <p>Issue the access token from the <code>/oauth2/token</code> endpoint
    #                           directly to a non-person user using a combination of the client ID and
    #                           client secret.</p>
    #               </dd>
    #            </dl>
    #   @return [Array<String>]
    # @!attribute allowed_o_auth_scopes
    #   <p>The OAuth 2.0 scopes that you want your app client to support. Can include standard
    #               OAuth scopes like <code>phone</code>, <code>email</code>, <code>openid</code>, and
    #                   <code>profile</code>. Can also include the
    #                   <code>aws.cognito.signin.user.admin</code> scope that authorizes user profile
    #               self-service operations and custom scopes from resource servers.</p>
    #   @return [Array<String>]
    # @!attribute allowed_o_auth_flows_user_pool_client
    #   <p>Set to <code>true</code> to use OAuth 2.0 authorization server features in your app client.</p>
    #            <p>This parameter must have a value of <code>true</code> before you can configure 
    #   the following features in your app client.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CallBackURLs</code>: Callback URLs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LogoutURLs</code>: Sign-out redirect URLs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllowedOAuthScopes</code>: OAuth 2.0 scopes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllowedOAuthFlows</code>: Support for authorization code, implicit, and client credentials OAuth 2.0 grants.</p>
    #               </li>
    #            </ul>
    #            <p>To use authorization server features, configure one of these features in the Amazon Cognito console or set 
    #   <code>AllowedOAuthFlowsUserPoolClient</code> to <code>true</code> in a <code>CreateUserPoolClient</code> or 
    #   <code>UpdateUserPoolClient</code> API request. If you don't set a value for 
    #   <code>AllowedOAuthFlowsUserPoolClient</code> in a request with the CLI or SDKs, it defaults 
    #   to <code>false</code>. When <code>false</code>, only SDK-based API sign-in is permitted.</p>
    #   @return [Boolean]
    # @!attribute analytics_configuration
    #   <p>The user pool analytics configuration for collecting metrics and sending them to your
    #               Amazon Pinpoint campaign.</p>
    #            <note>
    #               <p>In Amazon Web Services Regions where Amazon Pinpoint isn't available, user pools only support sending
    #                   events to Amazon Pinpoint projects in Amazon Web Services Region us-east-1. In Regions where Amazon Pinpoint is
    #                   available, user pools support sending events to Amazon Pinpoint projects within that same
    #                   Region.</p>
    #            </note>
    #   @return [Types::AnalyticsConfigurationType]
    # @!attribute prevent_user_existence_errors
    #   <p>When <code>ENABLED</code>, suppresses messages that might indicate a valid user exists 
    #               when someone attempts sign-in. This parameters sets your preference for the errors and 
    #               responses that you want Amazon Cognito APIs to return during authentication, account
    #               confirmation, and password recovery when the user doesn't exist in the user pool. When
    #               set to <code>ENABLED</code> and the user doesn't exist, authentication returns an error
    #               indicating either the username or password was incorrect. Account confirmation and
    #               password recovery return a response indicating a code was sent to a simulated
    #               destination. When set to <code>LEGACY</code>, those APIs return a
    #               <code>UserNotFoundException</code> exception if the user doesn't exist in the user
    #               pool.</p>
    #            <p>Defaults to <code>LEGACY</code>.</p>
    #   @return [String]
    # @!attribute enable_token_revocation
    #   <p>Indicates whether token revocation is activated for the user pool client. When you
    #               create a new user pool client, token revocation is activated by default.</p>
    #   @return [Boolean]
    # @!attribute enable_propagate_additional_user_context_data
    #   <p>When <code>EnablePropagateAdditionalUserContextData</code> is true, Amazon Cognito accepts an
    #                   <code>IpAddress</code> value that you send in the <code>UserContextData</code>
    #               parameter. The <code>UserContextData</code> parameter sends information to Amazon Cognito threat
    #               protection for risk analysis. You can send <code>UserContextData</code> when you sign in
    #               Amazon Cognito native users with the <code>InitiateAuth</code> and
    #                   <code>RespondToAuthChallenge</code> API operations.</p>
    #            <p>When <code>EnablePropagateAdditionalUserContextData</code> is false, you can't send
    #               your user's source IP address to Amazon Cognito threat protection with unauthenticated API
    #               operations. <code>EnablePropagateAdditionalUserContextData</code> doesn't affect whether
    #               you can send a source IP address in a <code>ContextData</code> parameter with the
    #               authenticated API operations <code>AdminInitiateAuth</code> and
    #                   <code>AdminRespondToAuthChallenge</code>.</p>
    #            <p>You can only activate <code>EnablePropagateAdditionalUserContextData</code> in an app
    #               client that has a client secret. For more information about propagation of user context
    #               data, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-device-fingerprint">Adding user device and session data to API requests</a>.</p>
    #   @return [Boolean]
    # @!attribute auth_session_validity
    #   <p>Amazon Cognito creates a session token for each API request in an authentication flow. <code>AuthSessionValidity</code> is the duration, 
    #   in minutes, of that session token. Your user pool native user must respond to each authentication challenge before the session expires.</p>
    #   @return [Integer]
    # @!attribute refresh_token_rotation
    #   <p>The configuration of your app client for refresh token rotation. When enabled, your
    #               app client issues new ID, access, and refresh tokens when users renew their sessions
    #               with refresh tokens. When disabled, token refresh issues only ID and access
    #               tokens.</p>
    #   @return [Types::RefreshTokenRotationType]
    class UserPoolClientType < Struct.new(
      :user_pool_id,
      :client_name,
      :client_id,
      :client_secret,
      :last_modified_date,
      :creation_date,
      :refresh_token_validity,
      :access_token_validity,
      :id_token_validity,
      :token_validity_units,
      :read_attributes,
      :write_attributes,
      :explicit_auth_flows,
      :supported_identity_providers,
      :callback_ur_ls,
      :logout_ur_ls,
      :default_redirect_uri,
      :allowed_o_auth_flows,
      :allowed_o_auth_scopes,
      :allowed_o_auth_flows_user_pool_client,
      :analytics_configuration,
      :prevent_user_existence_errors,
      :enable_token_revocation,
      :enable_propagate_additional_user_context_data,
      :auth_session_validity,
      :refresh_token_rotation,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:refresh_token_validity] = 0 unless options.key?(:refresh_token_validity)
        options[:allowed_o_auth_flows_user_pool_client] = nil unless options.key?(:allowed_o_auth_flows_user_pool_client)
        super
      end
    end

    # <p>A short description of a user pool.</p>
    # @!attribute id
    #   <p>The user pool ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The user pool name.</p>
    #   @return [String]
    # @!attribute lambda_config
    #   <p>A collection of user pool Lambda triggers. Amazon Cognito invokes triggers at several possible
    #               stages of user pool operations. Triggers can modify the outcome of the operations that
    #               invoked them.</p>
    #   @return [Types::LambdaConfigType]
    # @!attribute status
    #   <p>The user pool status.</p>
    #   @deprecated
    #     This property is no longer available.
    #   @return [String]
    # @!attribute last_modified_date
    #   <p>The date and time when the item was modified. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute creation_date
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    class UserPoolDescriptionType < Struct.new(
      :id,
      :name,
      :lambda_config,
      :status,
      :last_modified_date,
      :creation_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of user pool policies. Contains the policy that sets password-complexity
    #             requirements.</p>
    # @!attribute password_policy
    #   <p>The password policy settings for a user pool, including complexity, history, and
    #               length requirements.</p>
    #   @return [Types::PasswordPolicyType]
    # @!attribute sign_in_policy
    #   <p>The policy for allowed types of authentication in a user pool.</p>
    #   @return [Types::SignInPolicyType]
    class UserPoolPolicyType < Struct.new(
      :password_policy,
      :sign_in_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a user pool tag can't be set or updated.</p>
    # @!attribute message
    #   @return [String]
    class UserPoolTaggingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of a user pool.</p>
    # @!attribute id
    #   <p>The ID of the user pool.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the user pool.</p>
    #   @return [String]
    # @!attribute policies
    #   <p>A list of user pool policies. Contains the policy that sets password-complexity
    #               requirements.</p>
    #   @return [Types::UserPoolPolicyType]
    # @!attribute deletion_protection
    #   <p>When active, <code>DeletionProtection</code> prevents accidental deletion of your user
    #   pool. Before you can delete a user pool that you have protected against deletion, you
    #   must deactivate this feature.</p>
    #            <p>When you try to delete a protected user pool in a <code>DeleteUserPool</code> API request, 
    #   Amazon Cognito returns an <code>InvalidParameterException</code> error. To delete a protected user pool, 
    #   send a new <code>DeleteUserPool</code> request after you deactivate deletion protection in an 
    #   <code>UpdateUserPool</code> API request.</p>
    #   @return [String]
    # @!attribute lambda_config
    #   <p>A collection of user pool Lambda triggers. Amazon Cognito invokes triggers at several possible
    #               stages of user pool operations. Triggers can modify the outcome of the operations that
    #               invoked them.</p>
    #   @return [Types::LambdaConfigType]
    # @!attribute status
    #   <p>This parameter is no longer used.</p>
    #   @deprecated
    #     This property is no longer available.
    #   @return [String]
    # @!attribute last_modified_date
    #   <p>The date and time when the item was modified. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute creation_date
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute schema_attributes
    #   <p>A list of the user attributes and their properties in your user pool. The attribute
    #               schema contains standard attributes, custom attributes with a <code>custom:</code>
    #               prefix, and developer attributes with a <code>dev:</code> prefix. For more information,
    #               see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html">User pool
    #                   attributes</a>.</p>
    #            <p>Developer-only attributes are a legacy feature of user pools, and are read-only to all
    #               app clients. You can create and update developer-only attributes only with
    #               IAM-authenticated API operations. Use app client read/write permissions instead.</p>
    #   @return [Array<Types::SchemaAttributeType>]
    # @!attribute auto_verified_attributes
    #   <p>The attributes that are auto-verified in a user pool.</p>
    #   @return [Array<String>]
    # @!attribute alias_attributes
    #   <p>Attributes supported as an alias for this user pool. An alias is an attribute that
    #               users can enter as an alternative username. Possible values: <b>phone_number</b>, <b>email</b>, or <b>preferred_username</b>.</p>
    #   @return [Array<String>]
    # @!attribute username_attributes
    #   <p>Specifies whether a user can use an email address or phone number as a username when
    #               they sign up.</p>
    #   @return [Array<String>]
    # @!attribute sms_verification_message
    #   <p>This parameter is no longer used.</p>
    #   @return [String]
    # @!attribute email_verification_message
    #   <p>This parameter is no longer used.</p>
    #   @return [String]
    # @!attribute email_verification_subject
    #   <p>This parameter is no longer used.</p>
    #   @return [String]
    # @!attribute verification_message_template
    #   <p>The template for the verification message that your user pool delivers to users who
    #               set an email address or phone number attribute.</p>
    #   @return [Types::VerificationMessageTemplateType]
    # @!attribute sms_authentication_message
    #   <p>The contents of the SMS authentication message.</p>
    #   @return [String]
    # @!attribute user_attribute_update_settings
    #   <p>The settings for updates to user attributes. These settings include the property <code>AttributesRequireVerificationBeforeUpdate</code>,
    #   a user-pool setting that tells Amazon Cognito how to handle changes to the value of your users' email address and phone number attributes. For
    #   more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates">
    #   Verifying updates to email addresses and phone numbers</a>.</p>
    #   @return [Types::UserAttributeUpdateSettingsType]
    # @!attribute mfa_configuration
    #   <p>Can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>OFF</code> - MFA tokens aren't required and can't be specified during user
    #                       registration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ON</code> - MFA tokens are required for all user registrations. You can
    #                       only specify required when you're initially creating a user pool.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIONAL</code> - Users have the option when registering to create an MFA
    #                       token.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute device_configuration
    #   <p>The device-remembering configuration for a user pool. A null value indicates that you
    #               have deactivated device remembering in your user pool.</p>
    #            <note>
    #               <p>When you provide a value for any <code>DeviceConfiguration</code> field, you
    #                   activate the Amazon Cognito device-remembering feature.</p>
    #            </note>
    #   @return [Types::DeviceConfigurationType]
    # @!attribute estimated_number_of_users
    #   <p>A number estimating the size of the user pool.</p>
    #   @return [Integer]
    # @!attribute email_configuration
    #   <p>The email configuration of your user pool. The email configuration type sets your
    #               preferred sending method, Amazon Web Services Region, and sender for messages from your user
    #               pool.</p>
    #   @return [Types::EmailConfigurationType]
    # @!attribute sms_configuration
    #   <p>User pool configuration for delivery of SMS messages with Amazon Simple Notification Service. To send SMS
    #               messages with Amazon SNS in the Amazon Web Services Region that you want, the Amazon Cognito user pool uses an
    #               Identity and Access Management (IAM) role in your Amazon Web Services account.</p>
    #   @return [Types::SmsConfigurationType]
    # @!attribute user_pool_tags
    #   <p>The tags that are assigned to the user pool. A tag is a label that you can apply to
    #               user pools to categorize and manage them in different ways, such as by purpose, owner,
    #               environment, or other criteria.</p>
    #   @return [Hash<String, String>]
    # @!attribute sms_configuration_failure
    #   <p>The reason why the SMS configuration can't send the messages to your users.</p>
    #            <p>This message might include comma-separated values to describe why your SMS
    #               configuration can't send messages to user pool end users.</p>
    #            <dl>
    #               <dt>InvalidSmsRoleAccessPolicyException</dt>
    #               <dd>
    #                  <p>The Identity and Access Management role that Amazon Cognito uses to send SMS messages isn't properly
    #                           configured. For more information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SmsConfigurationType.html">SmsConfigurationType</a>.</p>
    #               </dd>
    #               <dt>SNSSandbox</dt>
    #               <dd>
    #                  <p>The Amazon Web Services account is in the SNS SMS Sandbox and messages will
    #                           only reach verified end users. This parameter won’t get populated with
    #                           SNSSandbox if the user creating the user pool doesn’t have SNS permissions.
    #                           To learn how to move your Amazon Web Services account out of the sandbox, see
    #                               <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox-moving-to-production.html">Moving out
    #                               of the SMS sandbox</a>.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute email_configuration_failure
    #   <p>Deprecated. Review error codes from API requests with
    #                   <code>EventSource:cognito-idp.amazonaws.com</code> in CloudTrail for
    #               information about problems with user pool email configuration.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain prefix, if the user pool has a domain associated with it.</p>
    #   @return [String]
    # @!attribute custom_domain
    #   <p>A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use
    #               a custom domain to host the sign-up and sign-in pages for your application. An example
    #               of a custom domain name might be <code>auth.example.com</code>.</p>
    #            <p>For more information about adding a custom domain to your user pool, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html">Using Your Own Domain for the Hosted UI</a>.</p>
    #   @return [String]
    # @!attribute admin_create_user_config
    #   <p>The configuration for <code>AdminCreateUser</code> requests.</p>
    #   @return [Types::AdminCreateUserConfigType]
    # @!attribute user_pool_add_ons
    #   <p>Contains settings for activation of threat protection, including the operating 
    #   mode and additional authentication types. To log user security information but take 
    #   no action, set to <code>AUDIT</code>. To configure automatic security responses to 
    #   potentially unwanted traffic to your user pool, set to <code>ENFORCED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html">Adding advanced security to a user pool</a>. To activate this setting, your user pool must be on the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html">
    #                        Plus tier</a>.</p>
    #   @return [Types::UserPoolAddOnsType]
    # @!attribute username_configuration
    #   <p>Case sensitivity of the username input for the selected sign-in option. When case
    #               sensitivity is set to <code>False</code> (case insensitive), users can sign in with any
    #               combination of capital and lowercase letters. For example, <code>username</code>,
    #                   <code>USERNAME</code>, or <code>UserName</code>, or for email,
    #                   <code>email@example.com</code> or <code>EMaiL@eXamplE.Com</code>. For most use
    #               cases, set case sensitivity to <code>False</code> (case insensitive) as a best practice.
    #               When usernames and email addresses are case insensitive, Amazon Cognito treats any variation in
    #               case as the same user, and prevents a case variation from being assigned to the same
    #               attribute for a different user.</p>
    #   @return [Types::UsernameConfigurationType]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user pool.</p>
    #   @return [String]
    # @!attribute account_recovery_setting
    #   <p>The available verified method a user can use to recover their password when they call
    #                   <code>ForgotPassword</code>. You can use this setting to define a preferred method
    #               when a user has more than one method available. With this setting, SMS doesn't qualify
    #               for a valid password recovery mechanism if the user also has SMS multi-factor
    #               authentication (MFA) activated. In the absence of this setting, Amazon Cognito uses the legacy
    #               behavior to determine the recovery method where SMS is preferred through email.</p>
    #   @return [Types::AccountRecoverySettingType]
    # @!attribute user_pool_tier
    #   <p>The user pool <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html">feature plan</a>, or tier. This parameter determines the
    #               eligibility of the user pool for features like managed login, access-token
    #               customization, and threat protection. Defaults to <code>ESSENTIALS</code>.</p>
    #   @return [String]
    class UserPoolType < Struct.new(
      :id,
      :name,
      :policies,
      :deletion_protection,
      :lambda_config,
      :status,
      :last_modified_date,
      :creation_date,
      :schema_attributes,
      :auto_verified_attributes,
      :alias_attributes,
      :username_attributes,
      :sms_verification_message,
      :email_verification_message,
      :email_verification_subject,
      :verification_message_template,
      :sms_authentication_message,
      :user_attribute_update_settings,
      :mfa_configuration,
      :device_configuration,
      :estimated_number_of_users,
      :email_configuration,
      :sms_configuration,
      :user_pool_tags,
      :sms_configuration_failure,
      :email_configuration_failure,
      :domain,
      :custom_domain,
      :admin_create_user_config,
      :user_pool_add_ons,
      :username_configuration,
      :arn,
      :account_recovery_setting,
      :user_pool_tier,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:estimated_number_of_users] = 0 unless options.key?(:estimated_number_of_users)
        super
      end
    end

    # <p>A user profile in a Amazon Cognito user pool.</p>
    # @!attribute username
    #   <p>The user's username.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Names and values of a user's attributes, for example <code>email</code>.</p>
    #   @return [Array<Types::AttributeType>]
    # @!attribute user_create_date
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute user_last_modified_date
    #   <p>The date and time when the item was modified. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    # @!attribute enabled
    #   <p>Indicates whether the user's account is enabled or disabled.</p>
    #   @return [Boolean]
    # @!attribute user_status
    #   <p>The user status. This can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UNCONFIRMED</code>: User has been created but not confirmed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONFIRMED</code>: User has been confirmed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXTERNAL_PROVIDER</code>: User signed in with a third-party IdP.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESET_REQUIRED</code>: User is confirmed, but the user must request a
    #                       code and reset their password before they can sign in.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FORCE_CHANGE_PASSWORD</code>: The user is confirmed and the user can
    #                       sign in using a temporary password, but on first sign-in, the user must change
    #                       their password to a new value before doing anything else. </p>
    #               </li>
    #            </ul>
    #            <p>The statuses <code>ARCHIVED</code>, <code>UNKNOWN</code>, and <code>COMPROMISED</code>
    #               are no longer used.</p>
    #   @return [String]
    # @!attribute mfa_options
    #   <p>The user's MFA configuration.</p>
    #   @return [Array<Types::MFAOptionType>]
    class UserType < Struct.new(
      :username,
      :attributes,
      :user_create_date,
      :user_last_modified_date,
      :enabled,
      :user_status,
      :mfa_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>The configuration of a user pool for username case sensitivity.</p>
    # @!attribute case_sensitive
    #   <p>Specifies whether user name case sensitivity will be applied for all users in the user
    #               pool through Amazon Cognito APIs. For most use cases, set case sensitivity to <code>False</code>
    #               (case insensitive) as a best practice. When usernames and email addresses are case
    #               insensitive, users can sign in as the same user when they enter a different
    #               capitalization of their user name.</p>
    #            <p>Valid values include:</p>
    #            <dl>
    #               <dt>true</dt>
    #               <dd>
    #                  <p>Enables case sensitivity for all username input. When this option is set
    #                           to <code>true</code>, users must sign in using the exact capitalization of
    #                           their given username, such as “UserName”. This is the default value.</p>
    #               </dd>
    #               <dt>false</dt>
    #               <dd>
    #                  <p>Enables case insensitivity for all username input. For example, when this
    #                           option is set to <code>false</code>, users can sign in using
    #                               <code>username</code>, <code>USERNAME</code>, or <code>UserName</code>.
    #                           This option also enables both <code>preferred_username</code> and
    #                               <code>email</code> alias to be case insensitive, in addition to the
    #                               <code>username</code> attribute.</p>
    #               </dd>
    #            </dl>
    #   @return [Boolean]
    class UsernameConfigurationType < Struct.new(
      :case_sensitive,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when Amazon Cognito encounters a user name that already
    #             exists in the user pool.</p>
    # @!attribute message
    #   <p>The message returned when Amazon Cognito throws a user name exists exception.</p>
    #   @return [String]
    class UsernameExistsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The template for the verification message that your user pool delivers to users who
    #             set an email address or phone number attribute.</p>
    # @!attribute sms_message
    #   <p>The template for SMS messages that Amazon Cognito sends to your users.</p>
    #   @return [String]
    # @!attribute email_message
    #   <p>The template for email messages that Amazon Cognito sends to your users. You can set an
    #                   <code>EmailMessage</code> template only if the value of <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount"> EmailSendingAccount</a> is <code>DEVELOPER</code>. When your <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is <code>DEVELOPER</code>, your user pool sends email
    #               messages with your own Amazon SES configuration.</p>
    #   @return [String]
    # @!attribute email_subject
    #   <p>The subject line for the email message template. You can set an
    #                   <code>EmailSubject</code> template only if the value of <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount"> EmailSendingAccount</a> is <code>DEVELOPER</code>. When your <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is <code>DEVELOPER</code>, your user pool sends email
    #               messages with your own Amazon SES configuration.</p>
    #   @return [String]
    # @!attribute email_message_by_link
    #   <p>The email message template for sending a confirmation link to the user. You can set an
    #                   <code>EmailMessageByLink</code> template only if the value of <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount"> EmailSendingAccount</a> is <code>DEVELOPER</code>. When your <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is <code>DEVELOPER</code>, your user pool sends email
    #               messages with your own Amazon SES configuration.</p>
    #   @return [String]
    # @!attribute email_subject_by_link
    #   <p>The subject line for the email message template for sending a confirmation link to the
    #               user. You can set an <code>EmailSubjectByLink</code> template only if the value of
    #                   <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount"> EmailSendingAccount</a> is <code>DEVELOPER</code>. When your <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is <code>DEVELOPER</code>, your user pool sends email
    #               messages with your own Amazon SES configuration.</p>
    #   @return [String]
    # @!attribute default_email_option
    #   <p>The configuration of verification emails to contain a clickable link or a verification
    #               code.</p>
    #            <p>For link, your template body must contain link text in the format <code>{##Click
    #                   here##}</code>. "Click here" in the example is a customizable string. For code, your
    #               template body must contain a code placeholder in the format <code>{####}</code>.</p>
    #   @return [String]
    class VerificationMessageTemplateType < Struct.new(
      :sms_message,
      :email_message,
      :email_subject,
      :email_message_by_link,
      :email_subject_by_link,
      :default_email_option,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    # @!attribute session
    #   <p>The session ID from an <code>AssociateSoftwareToken</code> request.</p>
    #   @return [String]
    # @!attribute user_code
    #   <p>A TOTP that the user generated in their configured authenticator app.</p>
    #   @return [String]
    # @!attribute friendly_device_name
    #   <p>A friendly name for the device that's running the TOTP authenticator.</p>
    #   @return [String]
    class VerifySoftwareTokenRequest < Struct.new(
      :access_token,
      :session,
      :user_code,
      :friendly_device_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>Amazon Cognito can accept or reject the code that you provide. This response parameter
    #               indicates the success of TOTP verification. Some reasons that this operation might
    #               return an error are clock skew on the user's device and excessive retries.</p>
    #   @return [String]
    # @!attribute session
    #   <p>This session ID satisfies an <code>MFA_SETUP</code> challenge. Supply the session ID
    #               in your challenge response.</p>
    #   @return [String]
    class VerifySoftwareTokenResponse < Struct.new(
      :status,
      :session,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the request to verify user attributes.</p>
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for 
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The name of the attribute that you want to verify.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The verification code that your user pool sent to the added or changed attribute, for
    #               example the user's email address.</p>
    #   @return [String]
    class VerifyUserAttributeRequest < Struct.new(
      :access_token,
      :attribute_name,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A container representing the response from the server from the request to verify user
    #             attributes.</p>
    class VerifyUserAttributeResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the challenge from <code>StartWebAuthn</code>
    #             registration has expired.</p>
    # @!attribute message
    #   @return [String]
    class WebAuthnChallengeNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the access token is for a different client than the one
    #             in the original <code>StartWebAuthnRegistration</code> request.</p>
    # @!attribute message
    #   @return [String]
    class WebAuthnClientMismatchException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a user pool doesn't have a configured relying party
    #             id or a user pool domain.</p>
    # @!attribute message
    #   @return [String]
    class WebAuthnConfigurationMissingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for authentication (MFA) with passkey, or webauthN, biometric and
    #             security-key devices in a user pool. Configures the following:</p>
    #          <ul>
    #             <li>
    #                <p>Configuration for requiring user-verification support in passkeys.</p>
    #             </li>
    #             <li>
    #                <p>The user pool relying-party ID. This is the domain, typically your user pool
    #                     domain, that user's passkey providers should trust as a receiver of passkey
    #                     authentication.</p>
    #             </li>
    #             <li>
    #                <p>The providers that you want to allow as origins for passkey
    #                     authentication.</p>
    #             </li>
    #          </ul>
    # @!attribute relying_party_id
    #   <p>Sets or displays the authentication domain, typically your user pool domain, that
    #               passkey providers must use as a relying party (RP) in their configuration.</p>
    #            <p>Under the following conditions, the passkey relying party ID must be the
    #               fully-qualified domain name of your custom domain:</p>
    #            <ul>
    #               <li>
    #                  <p>The user pool is configured for passkey authentication.</p>
    #               </li>
    #               <li>
    #                  <p>The user pool has a custom domain, whether or not it also has a prefix
    #                       domain.</p>
    #               </li>
    #               <li>
    #                  <p>Your application performs authentication with managed login or the classic
    #                       hosted UI.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute user_verification
    #   <p>When <code>required</code>, users can only register and sign in users with passkeys
    #               that are capable of <a href="https://www.w3.org/TR/webauthn-2/#enum-userVerificationRequirement">user
    #                   verification</a>. When <code>preferred</code>, your user pool doesn't
    #               require the use of authenticators with user verification but encourages it.</p>
    #   @return [String]
    class WebAuthnConfigurationType < Struct.new(
      :relying_party_id,
      :user_verification,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a passkey, or webauthN, biometric or security-key authentication factor
    #             for a user.</p>
    # @!attribute credential_id
    #   <p>The unique identifier of the passkey credential.</p>
    #   @return [String]
    # @!attribute friendly_credential_name
    #   <p>An automatically-generated friendly name for the passkey credential.</p>
    #   @return [String]
    # @!attribute relying_party_id
    #   <p>The relying-party ID of the provider for the passkey credential.</p>
    #   @return [String]
    # @!attribute authenticator_attachment
    #   <p>The general category of the passkey authenticator. Can be a platform, or on-device
    #               authenticator like a built-in fingerprint scanner, or a cross-platform device that's not
    #               attached to the device like a Bluetooth security key.</p>
    #   @return [String]
    # @!attribute authenticator_transports
    #   <p>Information about the transport methods of the passkey credential, for example USB or
    #               Bluetooth Low Energy.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The date and time when the item was created. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a 
    #   human-readable format like ISO 8601 or a Java <code>Date</code> object.</p>
    #   @return [Time]
    class WebAuthnCredentialDescription < Struct.new(
      :credential_id,
      :friendly_credential_name,
      :relying_party_id,
      :authenticator_attachment,
      :authenticator_transports,
      :created_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a user presents passkey credentials from an unsupported
    #             device or provider.</p>
    # @!attribute message
    #   @return [String]
    class WebAuthnCredentialNotSupportedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the passkey feature isn't enabled for the user
    #             pool.</p>
    # @!attribute message
    #   @return [String]
    class WebAuthnNotEnabledException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the passkey credential's registration origin does not
    #             align with the user pool relying party id.</p>
    # @!attribute message
    #   @return [String]
    class WebAuthnOriginNotAllowedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the given passkey credential is associated with a
    #             different relying party ID than the user pool relying party ID.</p>
    # @!attribute message
    #   @return [String]
    class WebAuthnRelyingPartyMismatchException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
