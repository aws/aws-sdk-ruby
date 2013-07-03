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

require 'base64'
require 'json'
require 'openssl'
Dir.glob("#{File.dirname __FILE__}/originators/*.rb").each { |rb| require rb }

module AWS
  class SNS
    class MessageWasNotAuthenticError < StandardError
    end

    # Represents a single SNS message.
    #
    # See also http://docs.amazonwebservices.com/sns/latest/gsg/json-formats.html
    #
    # = Originators
    # Originators are sources of SNS messages.  {FromAutoScaling} is one.  {Message}
    # can be extended by originators if their #applicable? method returns true when
    # passed the raw message.
    # Originator modules must implement `applicable? sns` module function.
    # If an originator is applicable, it should set the `@origin` accessor to denote 
    # itself.
    class Message
      attr_reader :raw
      attr_accessor :origin

      # @return {Message} Constructs a new {Message} from the raw SNS, sets origin
      def initialize sns
        if sns.is_a? String
          @raw = parse_from sns
        else
          @raw = sns
        end
        @origin = :sns
        self.extend FromAutoScaling if FromAutoScaling.applicable? @raw
      end

      # @param [String] indexer into raw SNS JSON message
      # @return [String] the value of the SNS' field
      def [] key
        @raw[key]
      end

      # @return [Boolean] true when the {Message} is authentic:
      #   SigningCert is hosted at amazonaws.com, on https
      #   correctly cryptographically signed by sender
      #   nothing went wrong during authenticating the {Message}
      #
      # See http://docs.amazonwebservices.com/sns/latest/gsg/SendMessageToHttp.verify.signature.html
      def authentic?
        begin
          decoded_from_base64 = decode signature
          public_key = get_public_key_from signing_cert_url
          public_key.verify OpenSSL::Digest::SHA1.new, decoded_from_base64, canonical_string
        rescue MessageWasNotAuthenticError
          false
        end
      end

      # @return[Symbol] the message type
      def type
        case when @raw['Type'] =~ /SubscriptionConfirmation/i
          then :SubscriptionConfirmation
        when @raw['Type'] =~ /Notification/i
          then :Notification
        when @raw['Type'] =~ /UnsubscribeConfirmation/i
          then :UnsubscribeConfirmation
        else
          :unknown
        end
      end

      def message_id
        @raw['MessageId']
      end

      def topic_arn
        @raw['TopicArn']
      end

      def subject
        @raw['Subject']
      end

      def message
        @raw['Message']
      end

      def timestamp
        @raw['Timestamp']
      end

      def signature
        @raw['Signature']
      end

      def signature_version
        @raw['SignatureVersion']
      end

      def signing_cert_url
        @raw['SigningCertURL']
      end

      def unsubscribe_url
        @raw['UnsubscribeURL']
      end

      def parse_from json
        JSON.parse json
      end

      protected
      def decode raw
        Base64.decode64 raw
      end

      def get_public_key_from(x509_pem_url)
        cert_pem = download x509_pem_url
        x509 = OpenSSL::X509::Certificate.new(cert_pem)
        OpenSSL::PKey::RSA.new(x509.public_key)
      end

      def canonical_string
        # TODO: Support SubscriptionConfirmation and UnsubscribeConfirmation messages
        text = "Message\n#{message}\n"
        text += "MessageId\n#{message_id}\n"
        text += "Subject\n#{subject}\n" unless subject.nil? or subject.empty?
        text += "Timestamp\n#{timestamp}\n"
        text += "TopicArn\n#{topic_arn}\n"
        text += "Type\n#{type}\n"
        text
      end

      def download url
        raise MessageWasNotAuthenticError, "cert is not hosted at AWS URL (https): #{url}" unless url =~ /^https.*amazonaws\.com\/.*$/i
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
