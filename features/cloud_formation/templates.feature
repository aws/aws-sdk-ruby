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
@cloud_formation @templates
Feature: CloudFormations templates

  Scenario: Validating a valid template
    When I validate the following template:
    """
      {
        "AWSTemplateFormatVersion" : "2010-09-09",
        "Description": "A simple template",
        "Resources": {
          "web": {
            "Type": "AWS::EC2::Instance",
            "Properties": {
              "ImageId": "ami-41814f28"
            }
          }
        }
      }
    """
    Then I should get a response like:
    """
    {:capabilities=>[], :description=>"A simple template", :parameters=>[]}
    """

  Scenario: Validating an invalid template
    When I validate the following template:
    """
      {
        "AWSTemplateFormatVersion" : "2010-09-09",
        "Description": "A simple template",

        "Parameters" : {
          "KeyName" : {
            "Description" : "Name of an existing EC2 KeyPair to enable SSH access to the AWS Elastic Beanstalk instance",
            "Type" : "String"
          }
        },

        "Resources": {
          "web": {
            "Type": "AWS::EC2::Instance",
            "Properties": {
              "ImageId": "ami-41814f28"
            },
            "ConfigurationTemplates" : [{
              "OptionSettings" : [{
                "Namespace" : "aws:autoscaling:launchconfiguration",
                "OptionName" : "EC2KeyName",
                "Value" : { "Ref" : "KeyName" }
              }]
            }]
          }
        }
      }

    """
    Then I should get a response like:
    """
    {:code=>"ValidationError", :message=>"Invalid template resource property 'ConfigurationTemplates'"}
    """
