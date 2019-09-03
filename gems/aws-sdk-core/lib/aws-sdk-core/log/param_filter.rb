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
      SENSITIVE = [:access_token, :account_name, :account_password, :address, :admin_contact, :admin_password, :artifact_credentials, :auth_code, :authentication_token, :authorization_result, :backup_plan_tags, :backup_vault_tags, :base_32_string_seed, :body, :bot_configuration, :bot_email, :cause, :client_id, :client_secret, :comment, :configuration, :copy_source_sse_customer_key, :credentials, :current_password, :custom_attributes, :db_password, :default_phone_number, :definition, :description, :display_name, :e164_phone_number, :email, :email_address, :email_message, :embed_url, :error, :feedback_token, :file, :first_name, :host_key, :id, :id_token, :input, :input_text, :key_id, :key_store_password, :kms_key_id, :kms_master_key_id, :lambda_function_arn, :last_name, :local_console_password, :master_account_email, :master_user_password, :message, :name, :new_password, :next_password, :notes, :number, :old_password, :outbound_events_https_endpoint, :output, :owner_information, :parameters, :passphrase, :password, :payload, :phone_number, :plaintext, :previous_password, :primary_email, :primary_provisioned_number, :private_key, :proposed_password, :public_key, :qr_code_png, :query, :random_password, :recovery_point_tags, :refresh_token, :registrant_contact, :request_attributes, :search_query, :secret_access_key, :secret_binary, :secret_code, :secret_hash, :secret_string, :secret_to_authenticate_initiator, :secret_to_authenticate_target, :security_token, :service_password, :session_attributes, :share_notes, :shared_secret, :slots, :sse_customer_key, :ssekms_encryption_context, :ssekms_key_id, :status_message, :tag_key_list, :tags, :task_parameters, :tech_contact, :temporary_password, :text, :token, :trust_password, :type, :upload_credentials, :upload_url, :uri, :user_email, :user_name, :user_password, :username, :value, :values, :variables, :zip_file]
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
