require 'pathname'
require 'set'

module Aws
  module Log
    class ParamFilter

      # A managed list of sensitive parameters that should be filtered from
      # logs. This is updated automatically as part of each release. See the
      # `tasks/update-sensitive-params.rake` for more information.
      #
      # @api private
      # begin
      SENSITIVE = [:access_token, :account_name, :account_password, :address, :admin_contact, :admin_password, :alexa_for_business_room_arn, :artifact_credentials, :auth_code, :authentication_token, :authorization_result, :backup_plan_tags, :backup_vault_tags, :base_32_string_seed, :block, :block_address, :block_data, :blocks, :body, :bot_configuration, :bot_email, :calling_name, :cause, :client_id, :client_request_token, :client_secret, :comment, :configuration, :copy_source_sse_customer_key, :credentials, :current_password, :custom_attributes, :custom_private_key, :db_password, :default_phone_number, :definition, :description, :destination_access_token, :digest_tip_address, :display_name, :domain_signing_private_key, :e164_phone_number, :email, :email_address, :email_message, :embed_url, :error, :external_meeting_id, :external_model_endpoint_data_blobs, :external_user_id, :fall_back_phone_number, :feedback_token, :file, :first_name, :full_name, :host_key, :id, :id_token, :input, :input_text, :ion_text, :join_token, :key, :key_id, :key_material, :key_store_password, :kms_key_id, :kms_master_key_id, :lambda_function_arn, :last_name, :local_console_password, :master_account_email, :master_user_name, :master_user_password, :meeting_host_id, :message, :metadata, :name, :new_password, :next_password, :notes, :number, :old_password, :outbound_events_https_endpoint, :output, :owner_information, :parameters, :passphrase, :password, :payload, :phone_number, :plaintext, :previous_password, :primary_email, :primary_provisioned_number, :private_key, :private_key_plaintext, :proof, :proposed_password, :proxy_phone_number, :public_key, :qr_code_png, :query, :random_password, :recovery_point_tags, :refresh_token, :registrant_contact, :request_attributes, :resource_arn, :restore_metadata, :revision, :saml_assertion, :search_query, :secret_access_key, :secret_binary, :secret_code, :secret_hash, :secret_string, :secret_to_authenticate_initiator, :secret_to_authenticate_target, :security_token, :service_password, :session_attributes, :session_token, :share_notes, :shared_secret, :slots, :sns_topic_arn, :source_access_token, :sqs_queue_arn, :sse_customer_key, :ssekms_encryption_context, :ssekms_key_id, :status_message, :tag_key_list, :tags, :target_address, :task_parameters, :tech_contact, :temporary_password, :text, :token, :trust_password, :type, :upload_credentials, :upload_url, :uri, :user_data, :user_email, :user_name, :user_password, :username, :value, :values, :variables, :vpn_psk, :web_identity_token, :zip_file]
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
          filtered[key] = @filters.any? { |f| f.to_s.casecmp(key.to_s).zero? } ? '[FILTERED]' : filter(value)
        end
        filtered
      end

      def filter_array(values)
        values.map { |value| filter(value) }
      end

    end
  end
end
