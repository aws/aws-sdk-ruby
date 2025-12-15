#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../../../lib/aws-sdk-s3/encryptionV3/utils'
require 'json'

module Aws
  module S3
    module EncryptionV3
      # Generator for KDF Known Answer Test (KAT) JSON entries
      # This script generates test vectors for encryption interoperability testing
      class KdfKatGenerator
        
        # Generates a complete KAT entry with encryption test data
        # @param plaintext [String] The plaintext to encrypt
        # @param comment [String, nil] Optional comment for the test case
        # @param data_key [String, nil] Optional 32-byte data key (generates random if nil)
        # @param message_id [String, nil] Optional 28-byte message ID (generates random if nil)
        # @return [Hash] A hash representing the KAT JSON entry
        def self.generate_kat_entry(plaintext:, comment: nil, data_key: nil, message_id: nil)
          # Use provided keys or generate new ones
          data_key ||= Utils.generate_data_key()
          message_id ||= Utils.generate_message_id()
          
          # Derive keys using HKDF
          encryption_key = Utils.derive_encryption_key(data_key, message_id)
          commitment_key = Utils.derive_commitment_key(data_key, message_id)
          
          # Create cipher with specific message_id and encrypt plaintext
          cipher = Utils.alg_aes_256_gcm_hkdf_sha512_commit_key_cipher(:encrypt, data_key, message_id)
          ciphertext = cipher.update(plaintext) + cipher.final
          auth_tag = cipher.auth_tag
          
          # Return hex-encoded JSON entry
          {
            comment: comment || "Generated KAT entry",
            data_key: to_hex(data_key),
            message_id: to_hex(message_id),
            encryption_key: to_hex(encryption_key),
            commitment_key: to_hex(commitment_key),
            plaintext: to_hex(plaintext),
            ciphertext: to_hex(ciphertext),
            auth_tag: to_hex(auth_tag)
          }
        end
        
        # Convert binary string to hex string
        # @param data [String] Binary data
        # @return [String] Hex-encoded string
        def self.to_hex(data)
          data.unpack1('H*')
        end
        
        # Convert hex string to binary string
        # @param hex [String] Hex-encoded string
        # @return [String] Binary data
        def self.from_hex(hex)
          [hex].pack('H*')
        end
        
        # Generate multiple KAT entries
        # @param count [Integer] Number of entries to generate
        # @param plaintext [String] The plaintext to use for all entries
        # @return [Array<Hash>] Array of KAT entries
        def self.generate_multiple(count:, plaintext: "Hello, World!")
          count.times.map do |i|
            generate_kat_entry(
              plaintext: plaintext,
              comment: "Generated KAT entry #{i + 1}"
            )
          end
        end
        
        # Print a KAT entry as formatted JSON
        # @param entry [Hash] The KAT entry to print
        def self.print_json(entry)
          puts JSON.pretty_generate(entry)
        end
        
        # Print multiple KAT entries as a JSON array
        # @param entries [Array<Hash>] The KAT entries to print
        def self.print_json_array(entries)
          puts JSON.pretty_generate(entries)
        end
      end
    end
  end
end

# Example usage when run as a script
if __FILE__ == $PROGRAM_NAME
  include Aws::S3::EncryptionV3
  
  # Generate a single entry with default plaintext
  entry = KdfKatGenerator.generate_kat_entry(
    plaintext: "Hello, World!",
    comment: "Example KAT entry"
  )
  
  KdfKatGenerator.print_json(entry)
  
  puts "\n# To generate multiple entries:"
  puts "# entries = KdfKatGenerator.generate_multiple(count: 2, plaintext: 'Test data')"
  puts "# KdfKatGenerator.print_json_array(entries)"
end
