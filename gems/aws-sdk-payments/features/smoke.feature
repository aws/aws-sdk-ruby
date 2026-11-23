# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Payments

  @payments @smoke
  Scenario: ListPaymentInstrumentsSuccess
    Given I create a 'Aws::Payments' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_payment_instruments' with params:
      """
{}
      """
    Then I expect an error was not raised

  @payments @smoke
  Scenario: ListFinancialRecordsSuccess
    Given I create a 'Aws::Payments' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_financial_records' with params:
      """
{"types":["INVOICE"]}
      """
    Then I expect an error was not raised
