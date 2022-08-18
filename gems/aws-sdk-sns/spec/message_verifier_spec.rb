# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module SNS
    describe MessageVerifier do

      let(:signing_cert_url) {
        "https://sns.us-east-2.amazonaws.com/SimpleNotificationService-7ff5318490ec183fbaddaa2a969abfda.pem"
      }

      let(:message_SHA1) { <<-JSON.strip }
{
  "Type" : "Notification",
  "MessageId" : "792cda85-518f-5dd3-9163-81d851212f3a",
  "TopicArn" : "arn:aws:sns:us-east-2:295079676684:publish-and-verify-892f85fe-4836-424d-8188-ab85bef0f362",
  "Message" : "Hello world",
  "Timestamp" : "2022-07-28T21:23:58.317Z",
  "SignatureVersion" : "1",
  "Signature" : "ghtf+deOBAzHJJZ6s6CdRLfTQAlcGzq9naoFM1wi0CJiq//uVRuZnamrkWNF0fhouMFvuLVRwcz8PZLUMSfnmd5VpdTKpTyiKmy1qJAZXma0w+yi7G+I33hD1Jyk1Nbym2n0kqp3fVu2aoooiN2ZeLAT2bH0/BtjLSfN1yAOKNoprco4qV9gGUZinXJdj9a1YdNhDR2jKi33ldlsVtEXAtiaDklGEk7DgRKX38GerBPiLg3FdtgY6KC7cdeGpU/dGK+4hjc83Ive1HoFkAwqhpgInM2sMytBosoiXfCmOKmU4xeGD0gHDNZTlJUJQDlzw8Eag0H9f/5zXF9d3uy0YQ==",
  "SigningCertURL" : #{signing_cert_url.inspect},
  "UnsubscribeURL" : "https://sns.us-east-2.amazonaws.com/?Action=Unsubscribe&SubscriptionArn=arn:aws:sns:us-east-2:295079676684:publish-and-verify-892f85fe-4836-424d-8188-ab85bef0f362:2296bc94-7992-4be1-b15f-b97229b5c1d8"
}
      JSON

      let(:message_SHA256) { <<-JSON.strip }
{
  "Type" : "Notification",
  "MessageId" : "17dea24b-55c2-540b-8362-f916557af765",
  "TopicArn" : "arn:aws:sns:us-east-2:295079676684:publish-and-verify-62674b1d-4295-426b-88e7-5fb75652a04e",
  "Message" : "Hello world",
  "Timestamp" : "2022-07-28T21:24:08.324Z",
  "SignatureVersion" : "2",
  "Signature" : "CXVqp9PfZAL+4JHS3Zxo1PFbQsvnOjvmYhtIf17TWpwc+iIVas8kZ8GopuzVzVMdatE7rCl/O4P91Zp05Dwz8lk8dLhfp8gSu3Njlzxlyrmzo9x3va3Jb7zFnedgS2GKnZWHGBdwTXho+TosNUE+3e10OMSlwN5XGDwX7+R3WL+rn+AXmFAqp3alg27sYa55h1dLE9cGszGPjScPdtF3BmZsUDMx9wSdNKsCk+vSvE8yBjnCmUl7laSFj3LzPVrlSwgNYCF3kYnNAkah7NplK4SFhJYLwS0HCVCQJKa8rVbQLf9cBTu60U402mrgy0bN8xWoyimzbYbrOMJjalqkUg==",
  "SigningCertURL" : #{signing_cert_url.inspect},
  "UnsubscribeURL" : "https://sns.us-east-2.amazonaws.com/?Action=Unsubscribe&SubscriptionArn=arn:aws:sns:us-east-2:295079676684:publish-and-verify-62674b1d-4295-426b-88e7-5fb75652a04e:ad7d16e3-0a7c-46aa-b23e-ffaf02250cbe"
}
      JSON

      let(:lambda_message) { <<-JSON.strip }
{
  "Type" : "Notification",
  "MessageId" : "792cda85-518f-5dd3-9163-81d851212f3a",
  "TopicArn" : "arn:aws:sns:us-east-2:295079676684:publish-and-verify-892f85fe-4836-424d-8188-ab85bef0f362",
  "Message" : "Hello world",
  "Timestamp" : "2022-07-28T21:23:58.317Z",
  "SignatureVersion" : "1",
  "Signature" : "ghtf+deOBAzHJJZ6s6CdRLfTQAlcGzq9naoFM1wi0CJiq//uVRuZnamrkWNF0fhouMFvuLVRwcz8PZLUMSfnmd5VpdTKpTyiKmy1qJAZXma0w+yi7G+I33hD1Jyk1Nbym2n0kqp3fVu2aoooiN2ZeLAT2bH0/BtjLSfN1yAOKNoprco4qV9gGUZinXJdj9a1YdNhDR2jKi33ldlsVtEXAtiaDklGEk7DgRKX38GerBPiLg3FdtgY6KC7cdeGpU/dGK+4hjc83Ive1HoFkAwqhpgInM2sMytBosoiXfCmOKmU4xeGD0gHDNZTlJUJQDlzw8Eag0H9f/5zXF9d3uy0YQ==",
  "SigningCertUrl" : #{signing_cert_url.inspect},
  "UnsubscribeUrl" : "https://sns.us-east-2.amazonaws.com/?Action=Unsubscribe&SubscriptionArn=arn:aws:sns:us-east-2:295079676684:publish-and-verify-892f85fe-4836-424d-8188-ab85bef0f362:2296bc94-7992-4be1-b15f-b97229b5c1d8"
}
      JSON

      let(:cert) { <<-CERT.strip }
