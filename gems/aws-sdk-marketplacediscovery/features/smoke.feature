# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for MarketplaceDiscovery

  @marketplacediscovery @smoke
  Scenario: ListPurchaseOptionsSuccess
    Given I create a 'Aws::MarketplaceDiscovery' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_purchase_options' with params:
      """
{"filters":[{"filter_type":"PRODUCT_ID","filter_values":["non-existent-product-id"]}]}
      """
    Then I expect an error was not raised

  @marketplacediscovery @smoke
  Scenario: GetOfferSetFailure
    Given I create a 'Aws::MarketplaceDiscovery' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_offer_set' with params:
      """
{"offer_set_id":"non-existent-offerset-id"}
      """
    Then I expect a 'Aws::MarketplaceDiscovery::Errors::ResourceNotFoundException' was raised

  @marketplacediscovery @smoke
  Scenario: GetListingFailure
    Given I create a 'Aws::MarketplaceDiscovery' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_listing' with params:
      """
{"listing_id":"non-existent-listing-id"}
      """
    Then I expect a 'Aws::MarketplaceDiscovery::Errors::ResourceNotFoundException' was raised

  @marketplacediscovery @smoke
  Scenario: SearchFacetsSuccess
    Given I create a 'Aws::MarketplaceDiscovery' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'search_facets' with params:
      """
{}
      """
    Then I expect an error was not raised

  @marketplacediscovery @smoke
  Scenario: GetOfferFailure
    Given I create a 'Aws::MarketplaceDiscovery' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_offer' with params:
      """
{"offer_id":"non-existent-offer-id"}
      """
    Then I expect a 'Aws::MarketplaceDiscovery::Errors::ResourceNotFoundException' was raised

  @marketplacediscovery @smoke
  Scenario: ListFulfillmentOptionsFailure
    Given I create a 'Aws::MarketplaceDiscovery' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_fulfillment_options' with params:
      """
{"product_id":"non-existent-product-id"}
      """
    Then I expect a 'Aws::MarketplaceDiscovery::Errors::ResourceNotFoundException' was raised

  @marketplacediscovery @smoke
  Scenario: GetProductFailure
    Given I create a 'Aws::MarketplaceDiscovery' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_product' with params:
      """
{"product_id":"non-existent-product-id"}
      """
    Then I expect a 'Aws::MarketplaceDiscovery::Errors::ResourceNotFoundException' was raised

  @marketplacediscovery @smoke
  Scenario: SearchListingsSuccess
    Given I create a 'Aws::MarketplaceDiscovery' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'search_listings' with params:
      """
{}
      """
    Then I expect an error was not raised

  @marketplacediscovery @smoke
  Scenario: GetOfferTermsFailure
    Given I create a 'Aws::MarketplaceDiscovery' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_offer_terms' with params:
      """
{"offer_id":"non-existent-offer-id"}
      """
    Then I expect a 'Aws::MarketplaceDiscovery::Errors::ResourceNotFoundException' was raised
