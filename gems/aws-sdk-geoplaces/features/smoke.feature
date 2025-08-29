# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for GeoPlaces

  @geoplaces @smoke
  Scenario: SearchNearbySuccess
    Given I create a 'Aws::GeoPlaces' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'search_nearby' with params:
      """
{"query_position":[2.2945,48.85824]}
      """
    Then I expect an error was not raised

  @geoplaces @smoke
  Scenario: GeocodeSuccess
    Given I create a 'Aws::GeoPlaces' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'geocode' with params:
      """
{"query_text":"Starbucks"}
      """
    Then I expect an error was not raised

  @geoplaces @smoke
  Scenario: ReverseGeocodeSuccess
    Given I create a 'Aws::GeoPlaces' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'reverse_geocode' with params:
      """
{"query_position":[2.2945,48.85824]}
      """
    Then I expect an error was not raised

  @geoplaces @smoke
  Scenario: AutocompleteSuccess
    Given I create a 'Aws::GeoPlaces' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'autocomplete' with params:
      """
{"query_text":"Star"}
      """
    Then I expect an error was not raised

  @geoplaces @smoke
  Scenario: SearchTextSuccess
    Given I create a 'Aws::GeoPlaces' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'search_text' with params:
      """
{"query_text":"Taj Mahal","bias_position":[78.0421,27.1753]}
      """
    Then I expect an error was not raised

  @geoplaces @smoke
  Scenario: SuggestSuccess
    Given I create a 'Aws::GeoPlaces' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'suggest' with params:
      """
{"query_text":"Taj Mahal","bias_position":[78.0421,27.1753]}
      """
    Then I expect an error was not raised
