# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Glue

Background:
  Given I create a client in region 'us-west-2'

  @glue @smoke
  Scenario: Call Aws::Glue::Client#get_catalog_import_status and expect it to succeed
  When I call the operation 'get_catalog_import_status' with params:
    """
{}
    """
  Then I expect an error was not raised
