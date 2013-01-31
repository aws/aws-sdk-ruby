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
@ec2 @image_attributes
Feature: Image attributes

  As a user of the high-level interface for EC2
  I want to read and write image attributes
  So that I can better manage my existing machine images

  @get
  Scenario: Get image location
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    Then the image location should eventually be "ruby-sdk-amis/image.manifest.xml"

  @get
  Scenario: Get image state
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    Then the image state should eventually be :available

  @get
  Scenario: Get image owner ID
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    Then the image owner ID should eventually be the account ID

  @get
  Scenario: Get image owner alias
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    Then the image owner alias should eventually be nil

  @get
  Scenario: Ask if image is public
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    When I ask if the image is public
    Then the result should be false

  @get
  Scenario: Get image launch permissions
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    Then the image launch permissions should eventually be empty

  @set
  Scenario: Make image public
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    When I make the image public
    Then the image launch permissions should eventually be empty
    And the image should be public

  @set
  Scenario: Remove explicit permission
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    And I add image launch permissions for the user "599169622985"
    And the image launch permissions should eventually include:
    | 599169622985 |
    When I remove image launch permissions for the user "599169622985"
    Then the image launch permissions should eventually be empty

  @reset
  Scenario: Reset launch permissions
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    And I add image launch permissions for the user "599169622985"
    When I reset the image launch permissions
    Then the image launch permissions should eventually be empty

  @set
  Scenario: Add explicit permission
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    When I add image launch permissions for the user "599169622985"
    Then the image launch permissions should eventually include:
    | 599169622985 |

  @memoized @set
  Scenario: Memoized launch permissions
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    When I add image launch permissions for the user "599169622985"
    And I start a memoization block
    And I get the image launch permissions
    And I get the image launch permissions again
    Then the image launch permissions should eventually include:
    | 599169622985 |
    And exactly 1 request should have been made like:
    | TYPE  | NAME      | VALUE                  |
    | param | Action    | DescribeImageAttribute |
    | param | Attribute | launchPermission       |

  @get
  Scenario: Get image architecture
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    | architecture   | i386                             |
    And I wait for the image to exist
    Then the image architecture should eventually be :i386

  @get
  Scenario: Get image type
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    Then the image type should eventually be :machine

  @get
  Scenario: Get kernel ID
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    | kernel_id      | aki-f5c1219c                     |
    And I wait for the image to exist
    Then the image kernel ID should eventually be "aki-f5c1219c"

  @get
  Scenario: Get ramdisk ID
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    | ramdisk_id     | ari-dbc121b2                     |
    And I wait for the image to exist
    Then the image ramdisk ID should eventually be "ari-dbc121b2"

  @get
  Scenario: Get platform
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    Then the image platform should eventually be nil

  # TODO: figure out how to get something to show up in this list
  #Scenario: Get state reason
  #  Given I create an image from an invalid snapshot ID
  #  Then the image state change reasons should eventually include:
  # | code                            | message                               |
  # | Client.InvalidSnapshot.NotFound | The specified snapshot was not found. |

  @get
  Scenario: Get image name
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    Then the image name should eventually be "my-image"

  @get
  Scenario: Get image description
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | description    | foobar                           |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    Then the image description should eventually be "foobar"

  @set
  Scenario: Set image description
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    When I set the image description to "foobar"
    Then the image description should eventually be "foobar"

  @get
  Scenario: Get image root device type
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    Then the image root device type should eventually be :instance_store

  @get
  Scenario: Get image virtualization type
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    Then the image virtualization type should eventually be :paravirtual

  @get
  Scenario: Get image hypervisor
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And I wait for the image to exist
    Then the image hypervisor should eventually be :xen
