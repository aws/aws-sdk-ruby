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
@s3 @high_level @tree
Feature: Bucket as tree

  As an S3 user
  I want to be able to explore the contents of a bucket as a tree

  Scenario: Using as_tree with defaults
    Given I have a bucket with the following keys:
    | key                     |
    | videos/wedding.mkv      |
    | videos/vacation.mkv     |
    | photos/2009/family.jpg  |
    | photos/2009/friends.jpg |
    | photos/2010/family.jpg  |
    | README                  |
    When I access the bucket as a tree
    Then I should receive leaf nodes with the following keys:
    | key     |
    | README  |
    And I should receive branch nodes with the following prefixes:
    | prefix  |
    | photos/ |
    | videos/ |

  @delimiter
  Scenario: Using as_tree with an alternate delimiter
    Given I have a bucket with the following keys:
    | key                     |
    | videos-wedding.mkv      |
    | videos-vacation.mkv     |
    | photos-2009-family.jpg  |
    | photos-2009-friends.jpg |
    | photos-2010-family.jpg  |
    | README                  |
    And I use "-" as the delimiter
    When I access the bucket as a tree
    Then I should receive leaf nodes with the following keys:
    | key     |
    | README  |
    And I should receive branch nodes with the following prefixes:
    | prefix  |
    | photos- |
    | videos- |

  @prefix
  Scenario: Using as_tree with a prefix
    Given I have a bucket with the following keys:
    | key                     |
    | videos/wedding.mkv      |
    | videos/vacation.mkv     |
    | photos/2009/family.jpg  |
    | photos/2009/friends.jpg |
    | photos/2010/family.jpg  |
    | README                  |
    And I use "photos/" as the prefix
    When I access the bucket as a tree
    Then I should receive branch nodes with the following prefixes:
    | prefix       |
    | photos/2009/ |
    | photos/2010/ |

  @prefix @append
  Scenario: Using as_tree a prefix while relying on append
    Given I have a bucket with the following keys:
    | key                     |
    | videos/wedding.mkv      |
    | videos/vacation.mkv     |
    | photos/2009/family.jpg  |
    | photos/2009/friends.jpg |
    | photos/2010/family.jpg  |
    | README                  |
    And I use "photos" as the prefix
    When I access the bucket as a tree
    Then I should receive branch nodes with the following prefixes:
    | prefix       |
    | photos/2009/ |
    | photos/2010/ |

  @prefix @append
  Scenario: Using as_tree with a prefix but without append
    Given I have a bucket with the following keys:
    | key     |
    | abc/mno |
    | abc/xyz |
    And I use "abc" as the prefix
    And I choose to not append the delimiter
    When I access the bucket as a tree
    Then I should receive branch nodes with the following prefixes:
    | prefix  |
    | abc/    |

  @branch
  Scenario: Using as_tree to access leaves from a branch
    Given I have a bucket with the following keys:
    | key                     |
    | videos/wedding.mkv      |
    | videos/vacation.mkv     |
    | photos/2009/family.jpg  |
    | photos/2009/friends.jpg |
    | photos/2010/family.jpg  |
    | README                  |
    And I use "photos/" as the prefix
    When I access the bucket as a tree
    Then the branch prefixed "photos/2009/" should have leaves with keys:
    | key                     |
    | photos/2009/family.jpg  |
    | photos/2009/friends.jpg |