-----BEGIN CERTIFICATE-----
MIIF1zCCBL+gAwIBAgIQB9pYWG3Mi7xej22g9pobJTANBgkqhkiG9w0BAQsFADBG
MQswCQYDVQQGEwJVUzEPMA0GA1UEChMGQW1hem9uMRUwEwYDVQQLEwxTZXJ2ZXIg
Q0EgMUIxDzANBgNVBAMTBkFtYXpvbjAeFw0yMTA5MDcwMDAwMDBaFw0yMjA4MTcy
MzU5NTlaMBwxGjAYBgNVBAMTEXNucy5hbWF6b25hd3MuY29tMIIBIjANBgkqhkiG
9w0BAQEFAAOCAQ8AMIIBCgKCAQEAutFqueT3XgP13udzxE6UpbdjOtVO5DwoMpSM
iDNMnGzF1TYH5/R2LPUOBeTB0SkKnR4kpNcUZhicpGD4aKciz/GEZ6wu65xncfT9
H/KBOQwoXYTuClHwp6fYpGzcGFaFoEYMnijL/o4qmTSd+ukglQUgKpsDw4ofw6rU
m2CttJo+GQSNQ9NfGR1h/0J+zsApkeSYrXRx5wNlu87z8os1C/6PBrUHwt3xXeaf
Xzfwut8aRRYsS8BySOA9DAgLfNHlfdQCjKPXKrG/ussgReyWD6n/HH+j7Uha3xos
TzQqJifcxlTq6MxWdPR6fDaJNvqw6DOE7UjUNxHguXHlVfxhlQIDAQABo4IC6TCC
AuUwHwYDVR0jBBgwFoAUWaRmBlKge5WSPKOUByeWdFv5PdAwHQYDVR0OBBYEFAqz
C+vyouneE7mWWLbi9i0UsWUbMBwGA1UdEQQVMBOCEXNucy5hbWF6b25hd3MuY29t
MA4GA1UdDwEB/wQEAwIFoDAdBgNVHSUEFjAUBggrBgEFBQcDAQYIKwYBBQUHAwIw
OwYDVR0fBDQwMjAwoC6gLIYqaHR0cDovL2NybC5zY2ExYi5hbWF6b250cnVzdC5j
b20vc2NhMWIuY3JsMBMGA1UdIAQMMAowCAYGZ4EMAQIBMHUGCCsGAQUFBwEBBGkw
ZzAtBggrBgEFBQcwAYYhaHR0cDovL29jc3Auc2NhMWIuYW1hem9udHJ1c3QuY29t
MDYGCCsGAQUFBzAChipodHRwOi8vY3J0LnNjYTFiLmFtYXpvbnRydXN0LmNvbS9z
Y2ExYi5jcnQwDAYDVR0TAQH/BAIwADCCAX0GCisGAQQB1nkCBAIEggFtBIIBaQFn
AHYAKXm+8J45OSHwVnOfY6V35b5XfZxgCvj5TV0mXCVdx4QAAAF7vfDVkQAABAMA
RzBFAiEA2XfHuy36aqRFiaL8c3md2mH451go8707+fRE0pEdSRACIE/g5FXTUXUZ
PFcmOhm9TZ+uMY1i4CIQ/CKVWln6C3t+AHYAUaOw9f0BeZxWbbg3eI8MpHrMGyfL
956IQpoN/tSLBeUAAAF7vfDVjAAABAMARzBFAiBF1MhhFP0+FQt3daDFfMYoWwnr
muTInrjNpwfzlvQBugIhAPYadFzr+LaxSJoiZEbEHBvTts7bT0M3eCQONA2O7w6n
AHUAQcjKsd8iRkoQxqE6CUKHXk4xixsD6+tLx2jwkGKWBvYAAAF7vfDVdAAABAMA
RjBEAiAtPapmFAuA71ih4NoSd5hJelzAltNQpxDMcDfDyHyU8gIgWxmaa6+2KbBu
9xdv379zvnJACFR7jc+4asl08Dn4aagwDQYJKoZIhvcNAQELBQADggEBAA54QX0u
oFWXfMmv02CGZv4NWo5TapyeeixQ2kKpZHRdVZjxZrw+hoF6HD7P3kGjH8ztyJll
tDxB0qgMltbPhQdScwhA6iTgoaBYqEUC/VHKd4PmmPT6yIsM36NBZVmkGlzl5uNo
/dBgBaG0SsVJnhr5zro3c2quC7n6fVGEZhf/UgQwRnnvThnvbNKguglDMq4uEqv8
njKyleht+glkcmXO0m9qLKt6BOS0amy6U2GlAwRn0Wx02ndJtnRCSC6kPuRWK/SQ
FEjB7gCK4hdKaAOuWdZpI55vF6ifOeM8toC3g7ofO8qLTnJupAG+ZitY5J3cvHWr
HqOUdKigPDHYLRo=
-----END CERTIFICATE-----
      CERT

      let(:verifier) { MessageVerifier.new }

      before(:each) do
        stub_request(:get, signing_cert_url).to_return(status:200, body:cert)
      end

      describe '#authenticate!' do

        it 'returns true for a valid message' do
          [message_SHA1, message_SHA256, lambda_message].each do |message|
            expect(verifier.authenticate!(message)).to be(true)
          end
        end

        it 'raises when SignatureVersion is not a valid value' do
          msg = Json.load(message_SHA1)
          msg['SignatureVersion'] = '3'
          msg = Json.dump(msg)
          expect {
            verifier.authenticate!(msg)
          }.to raise_error(MessageVerifier::VerificationError, /Invalid SignatureVersion/)
        end

        it 'raises when the SigningCertURL is not https' do
          msg = Json.load(message_SHA1)
          msg['SigningCertURL'] = msg['SigningCertURL'].sub(/https/, 'http')
          msg = Json.dump(msg)
          expect {
            verifier.authenticate!(msg)
          }.to raise_error(MessageVerifier::VerificationError, /must be https/)
        end

        it 'raises when the SigningCertURL is not AWS hosted' do
          msg = Json.load(message_SHA1)
          msg['SigningCertURL'] = 'https://internetbadguys.com/cert.pem'
          msg = Json.dump(msg)
          expect {
            verifier.authenticate!(msg)
          }.to raise_error(MessageVerifier::VerificationError, /hosted by AWS/)
        end

        it 'raises when the SigningCertURL is not a pem file' do
          msg = Json.load(message_SHA1)
          msg['SigningCertURL'] = msg['SigningCertURL'].sub(/pem$/, 'key')
          msg = Json.dump(msg)
          expect {
            verifier.authenticate!(msg)
          }.to raise_error(MessageVerifier::VerificationError, /a \.pem file/)
        end

        it 'raises when the message signature fails validation' do
          [message_SHA1, message_SHA256, lambda_message].each do |message|
            msg = Json.load(message)
            msg['Signature'] = 'bad'
            msg = Json.dump(msg)
            expect {
              verifier.authenticate!(msg)
            }.to raise_error(MessageVerifier::VerificationError, /cannot be verified/)
          end
        end

        it 'can use a configured :http_proxy' do
          proxy_url = 'https://peccy:password@amazonaws.com:12345'
          verifier = MessageVerifier.new(http_proxy: proxy_url)
          verifier.authenticate!(message_SHA1)
          expect(a_request(:get, signing_cert_url)).to have_been_made
        end

        it 'caches the pem file' do
          verifier.authenticate!(message_SHA1)
          verifier.authenticate!(message_SHA1)
          expect(a_request(:get, signing_cert_url)).to have_been_made.once
        end

        it 'attempts to download the cert 3 times' do
          stub_request(:get, signing_cert_url).
            to_return(status: 500, body: '').
            to_return(status: 500, body: '').
            to_return(status: 200, body: cert)
          verifier.authenticate!(message_SHA1)
          expect(a_request(:get, signing_cert_url)).to have_been_made.times(3)
        end

        it 'raises when the signing cert can not be downloaded due to networking errors' do
          stub_request(:get, signing_cert_url).to_raise(StandardError, 'oops')
          expect {
            verifier.authenticate!(message_SHA1)
          }.to raise_error(MessageVerifier::VerificationError, 'oops')
        end

        it 'raises when the signing cert can not be downloaded' do
          stub_request(:get, signing_cert_url).to_return(status:500, body:'bad')
          expect {
            verifier.authenticate!(message_SHA1)
          }.to raise_error(MessageVerifier::VerificationError, 'bad')
        end

        it 'raises when the signing cert contains additional characters' do
          cert_with_extra = "<xml><value>\n#{cert}\n<value></xml>"
          stub_request(:get, signing_cert_url).to_return(status:200, body: cert_with_extra)
          expect {
            verifier.authenticate!(message_SHA1)
          }.to raise_error(MessageVerifier::VerificationError,
                           /certificate does not match expected X509 PEM format/)
        end

      end

      describe '#authentic?' do

        it 'returns true if the message can be authenticated' do
          [message_SHA1, message_SHA256, lambda_message].each do |message|
            expect(verifier.authentic?(message)).to be(true)
          end
        end

        it 'returns false if the message can not be authenticated' do
          [message_SHA1, message_SHA256, lambda_message].each do |message|
            msg = Json.load(message)
            msg['Signature'] = 'bad'
            msg = Json.dump(msg)
            expect(verifier.authentic?(msg)).to be(false)
          end
        end

      end
    end
  end
end
