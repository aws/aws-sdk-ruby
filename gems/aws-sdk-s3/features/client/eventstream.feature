# language: en
@s3 @client @eventstream
Feature: S3 EventStream Operation

  Background:
    Given I create a bucket
    Given I put a file with content:
      |user |age |
      |foo  |12  |
      |bar  |15  |

  Scenario: Select Object Content Sync
    When I select it with query "SELECT * FROM S3Object WHERE cast(age as int) > 12"
    Then response should contain "records" event
    And the event should have payload member with content "bar,15"

  Scenario: Select Object Content with a block
    When I select it with query "SELECT * FROM S3Object WHERE cast(age as int) > 12" with block
    Then "records" event should be processed "1" times when it arrives
    And the event should have payload member with content "bar,15"
    Then response should contain "records" event

  Scenario: Select Object Content with a handler
    When I select it with query "SELECT * FROM S3Object WHERE cast(age as int) > 12" with event stream handler
    Then "records" event should be processed "1" times when it arrives
    And the event should have payload member with content "bar,15"
    Then response should contain "records" event

  Scenario: Select Object Content with a Proc
    When I select it with query "SELECT * FROM S3Object WHERE cast(age as int) > 12" with Proc Object 
    Then "records" event should be processed "1" times when it arrives
    And the event should have payload member with content "bar,15"
    Then response should contain "records" event

  Scenario: Select Object Content with handler and block
    When I select it with query "SELECT * FROM S3Object WHERE cast(age as int) > 12" with handler and block 
    Then "records" event should be processed "2" times when it arrives
    And the event should have payload member with content "bar,15"
    Then response should contain "records" event
    
