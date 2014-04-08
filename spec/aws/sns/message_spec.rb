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

require 'spec_helper'

describe AWS::SNS::Message do

  it "should be creatable from a JSON string" do
    raw = File.open("#{File.dirname __FILE__}/support/sns_manually_sent.json", 'r') {|f| f.read}
    AWS::SNS::Message.new(raw).should_not be_nil
  end

  it "should be creatable from a Hash" do
    raw = File.open("#{File.dirname __FILE__}/support/sns_manually_sent.json", 'r') {|f| f.read}
    hash = JSON.parse raw
    AWS::SNS::Message.new(hash).should_not be_nil
  end

  it "should raise an error if the raw SNS string is not valid JSON" do
    lambda { AWS::SNS::Message.new('foo') }.should raise_error
  end

  it "should expose an index of the raw sns message" do
    raw = File.open("#{File.dirname __FILE__}/support/sns_manually_sent.json", 'r') {|f| f.read}
    AWS::SNS::Message.new(raw)['SignatureVersion'].should == "1"
  end

  describe "When checking authenticity" do

    let(:http) { double('net-http').as_null_object }

    let(:resp) { double('http-resp', :body => body) }

    let(:body) { <<-CERT.strip }
-----BEGIN CERTIFICATE-----
MIIE+TCCA+GgAwIBAgIQax6zU8p9DAWTsa4uy9uF1jANBgkqhkiG9w0BAQUFADCB
tTELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQL
ExZWZXJpU2lnbiBUcnVzdCBOZXR3b3JrMTswOQYDVQQLEzJUZXJtcyBvZiB1c2Ug
YXQgaHR0cHM6Ly93d3cudmVyaXNpZ24uY29tL3JwYSAoYykwOTEvMC0GA1UEAxMm
VmVyaVNpZ24gQ2xhc3MgMyBTZWN1cmUgU2VydmVyIENBIC0gRzIwHhcNMTAxMDA4
MDAwMDAwWhcNMTMxMDA3MjM1OTU5WjBqMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
V2FzaGluZ3RvbjEQMA4GA1UEBxQHU2VhdHRsZTEYMBYGA1UEChQPQW1hem9uLmNv
bSBJbmMuMRowGAYDVQQDFBFzbnMuYW1hem9uYXdzLmNvbTCBnzANBgkqhkiG9w0B
AQEFAAOBjQAwgYkCgYEAv8OHcwOX+SpVUpdS6OtB0FbmX6w7FQIXLJyChbcYQ3Ck
gJnrVJ5OFIMYAc+YMbkikXnvu9+MvZx38ZV8hIYBK4y4YSR/fLMzTIqsQXKW7myq
mIeEGGqGrCVVhs0xusCgfNBi64/zczJ3z/KLLzSXZ2Ln18MCCjQ3A8EcuwFeMTsC
AwEAAaOCAdEwggHNMAkGA1UdEwQCMAAwCwYDVR0PBAQDAgWgMEUGA1UdHwQ+MDww
OqA4oDaGNGh0dHA6Ly9TVlJTZWN1cmUtRzItY3JsLnZlcmlzaWduLmNvbS9TVlJT
ZWN1cmVHMi5jcmwwRAYDVR0gBD0wOzA5BgtghkgBhvhFAQcXAzAqMCgGCCsGAQUF
BwIBFhxodHRwczovL3d3dy52ZXJpc2lnbi5jb20vcnBhMB0GA1UdJQQWMBQGCCsG
AQUFBwMBBggrBgEFBQcDAjAfBgNVHSMEGDAWgBSl7wsRzsBBA6NKZZBIshzgVy19
RzB2BggrBgEFBQcBAQRqMGgwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLnZlcmlz
aWduLmNvbTBABggrBgEFBQcwAoY0aHR0cDovL1NWUlNlY3VyZS1HMi1haWEudmVy
aXNpZ24uY29tL1NWUlNlY3VyZUcyLmNlcjBuBggrBgEFBQcBDARiMGChXqBcMFow
WDBWFglpbWFnZS9naWYwITAfMAcGBSsOAwIaBBRLa7kolgYMu9BSOJsprEsHiyEF
GDAmFiRodHRwOi8vbG9nby52ZXJpc2lnbi5jb20vdnNsb2dvMS5naWYwDQYJKoZI
hvcNAQEFBQADggEBAKcmdO9iRCChdO21L0NaB24f2BFuUZO/y9tsTgC6NJ8p0sJU
+/dKc4p33pnmDE8EGDbImMd/HdVnqQ4nngurjzu7z/mv7247FGaUL/BnqLgOQJiM
YBJtskNd2vKN4kk4I6Z7e2mp2+4tzBL9Sk/x3b297oy4ZXILrBKxr9s9MhyPO1rQ
Mda9v2L3qcjPj38zbNoohEIpu/ilArbbFOUMOqdh7jomDoE3cyBDWMOOBh+t6QQD
kMFvPxlw0XwWsvjTGPFCBIR7NZXnwQfVYbdFu88TjT10wTCZ/E3yCp77aDWD1JLV
2V2EF3v1wPCPCbvEKZKVR5rLVYl2djU9j9d+H30=
-----END CERTIFICATE-----
    CERT

    before(:each) do
      Net::HTTP.stub(:new).and_return(http)
      http.stub(:request).and_return(resp)
    end

    let(:raw) {
      File.read("#{File.dirname __FILE__}/support/sns_manually_sent.json")
    }

    it "should successfully authenticate a valid sns message" do
      raw = File.open("#{File.dirname __FILE__}/support/sns_manually_sent.json", 'r') {|f| f.read}
      AWS::SNS::Message.new(raw).should be_authentic
    end

    %w(https://foo.com/wibble.pem https://amazonaws.com.dirtyhackers.com/itsrealhonest.pem http://sns.eu-west-1.amazonaws.com/foo.pem).each do |cert_url|

      it "should return false if the SigningCertURL does not originate from https-AWS" do
        raw = File.open("#{File.dirname __FILE__}/support/sns_manually_sent.json", 'r') {|f| f.read}
        parsed = JSON.parse raw
        parsed['SigningCertURL'] = cert_url
        AWS::SNS::Message.new(parsed).authentic?.should be_false
      end

    end

    it "should raises if the Signing cert cannot be downloaded after 3 tries" do
       http.should_receive(:request).exactly(3).times.and_raise('error')
       lambda {
         AWS::SNS::Message.new(raw).authentic?
       }.should raise_error('error')
    end

    it "should return false when the message cannot be verified against the signing-cert" do
      hash = JSON.parse(raw)
      hash['Signature'] = 'clear evidence of tampering'
      AWS::SNS::Message.new(hash).authentic?.should be_false
    end

  end
end
