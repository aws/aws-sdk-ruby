# language: en
@cognitoidentity @unsigned-requests
Feature: Amazon Cognito Idenity

  Scenario Outline: Unsigned requests
    Given I have an Aws::CognitoIdenty::Client without credentials
    When I make a <operation> request
    Then I should not receive an Aws::CognitoIdentity::Errors::MissingAuthenticationTokenException

    Examples:
      | operation                 |
      | GetCredentialsForIdentity |
      | GetId                     |
      | GetOpenIdToken            |
      | UnlinkIdentity            |

  Scenario Outline: Signed requests
    Given I have an Aws::CognitoIdenty::Client without credentials
    When I make a <operation> request
    Then I should receive a missing credentials error

    Examples:
      | operation                          |
      | CreateIdentityPool                 |
      | DeleteIdentities                   |
      | DeleteIdentityPool                 |
      | DescribeIdentity                   |
      | DescribeIdentityPool               |
      | GetIdentityPoolRoles               |
      | GetOpenIdTokenForDeveloperIdentity |
      | ListIdentities                     |
      | ListIdentityPools                  |
      | LookupDeveloperIdentity            |
      | MergeDeveloperIdentities           |
      | SetIdentityPoolRoles               |
      | UnlinkDeveloperIdentity            |
      | UpdateIdentityPool                 |
