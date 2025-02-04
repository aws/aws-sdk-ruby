# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for GeoRoutes

  @georoutes @smoke
  Scenario: CalculateRouteMatrixSuccess
    Given I create a 'Aws::GeoRoutes' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'calculate_route_matrix' with params:
      """
{"origins":[{"position":[-123.11679,49.28147]}],"destinations":[{"position":[-123.11231,49.28897192166]}],"routing_boundary":{"unbounded":true}}
      """
    Then I expect an error was not raised

  @georoutes @smoke
  Scenario: CalculateRoutesSuccess
    Given I create a 'Aws::GeoRoutes' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'calculate_routes' with params:
      """
{"origin":[-123.253374,49.351673],"destination":[-123.930756,49.1314]}
      """
    Then I expect an error was not raised

  @georoutes @smoke
  Scenario: SnapToRoadsSuccess
    Given I create a 'Aws::GeoRoutes' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'snap_to_roads' with params:
      """
{"trace_points":[{"position":[8.53404,50.16364]},{"position":[8.53379056,50.16352417]}]}
      """
    Then I expect an error was not raised

  @georoutes @smoke
  Scenario: OptimizeWaypointsSuccess
    Given I create a 'Aws::GeoRoutes' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'optimize_waypoints' with params:
      """
{"origin":[-123.253374,49.351673],"destination":[-123.930756,49.1314]}
      """
    Then I expect an error was not raised

  @georoutes @smoke
  Scenario: CalculateIsolinesSuccess
    Given I create a 'Aws::GeoRoutes' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'calculate_isolines' with params:
      """
{"thresholds":{"time":[60]},"origin":[-123.116796,49.281476]}
      """
    Then I expect an error was not raised
