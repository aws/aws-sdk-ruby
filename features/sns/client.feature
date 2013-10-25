# language: en
@sns @client
Feature: Amazon Simple Notification Service

  Scenario: Making a basic request
    When I call "list_topics" on "sns"
    Then the response "topics" should be an array

  Scenario: Error handling
    Given I call "publish" on "sns" with:
    """
    { message: 'hello', topic_arn: 'fake_topic' }
    """
    Then I expect the response error code to be "InvalidParameter"
    And I expect the response error message to include:
    """
    Invalid parameter: TopicArn Reason: fake_topic does not start with arn
    """
