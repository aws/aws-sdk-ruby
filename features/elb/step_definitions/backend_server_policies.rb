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

Given /^I create a PublicKeyPolicyType policy named "([^"]*)" with the public key:$/ do |name, public_key|
  type = 'PublicKeyPolicyType'
  attributes = { 'PublicKey' => public_key }
  @public_key_policy = @load_balancer.policies.create(name, type, attributes)
end

Given /^I create a BackendServerAuthenticationPolicyType named "([^"]*)" with "([^"]*)"$/ do |name, pkp_name|
  type = 'BackendServerAuthenticationPolicyType'
  attributes = { 'PublicKeyPolicyName' => pkp_name }
  @load_balancer_policy = @load_balancer.policies.create(name, type, attributes)
end

Then /^the policy named "([^"]*)" should exist$/ do |name|
  @load_balancer.policies[name].exists?.should == true
end


Given /^I create a backend server policy named "([^"]*)"$/ do |name|

  public_key = <<-KEY
  -----BEGIN CERTIFICATE-----
MIICaTCCAdICCQDuvCF4erLGSjANBgkqhkiG9w0BAQUFADB5MQswCQYDVQQGEwJa
WjENMAsGA1UECBMERkFLRTENMAsGA1UEBxMERkFLRTENMAsGA1UEChMERkFLRTEN
MAsGA1UECxMERkFLRTENMAsGA1UEAxMERkFLRTEfMB0GCSqGSIb3DQEJARYQZmFr
ZUBleGFtcGxlLmNvbTAeFw0xMTA4MTAyMjE0NDVaFw0xMjA4MDkyMjE0NDVaMHkx
CzAJBgNVBAYTAlpaMQ0wCwYDVQQIEwRGQUtFMQ0wCwYDVQQHEwRGQUtFMQ0wCwYD
VQQKEwRGQUtFMQ0wCwYDVQQLEwRGQUtFMQ0wCwYDVQQDEwRGQUtFMR8wHQYJKoZI
hvcNAQkBFhBmYWtlQGV4YW1wbGUuY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCB
iQKBgQC4vy7K2LCgYJs7AbxdanPEwL4KLC9gi1LqzkRWShEaz8COUZswcOkevLQy
SMFTXAvmH1FVqNO97wVG6ydxi+LNE7Jub62QQnsK420y+nXRTytxrboH1eAiAIEt
ZoUKaOymfAN8l/MJbcPH0rTYNdni99B+UMPWmFeRg/BeWiy2hwIDAQABMA0GCSqG
SIb3DQEBBQUAA4GBAD+VNA6ia8TXa2lJgvmoGYCLGcCaccz7Nv/u4/oqv8qMPvdZ
5DZxDLIExOSHiFGwWg5m8NgcirH2diveyRBgNhgC6S6DntkEMvAV0yvaQgHtUO53
o50MymfqtoVcebZcXbiDVAXW1cPEHKLBXecX6/LZ+GOzEsUOxgt7Xs9uabqp
-----END CERTIFICATE-----
  KEY

  public_key_policy = @load_balancer.policies.create("pkp-for-#{name}",
    'PublicKeyPolicyType', 'PublicKey' => public_key.strip)

  @backend_policy = @load_balancer.policies.create(name,
    'BackendServerAuthenticationPolicyType',
    'PublicKeyPolicyName' => public_key_policy.name)

end

When /^I set the backend server policy named "([^"]*)" to port (\d+)$/ do |name, port|
  @load_balancer.backend_server_policies[port.to_i] = name
end

When /^I add the following backend server policies to port (\d+):$/ do |port, table|
  policy_names = []
  table.hashes.each do |hash|
    policy_names << hash["NAME"]
  end
  @load_balancer.backend_server_policies.add(port.to_i, policy_names)
end

Then /^the load balancer should have the following backend server policies on port (\d+):$/ do |arg1, table|

  policy_names = []
  table.hashes.each do |hash|
    policy_names << hash["NAME"]
  end

  @load_balancer.backend_server_policies.enum(:instance_port => port.to_i).map(&:name).sort.should == policy_names

end

When /^I remove the following backend server policies from port (\d+):$/ do |port, table|
  policy_names = []
  table.hashes.each do |hash|
    policy_names << hash["NAME"]
  end
  @load_balancer.backend_server_policies.remove(port.to_i, policy_names)
end

When /^I clear the backend server policies for port (\d+)$/ do |port|
  @load_balancer.backend_server_policies.clear(port.to_i)
end

Then /^the load balancer should have no backend server policies on port (\d+)$/ do |port|
  @load_balancer.backend_server_policies(:instance_port => port.to_i).to_a.should == []
end

Then /^the backend server policy for port (\d+) should be "([^"]*)"$/ do |port, name|
  @load_balancer.backend_server_policies[port.to_i].name.should == name
end

When /^I remove the backend server policy from port (\d+)$/ do |port|
  @load_balancer.backend_server_policies[port.to_i] = nil
end

Then /^the load balancer should have no backend server policy on port (\d+)$/ do |port|
  @load_balancer.backend_server_policies[port.to_i].should == nil
end
