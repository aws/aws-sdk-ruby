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

module AWS
  class SNS
    class MessageAuthenticator
      def initialize(options = {})
        @sha1 = OpenSSL::Digest::SHA1.new
      end

      # validates that a message received at the endpoint:
      # * came from an Amazon AWS url (*.amazonaws.com)
      # * was signed by the certificate specified within the message
      # @return [Boolean] returns true if the message is authentic
      def authentic?(message)
        begin
          if message.is_a? String
            hash = parse message
          else
            hash = message
          end
          signature = decode hash['Signature']
          verify_against = canonical_string_of hash
          public_key = public_key_from hash['SigningCertURL']
          return public_key.verify(@sha1, signature, verify_against)
        rescue => msg
          false
        end
      end

      private
      def parse(json_string)
        JSON.parse json_string
      end

      def decode(raw)
        Base64.decode64 raw
      end

      def canonical_string_of(message)
        text = "Message\n#{message['Message']}\n"
        text += "MessageId\n#{message['MessageId']}\n"
        text += "Subject\n#{message['Subject']}\n" unless message['Subject'].nil? or message['Subject'].empty?
        text += "Timestamp\n#{message['Timestamp']}\n"
        text += "TopicArn\n#{message['TopicArn']}\n"
        text += "Type\n#{message['Type']}\n"
        text
      end

      def public_key_from(x509_pem_url)
        cert_pem = fetch x509_pem_url
        x509 = OpenSSL::X509::Certificate.new(cert_pem)
        OpenSSL::PKey::RSA.new(x509.public_key)
      end

      def fetch(url)
        raise StandardError, "X509 signing cert is not hosted at AWS URL (was: #{url})" unless url =~ /^https.*amazonaws\.com\/.*$/i
        tries = 0
        begin
          response = HTTParty.get url
          response.body
        rescue => msg
          tries += 1
          retry if tries <= 3
          raise StandardError, "SNS signing cert could not be retrieved after #{tries} tries.\n#{msg}"
        end
      end
    end
  end
end
