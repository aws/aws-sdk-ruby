# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for WellArchitected

  @wellarchitected @smoke
  Scenario: GetAgentGoal
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_agent_goal' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-profile","id":"f6b5df15-3409-483f-b796-45d0e590222c"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: GetAgentOrganizationalReportData
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_agent_organizational_report_data' with params:
      """
{"report_id":"f6b5df15-3409-483f-b796-45d0e590222c","format":"JSON"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: GetAgentOrganizationalReport
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_agent_organizational_report' with params:
      """
{"report_id":"f6b5df15-3409-483f-b796-45d0e590222c"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: CreateAgentGoal
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_agent_goal' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-profile","pillars":["COST_OPTIMIZATION"],"title":"smoke-test-goal"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: GetAgentPreferences
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_agent_preferences' with params:
      """
{}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: ListAgentGoals
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_agent_goals' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-profile"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: DeleteAgentRecommendationPolicy
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'delete_agent_recommendation_policy' with params:
      """
{"recommendation_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-recommendation/f6b5df15-3409-483f-b796-45d0e590222c"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: CreateAgentContext
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_agent_context' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-profile","title":"smoke-test-context","context_type":"APPLICATION","content":{}}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: ListAgentProfiles
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_agent_profiles' with params:
      """
{}
      """
    Then I expect an error was not raised

  @wellarchitected @smoke
  Scenario: UpdateAgentGoal
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'update_agent_goal' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-profile","id":"f6b5df15-3409-483f-b796-45d0e590222c"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: CreateAgentOrganizationalProfile
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_agent_organizational_profile' with params:
      """
{"client_token":"smoke-test-client-token","name":"smoke-test-organizational-profile","pillars":["COST_OPTIMIZATION"],"organizational_aggregation_configuration":{"accounts":[{"account_id":"123456789012","regions":["us-west-2"]}]}}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: CreateAgentBasicProfile
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_agent_basic_profile' with params:
      """
{}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: GetAgentProfilePolicy
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_agent_profile_policy' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-profile"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: CreateAgentProfile
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_agent_profile' with params:
      """
{"name":"smoke-test-profile","execution_role_arn":"arn:aws:iam::123456789012:role/test-role","aggregation_configuration":[{"account_id":"123456789012","regions":["us-west-2"],"access_role_arn":"arn:aws:iam::123456789012:role/COINAccessRole"}],"pillars":["COST_OPTIMIZATION"],"tags":[{"key":"test-key","value":"test-value"}]}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: PutAgentRecommendationPolicy
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'put_agent_recommendation_policy' with params:
      """
{"recommendation_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-recommendation/f6b5df15-3409-483f-b796-45d0e590222c","policy":"{}"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: DeleteAgentGoal
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'delete_agent_goal' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-profile","id":"f6b5df15-3409-483f-b796-45d0e590222c"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: GetAgentRecommendationPolicy
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_agent_recommendation_policy' with params:
      """
{"recommendation_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-recommendation/f6b5df15-3409-483f-b796-45d0e590222c"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: DeleteAgentOrganizationalReport
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'delete_agent_organizational_report' with params:
      """
{"report_id":"f6b5df15-3409-483f-b796-45d0e590222c"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: GetAgentRecommendation
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_agent_recommendation' with params:
      """
{"recommendation_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-recommendation/f6b5df15-3409-483f-b796-45d0e590222c"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: ListAgentOrganizationalReports
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_agent_organizational_reports' with params:
      """
{}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: ListAgentContexts
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_agent_contexts' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-profile"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: DeleteAgentProfile
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'delete_agent_profile' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-profile"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: GetAgentContext
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_agent_context' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-profile","id":"f6b5df15-3409-483f-b796-45d0e590222c"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: UpdateAgentProfile
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'update_agent_profile' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-profile"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: CreateAgentOrganizationalReport
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_agent_organizational_report' with params:
      """
{"client_token":"smoke-test-client-token","label":"smoke-test-organizational-report","filters":{"account_ids":["123456789012"],"pillars":["COST_OPTIMIZATION"]}}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: ListAgentRecommendationItems
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_agent_recommendation_items' with params:
      """
{"recommendation_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-recommendation/f6b5df15-3409-483f-b796-45d0e590222c"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: DeleteAgentProfilePolicy
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'delete_agent_profile_policy' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-profile"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: GetAgentProfile
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_agent_profile' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-security-profile"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: UpdateAgentOrganizationalProfile
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'update_agent_organizational_profile' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/smoke-test-organizational-profile","pillars":["COST_OPTIMIZATION"],"organizational_aggregation_configuration":{"organizational_units":[{"organizational_unit_id":"ou-abcd-11111111","regions":["us-west-2"]}]}}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: SendAgentOrganizationalReportDataToS3
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'send_agent_organizational_report_data_to_s3' with params:
      """
{"report_id":"f6b5df15-3409-483f-b796-45d0e590222c","format":"JSON","bucket_arn":"arn:aws:s3:::smoke-test-bucket","object_key":"smoke-test/report.json"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: PutAgentProfilePolicy
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'put_agent_profile_policy' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-profile","policy":"{}"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: DeleteAgentContext
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'delete_agent_context' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-profile","id":"f6b5df15-3409-483f-b796-45d0e590222c"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: UpdateAgentContext
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'update_agent_context' with params:
      """
{"profile_arn":"arn:aws:wellarchitected:us-west-2:123456789012:agent-profile/test-profile","id":"f6b5df15-3409-483f-b796-45d0e590222c"}
      """
    Then I expect an error was raised

  @wellarchitected @smoke
  Scenario: PutAgentPreferences
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'put_agent_preferences' with params:
      """
{"preferences":[{"key":"ORG_INTEGRATION","state":"DISABLED"}]}
      """
    Then I expect an error was raised
