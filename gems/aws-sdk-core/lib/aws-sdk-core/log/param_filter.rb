require 'pathname'
require 'set'

module Aws
  module Log
    class ParamFilter

      # A managed list of sensitive parameters that should be filtered from
      # logs. This is updated automatically as part of each release. See the
      # `tasks/sensitive.rake` for more information.
      #
      # @api private
      # begin
      SENSITIVE = [:access_token, :account_name, :account_password, :admin_contact, :artifact_credentials, :auth_code, :authentication_token, :base_32_string_seed, :bot_configuration, :client_id, :client_secret, :copy_source_sse_customer_key, :credentials, :db_password, :description, :email, :email_address, :id, :id_token, :input, :local_console_password, :master_account_email, :message, :name, :new_password, :notes, :old_password, :owner_information, :parameters, :password, :payload, :plaintext, :previous_password, :private_key, :proposed_password, :public_key, :qr_code_png, :query, :refresh_token, :registrant_contact, :secret_access_key, :secret_hash, :service_password, :shared_secret, :sse_customer_key, :ssekms_key_id, :status_message, :task_parameters, :tech_contact, :temporary_password, :text, :trust_password, :upload_credentials, :upload_url, :username, :value, :values, :variables, :zip_file]
      # end

      def initialize(options = {})
        @filters = Set.new(SENSITIVE + Array(options[:filter]))
      end

      def filter(value)
        case value
        when Struct, Hash then filter_hash(value)
        when Array then filter_array(value)
        else value
        end
      end

      private

      def filter_hash(values)
        filtered = {}
        values.each_pair do |key, value|
          filtered[key] = @filters.include?(key) ? '[FILTERED]' : filter(value)
        end
        filtered
      end

      def filter_array(values)
        values.map { |value| filter(value) }
      end

    end
  end
end
