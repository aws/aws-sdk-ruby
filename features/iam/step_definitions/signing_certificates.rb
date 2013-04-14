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

require 'openssl'

Given /^I create an X\.509 cert$/ do
  @cert = OpenSSL::X509::Certificate.new
  @cert.not_before = Time.now - 86400
  @cert.not_after = Time.now + 86400
  @cert.issuer = OpenSSL::X509::Name.parse('CN=sample')
  @cert.version = 2 # X.509v3
  @cert.public_key = OpenSSL::PKey::RSA.generate(1024)
  @cert.serial = 1
end

When /^I upload a signing certificate$/ do
  step "I create an X.509 cert"
  @signing_certificate = @iam.signing_certificates.upload(@cert.to_pem)
  @uploaded_signing_certificates << @signing_certificate
end

When /^I upload a signing certificate for the user$/ do
  step "I create an X.509 cert"
  @signing_certificate = @user.signing_certificates.upload(@cert.to_pem)
  @uploaded_signing_certificates << @signing_certificate
end

When /^I delete the signing certificate$/ do
  @signing_certificate.delete
end

When /^I get a reference to the signing certificate$/ do
  @signing_certificate = @iam.signing_certificates[@signing_certificate.id]
end

Then /^the signing certificate contents should match$/ do
  @signing_certificate.contents.should == @cert.to_pem
end

Then /^the signing certificate status should be "([^"]*)"$/ do |status|
  @signing_certificate.status.should.to_s == status
end

Then /^the signing certificate user be nil$/ do
  @signing_certificate.user.should == nil
end

When /^I deactivate the signing certificate$/ do
  @signing_certificate.deactivate!
end

When /^I activate the signing certificate$/ do
  @signing_certificate.activate!
end
