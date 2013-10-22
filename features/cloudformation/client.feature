# language: en
@cloudformation
Feature: AWS CloudFormation

  Scenario: Listing stacks
    When I call "list_stacks" on "cloudformation"
    Then the response "stack_summaries" should be an array

  Scenario: Error handling
    Given I call "create_stack" on "cloudformation" with:
    """
    { stack_name: "fakestack", template_url: "http://s3.amazonaws.com/foo/bar" }
    """
    Then I expect the response error code to be "ValidationError"
    And I expect the response error message to include:
    """
    TemplateURL must reference a valid S3 object to which you have access.
    """
