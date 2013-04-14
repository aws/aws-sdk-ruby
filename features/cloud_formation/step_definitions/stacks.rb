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

def simple_template ami, description
  @template_description = description
  @template = <<-TEMPLATE
    {
      "AWSTemplateFormatVersion" : "2010-09-09",
      "Description": "#{@template_description}",
      "Resources": {
        "web": {
          "Type": "AWS::EC2::Instance",
          "Properties": {
            "ImageId": "#{ami}"
          }
        }
      }
    }
  TEMPLATE
end

When /^I create a stack$/ do
  @stack_name = "ruby-integration-test-#{Time.now.to_i}-#{rand(1000)}"
  template = simple_template("ami-41814f28", "A simple template")
  @stack = @cloud_formation.stacks.create(@stack_name, template)
  @created_stacks << @stack
end

Then /^the stack should exist$/ do
  @stack.exists?.should == true
end

When /^I delete the stack$/ do
  @stack.delete
end

Then /^the stack should eventually not exist$/ do
  eventually do
    @stack.exists?.should == false
  end
end

When /^I get the stack by name$/ do
  @stack = @cloud_formation.stacks[@stack_name]
end

Then /^It should have the description from the template$/ do
  @stack.description.should == @template_description
end

When /^I update the stack$/ do
  @template_description = "A simple modified template"
  @stack.update(
    :template => simple_template("ami-1b814f72", "A modified template"),
    :parameters => @stack.parameters,
    :capabilities => @stack.capabilities)
end

Then /^the stack status should eventually be "([^"]*)"$/ do |status|
  eventually do
    @stack.status.should == status
  end
end

Then /^I should be able to locate the stack in the summarized stacks$/ do
  @cloud_formation.stack_summaries.map{|s| s[:stack_name] }.should
    include(@stack.name)
end

Then /^the stack template should match$/ do
  @template.should == @stack.template
end

When /^I create a stack with parameters$/ do
  @template = <<-TEMPLATE
  {
    "AWSTemplateFormatVersion" : "2010-09-09",
    "Description": "A stack with 3 parameters",
    "Parameters" : {
      "KeyName" : {
        "Description" : "Name of a KeyPair to use with SSH.",
        "Type" : "String"
      },
      "SecurityGroup" : {
        "Description" : "The security group to launch in.",
        "Type" : "String"
      },
      "InstanceType" : {
        "Description" : "The size of instance to launch.",
        "Type" : "String"
      }
    },
    "Resources": {
      "web": {
        "Type": "AWS::EC2::Instance",
        "Properties": {
          "InstanceType": { "Ref" : "InstanceType" },
          "SecurityGroups" : [ {"Ref" : "SecurityGroup"} ],
          "KeyName": { "Ref" : "KeyName" },
          "ImageId": "ami-41814f28"
        }
      }
    }
  }
  TEMPLATE
  @stack_name = "ruby-integration-test-#{Time.now.to_i}-#{rand(1000)}"
  @stack_params = {
    'KeyName' => @key_pair.name,
    'SecurityGroup' => @security_group.name,
    'InstanceType' => 'm1.large',
  }
  @stack = @cloud_formation.stacks.create(@stack_name, @template,
    :parameters => @stack_params)
  @created_stacks << @stack
end

Then /^the stack paramters should match$/ do
  @stack.parameters.should == @stack_params
end

Then /^the stack should eventually have some events$/ do
  eventually do
    @stack.events.count.should > 0
  end
end
