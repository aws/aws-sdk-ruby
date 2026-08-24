# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for WellArchitected

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
  Scenario: ListAgentProfiles
    Given I create a 'Aws::WellArchitected' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_agent_profiles' with params:
      """
{}
      """
    Then I expect an error was raised

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
