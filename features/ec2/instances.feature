# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

# language: en
@ec2 @instances
Feature: Basic Instance Operations

  As a user of the high-level interface for EC2
  I want to run, list, and terminate EC2 instances
  So that I can use EC2

  Scenario: Run instance
    When I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    Then The result should be an instance object
    And the instance status should eventually be "pending"
    And a request should have been made like:
    | TYPE        | NAME        | VALUE                      |
    | param       | Action      | RunInstances               |
    | param       | ImageId     | ami-8c1fece5               |
    | param       | MinCount    | 1                          |
    | param       | MaxCount    | 1                          |
    | param_match | ClientToken | ^([0-9a-f]+-){4}[0-9a-f]+$ |

  Scenario: Run instance with IAM profile name
    When I request to run an instance with the following parameters:
    | parameter            | value        |
    | image_id             | ami-8c1fece5 |
    | iam_instance_profile | profile-name |
    Then an error should have been raise with a message like
    """
    Invalid IAM Instance Profile name
    """
    And a request should have been made like:
    | TYPE        | NAME                    | VALUE        |
    | param       | Action                  | RunInstances |
    | param       | ImageId                 | ami-8c1fece5 |
    | param       | IamInstanceProfile.Name | profile-name |

  Scenario: Run instance with IAM profile ARN
    When I request to run an instance with the following parameters:
    | parameter            | value                    |
    | image_id             | ami-8c1fece5             |
    | iam_instance_profile | arn:aws:iam::profile-arn |
    Then an error should have been raise with a message like
    """
    Invalid IAM Instance Profile ARN
    """
    And a request should have been made like:
    | TYPE        | NAME                   | VALUE                     |
    | param       | Action                 | RunInstances              |
    | param       | ImageId                | ami-8c1fece5              |
    | param       | IamInstanceProfile.Arn | arn:aws:iam::profile-arn  |

  Scenario: Run multiple instances
    When I request to run between 1 and 10 instances with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    Then The result should be an array of instance objects
    And a request should have been made like:
    | TYPE  | NAME     | VALUE        |
    | param | Action   | RunInstances |
    | param | ImageId  | ami-8c1fece5 |
    | param | MinCount | 1            |
    | param | MaxCount | 10           |

  Scenario: Terminate instance
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    When I terminate the instance
    Then the instance status should eventually be "terminated"
    And a request should have been made like:
    | TYPE        | NAME         | VALUE              |
    | param       | Action       | TerminateInstances |
    | param_match | InstanceId.1 | i-[0-9a-f]+        |

  @memoized
  Scenario: Memoized instance state change from terminate
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I start a memoization block
    When I get the instance status
    And I terminate the instance
    Then the instance status should eventually be "shutting_down"
    And exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE             |
    | param | Action | DescribeInstances |

  @slow
  Scenario: Reboot instance
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I wait for the instance status to be "running"
    When I reboot the instance
    Then a request should have been made like:
    | TYPE        | NAME         | VALUE           |
    | param       | Action       | RebootInstances |
    | param_match | InstanceId.1 | i-[0-9a-f]+     |

  @slow
  Scenario: Stop instance
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I wait for the instance status to be "running"
    When I stop the instance
    Then a request should have been made like:
    | TYPE        | NAME         | VALUE         |
    | param       | Action       | StopInstances |
    | param_match | InstanceId.1 | i-[0-9a-f]+   |

  @memoized @slow
  Scenario: Memoized instance state change from stop
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I wait for the instance status to be "running"
    And I start a memoization block
    When I stop the instance
    Then the instance status should eventually be "stopping"
    And no requests should have been made like:
    | TYPE  | NAME   | VALUE             |
    | param | Action | DescribeInstances |

  @slow
  Scenario: Start instance
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I wait for the instance status to be "running"
    And I stop the instance
    And I wait for the instance status to be "stopped"
    When I start the instance
    Then a request should have been made like:
    | TYPE        | NAME         | VALUE          |
    | param       | Action       | StartInstances |
    | param_match | InstanceId.1 | i-[0-9a-f]+    |

  @memoized @slow
  Scenario: Memoized instance state change from start
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I wait for the instance status to be "running"
    And I stop the instance
    And I wait for the instance status to be "stopped"
    And I start a memoization block
    When I start the instance
    Then the instance status should eventually be "pending"
    And no requests should have been made like:
    | TYPE  | NAME   | VALUE             |
    | param | Action | DescribeInstances |

  Scenario: List instances
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    When I ask for the list of instances
    Then the instance I started should be in the list
    And a request should have been made like:
    | TYPE        | NAME         | VALUE             |
    | param       | Action       | DescribeInstances |

  @memoized
  Scenario: List instances memoization
    Given I start a memoization block
    And I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    When I compute a hash of instance IDs mapped to instance status
    And I get a list of instances sorted by launch time
    Then exactly 1 request should have been made like:
    | TYPE        | NAME         | VALUE             |
    | param       | Action       | DescribeInstances |

  Scenario: Get instance by id
    When I ask for the instance "i-123" by ID
    Then the result should be an instance object

  Scenario: Check that an instance exists (does not exist)
    Given I ask for the instance "i-123" by ID
    When I ask if the instance exists
    Then the result should be false

  Scenario: Check that an instance exists (exists)
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    When I ask if the instance exists
    Then the result should eventually be true
