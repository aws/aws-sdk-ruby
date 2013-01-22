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

When /^I upload an IAM server certificate(?: named "([^\"]*)")?(?: with path "([^\"]*)")?$/ do |name, path|
  name = "RubyCert-#{Time.now.to_f}" if name.to_s.empty?

  opts = { :name => name }
  opts[:path] = path unless path.to_s.empty?

  opts[:certificate_body] = <<END
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
END
  opts[:private_key] = <<END
-----BEGIN RSA PRIVATE KEY-----
MIICXAIBAAKBgQC4vy7K2LCgYJs7AbxdanPEwL4KLC9gi1LqzkRWShEaz8COUZsw
cOkevLQySMFTXAvmH1FVqNO97wVG6ydxi+LNE7Jub62QQnsK420y+nXRTytxrboH
1eAiAIEtZoUKaOymfAN8l/MJbcPH0rTYNdni99B+UMPWmFeRg/BeWiy2hwIDAQAB
AoGATgA6K16txCjFoXYsJ2zIkCuokPby0dpBGe4YoC4JZr6MWApQcXVal6Wolwps
xVs5kuFqH7Z2H90I51ZlguVCzgdYiEq6Soy+IAolzpGv9v7hk7enwmav319il/Ar
GgnxR9iWXKW/JdlVLhsgo8dVdLPdXqCKF+9C33RRtaWPZvECQQDiN8EdO7CIfA0u
PmGr8LcgPKFqDxbYcSBbchP6c5yiMC75T2/SjXveCw8Fu+W5oJp7lC0J2n0dMfRa
CYFxgRObAkEA0RG6E/h6KwxJvMCaNQRKgeYJhaz1L6s8WH2Xe0AE+sst51fx8Ifr
EzyteTel7296/Qo0ZLbnX8W4e5XVyqqFhQJBAKsA5I15op/5zmjnpSO5qmTHEGnB
EE77bS9TVADeRkhgThIOV4R9iWY3S9rUx/qDimPihg1NyYg5S/KH/v7TSQMCQCOV
EshnV9OPydT4KsavLkchcalwoGI2kJS2+1scsDxG7E8dZq37VAT4JMYmtHUl0hbS
78vcXVCthBJ0k+hkUUkCQFTr0j/biEWZgEwQqegwLixcm8QZm/kD4WLbnAJEl9Yk
iXHi9qkLok/StoBwSIBzPKEOBEu5BwGP9wmFh0wZ0JQ=
-----END RSA PRIVATE KEY-----
END

  @result =
    @server_cert = @iam.server_certificates.create(opts)
  @created_server_certificates << @server_cert
end

Then /^the result should be an IAM server certificate$/ do
  @result.should be_an(IAM::ServerCertificate)
end

When /^I access the following attributes of the server certificate:$/ do |table|
  table.raw.flatten.each do |att|
    @server_cert.send(att)
  end
end

When /^I change the server certificate path to "([^\"]*)"$/ do |path|
  @path = path
  @server_cert.path = path
end

Then /^the server certificate arn should contain the path$/ do
  @server_cert.arn.should include(@path)
end

When /^I delete the server certificate$/ do
  @server_cert.delete
end

When /^I ask if the server certificate exists$/ do
  @result = @server_cert.exists?
end

Given /^I ask for the server certificate named "([^\"]*)"$/ do |name|
  @server_cert = @iam.server_certificates[name]
end

When /^I list IAM server certificates$/ do
  @result = @iam.server_certificates
end

Then /^the result should include the server certificate I created$/ do
  @result.should include(@server_cert)
end

Given /^I create (\d+) IAM server certificates$/ do |n|
  n.to_i.times { step "I upload an IAM server certificate" }
end

When /^I list IAM server certificates with a limit of (\d+) and batch_size of (\d+)$/ do |limit, batch_size|
  @result = @iam.server_certificates.
    each(:limit => limit.to_i,
         :batch_size => batch_size.to_i) { |cert| }
end

When /^I compute a hash mapping ARN to server certificate upload date$/ do
  @iam.server_certificates.inject({}) do |hash, cert|
    hash[cert.arn] = cert.upload_date
    hash
  end
end

When /^I compute the list of unique path names among my server certificates$/ do
  @iam.server_certificates.map { |cert| cert.path }.uniq
end
