Unreleased Changes
------------------

1.75.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.74.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.72.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2022-10-21)
------------------

* Feature - This release adds a new "DeletionProtection" field to the UserPool in Cognito. Application admins can configure this value with either ACTIVE or INACTIVE value. Setting this field to ACTIVE will prevent a user pool from accidental deletion.

1.70.0 (2022-09-02)
------------------

* Feature - This release adds a new "AuthSessionValidity" field to the UserPoolClient in Cognito. Application admins can configure this value for their users' authentication duration, which is currently fixed at 3 minutes, up to 15 minutes. Setting this field will also apply to the SMS MFA authentication flow.

1.69.0 (2022-08-18)
------------------

* Feature - This change is being made simply to fix the public documentation based on the models. We have included the PasswordChange and ResendCode events, along with the Pass, Fail and InProgress status. We have removed the Success and Failure status which are never returned by our APIs.

1.68.0 (2022-08-03)
------------------

* Feature - Add a new exception type, ForbiddenException, that is returned when request is not allowed

1.67.0 (2022-05-31)
------------------

* Feature - Amazon Cognito now supports IP Address propagation for all unauthenticated APIs (e.g. SignUp, ForgotPassword).

1.66.0 (2022-05-24)
------------------

* Feature - Amazon Cognito now supports requiring attribute verification (ex. email and phone number) before update.

1.65.0 (2022-03-15)
------------------

* Feature - Updated EmailConfigurationType and SmsConfigurationType to reflect that you can now choose Amazon SES and Amazon SNS resources in the same Region.

1.64.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2022-01-28)
------------------

* Feature - Doc updates for Cognito user pools API Reference.

1.61.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.56.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.54.0 (2021-07-15)
------------------

* Feature - Documentation updates for cognito-idp

1.53.0 (2021-06-10)
------------------

* Feature - Amazon Cognito now supports targeted sign out through refresh token revocation

1.52.0 (2021-06-08)
------------------

* Feature - Documentation updates for cognito-idp

1.51.0 (2021-04-22)
------------------

* Feature - Documentation updates for cognito-idp

1.50.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2020-11-24)
------------------

* Feature - This release adds ability to configure Cognito User Pools with third party sms and email providers for sending notifications to users.

1.47.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2020-08-18)
------------------

* Feature - Adding the option to use a service linked role to publish events to Pinpoint.

1.43.0 (2020-08-13)
------------------

* Feature - Adding ability to customize expiry for Refresh, Access and ID tokens.

1.42.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2020-06-26)
------------------

* Feature - Don't require Authorization for InitiateAuth and RespondToAuthChallenge.

1.40.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2020-06-17)
------------------

* Feature - Set `Authorization` header to `nil` for `InitiateAuth` and `RespondToAuthChallenge` APIs.

1.38.0 (2020-06-15)
------------------

* Feature - Updated all AuthParameters to be sensitive.

1.37.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.37.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2020-03-16)
------------------

* Feature - Additional response field "CompromisedCredentialsDetected" added to AdminListUserAuthEvents.

1.33.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2020-02-11)
------------------

* Feature - Features:This release adds a new setting for a user pool to allow if customer wants their user signup/signin with case insensitive username. The current default setting is case sensitive, and for our next release we will change it to case insensitive.

1.31.0 (2019-11-26)
------------------

* Feature - This release adds a new setting for a user pool to configure which recovery methods a user can use to recover their account via the forgot password operation.

1.30.0 (2019-11-25)
------------------

* Feature - Amazon Cognito Userpools now supports Sign in with Apple as an Identity Provider.

1.29.0 (2019-11-15)
------------------

* Feature - This release adds a new option in the User Pool to allow specifying sender's name in the emails sent by Amazon Cognito. This release also adds support to add SES Configuration Set to the emails sent by Amazon Cognito.

1.28.0 (2019-11-14)
------------------

* Feature - This release adds a new setting at user pool client to prevent user existence related errors during authentication, confirmation, and password recovery related operations. This release also adds support to enable or disable specific authentication flows for a user pool client.

1.27.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2019-10-04)
------------------

* Feature - This release adds ClientMetadata input parameter to multiple Cognito User Pools operations, making this parameter available to the customer configured lambda triggers as applicable.

1.25.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2019-05-21)
------------------

* Feature - API update.

1.21.0 (2019-05-15)
------------------

* Feature - API update.

1.20.0 (2019-05-14)
------------------

* Feature - API update.

1.19.0 (2019-05-03)
------------------

* Feature - API update.

1.18.0 (2019-04-18)
------------------

* Feature - API update.

1.17.0 (2019-04-16)
------------------

* Feature - API update.

1.16.0 (2019-03-21)
------------------

* Feature - API update.

1.15.0 (2019-03-21)
------------------

* Feature - API update.

1.14.0 (2019-03-18)
------------------

* Feature - API update.

1.13.0 (2019-03-14)
------------------

* Feature - API update.

1.12.0 (2018-12-20)
------------------

* Feature - API update.

1.11.0 (2018-11-20)
------------------

* Feature - API update.

1.10.0 (2018-10-24)
------------------

* Feature - API update.

1.9.0 (2018-10-23)
------------------

* Feature - API update.

1.8.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.7.0 (2018-09-05)
------------------

* Feature - API update.

1.6.0 (2018-08-24)
------------------

* Feature - API update.

1.5.0 (2018-06-26)
------------------

* Feature - API update.

1.4.0 (2018-05-17)
------------------

* Feature - API update.

1.3.0 (2018-02-12)
------------------

* Feature - API update.

1.2.0 (2017-12-11)
------------------

* Feature - API update.

1.1.0 (2017-11-29)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-cognitoidentityprovider` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc14 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc13 (2017-08-11)
------------------

* Feature - API update.

1.0.0.rc12 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc11 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc10 (2017-07-17)
------------------

* Feature - API update.

1.0.0.rc9 (2017-07-12)
------------------

* Feature - API update.

1.0.0.rc8 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc7 (2017-06-26)
------------------

* Feature - API update.

1.0.0.rc6 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc4 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc3 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc2 (2017-01-24)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-cognitoidentityprovider` gem.
