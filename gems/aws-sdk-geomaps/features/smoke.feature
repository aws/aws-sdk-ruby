# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for GeoMaps

  @geomaps @smoke
  Scenario: GetSpritesSuccess
    Given I create a 'Aws::GeoMaps' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_sprites' with params:
      """
{"style":"Standard","color_scheme":"Light","variant":"Default","file_name":"sprites.json"}
      """
    Then I expect an error was not raised

  @geomaps @smoke
  Scenario: GetStaticMapSuccess
    Given I create a 'Aws::GeoMaps' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_static_map' with params:
      """
{"file_name":"map","width":800,"height":900,"center":"-123.144847,49.303609","style":"Satellite","zoom":10.0}
      """
    Then I expect an error was not raised

  @geomaps @smoke
  Scenario: GetStyleDescriptorSuccess
    Given I create a 'Aws::GeoMaps' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_style_descriptor' with params:
      """
{"style":"Standard"}
      """
    Then I expect an error was not raised

  @geomaps @smoke
  Scenario: GetGlyphsSuccess
    Given I create a 'Aws::GeoMaps' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_glyphs' with params:
      """
{"font_stack":"Amazon Ember Regular","font_unicode_range":"0-255.pbf"}
      """
    Then I expect an error was not raised

  @geomaps @smoke
  Scenario: GetTileSuccess
    Given I create a 'Aws::GeoMaps' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_tile' with params:
      """
{"tileset":"vector.basemap","x":"5190","y":"11218","z":"15"}
      """
    Then I expect an error was not raised
