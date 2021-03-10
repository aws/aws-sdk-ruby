# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ServiceCatalog

Background:
  Given I create a client in region 'us-west-2'

  @servicecatalog @smoke
  Scenario: Call Aws::ServiceCatalog::Client#list_accepted_portfolio_shares and expect it to succeed
  When I call the operation 'list_accepted_portfolio_shares' with params:
    """
{}
    """
  Then I expect an error was not raised
