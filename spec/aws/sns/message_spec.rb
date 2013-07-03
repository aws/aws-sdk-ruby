# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    %w(https://foo.com/wibble.pem https://amazonaws.com.dirtyhackers.com/itsrealhonest.pem http://sns.eu-west-1.amazonaws.com/foo.pem).each do |cert_url|
      it "should return false if the SigningCertURL does not originate from https-AWS" do
        raw = File.open("#{File.dirname __FILE__}/support/sns_manually_sent.json", 'r') {|f| f.read}
        parsed = JSON.parse raw
        parsed['SigningCertURL'] = cert_url
        AWS::SNS::Message.new(parsed).authentic?.should be_false
      end
    end
    it "should raise an error if the Signing cert cannot be downloaded after 3 tries"
    it "should return false when the message cannot be verified against the signing-cert" do
      raw = File.open("#{File.dirname __FILE__}/support/sns_manually_sent.json", 'r') {|f| f.read}
      hash = JSON.parse raw
      hash['Signature'] = 'clear evidence of tampering'
      AWS::SNS::Message.new(hash).authentic?.should be_false
    end
  end
end
