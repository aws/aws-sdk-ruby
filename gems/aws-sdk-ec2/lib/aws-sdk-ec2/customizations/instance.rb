# frozen_string_literal: true

require 'openssl'

module Aws
  module EC2
    class Instance

      # @param [String, Pathname] key_pair_path
      # @return [String]
      def decrypt_windows_password(key_pair_path)
        decoded = Base64.decode64(encrypted_password)
        pem_bytes = File.open(key_pair_path, 'rb') { |f| f.read }
        private_key = OpenSSL::PKey::RSA.new(pem_bytes)
        private_key.private_decrypt(decoded)
      end

      class Collection < Aws::Resources::Collection
          extend Aws::Deprecations

        {
          create_tags: :batch_create_tags,
          monitor: :batch_create_tags,
          reboot: :batch_reboot,
          start: :batch_start,
          stop: :batch_stop,
          terminate: :batch_terminate!,
          unmonitor: :batch_unmonitor
        }.each do |old_method, new_method|
          alias_method old_method, new_method
          deprecated old_method, use: new_method
        end
      end

      private

      def encrypted_password
        bytes = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          client.get_password_data(instance_id: id).password_data
        end
        if bytes == ''
          raise 'password not available yet'
        else
          bytes
        end
      end

    end
  end
end
