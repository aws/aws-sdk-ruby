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
      SENSITIVE = {"ACM"=>[:passphrase, :private_key], "Alexa For Business"=>[:phone_number, :current_password, :next_password, :number, :type, :authorization_result, :uri], "AppStream"=>[:user_name, :first_name, :last_name, :account_name, :account_password], "Backup"=>[:recovery_point_tags, :backup_plan_tags, :backup_vault_tags, :restore_metadata, :tags, :metadata, :tag_key_list], "Budgets"=>[:address], "Chime"=>[:alexa_for_business_room_arn, :e164_phone_number, :external_user_id, :join_token, :display_name, :bot_email, :security_token, :client_request_token, :external_meeting_id, :meeting_host_id, :name, :email, :username, :password, :outbound_events_https_endpoint, :lambda_function_arn, :calling_name, :email_address, :user_email, :resource_arn, :sns_topic_arn, :sqs_queue_arn, :full_name, :phone_number, :proxy_phone_number, :fall_back_phone_number, :key, :value, :default_phone_number, :primary_email, :primary_provisioned_number], "Cloud9"=>[:description], "CloudFront"=>[:comment], "CodeBuild"=>[:token], "CodePipeline"=>[:artifact_credentials], "CodeStar"=>[:name, :description, :display_name, :email_address, :token], "codestar notifications"=>[:name, :target_address], "Cognito Identity Provider"=>[:username, :temporary_password, :client_id, :password, :access_token, :secret_code, :value, :refresh_token, :id_token, :previous_password, :proposed_password, :secret_hash, :feedback_token, :client_secret], "Connect"=>[:access_token, :refresh_token], "DataSync"=>[:password], "Database Migration Service"=>[:password], "Directory Service"=>[:password, :trust_password, :share_notes, :shared_secret, :new_password], "EBS"=>[:block_data, :blocks], "EC2"=>[:user_data, :key_material], "Elasticsearch Service"=>[:master_user_name, :master_user_password], "FSx"=>[:password], "Firehose"=>[:username, :password], "FraudDetector"=>[:external_model_endpoint_data_blobs], "GameLift"=>[:upload_credentials, :credentials], "IAM"=>[:secret_access_key, :old_password, :new_password, :password, :service_password, :private_key, :base_32_string_seed, :qr_code_png], "IoT"=>[:private_key], "IoTSecureTunneling"=>[:source_access_token, :destination_access_token], "KMS"=>[:key_store_password, :plaintext, :private_key_plaintext, :public_key, :message], "kendra"=>[:kms_key_id], "Lambda"=>[:variables, :message, :zip_file, :payload], "Lex Runtime Service"=>[:slots, :message, :session_attributes, :request_attributes, :input_text], "Lex Model Building Service"=>[:bot_configuration], "Lightsail"=>[:master_user_password], "ManagedBlockchain"=>[:admin_password], "OpsWorksCM"=>[:custom_private_key, :value], "Organizations"=>[:email, :name, :account_name, :id, :value, :notes, :master_account_email], "Personalize"=>[:filter_expression], "Polly"=>[:name], "QLDB"=>[:block_address, :digest_tip_address, :block, :proof, :revision, :ion_text], "QuickSight"=>[:credentials, :embed_url], "RDS"=>[:vpn_psk], "Redshift"=>[:db_password], "Route 53 Domains"=>[:auth_code, :admin_contact, :registrant_contact, :tech_contact], "S3"=>[:ssekms_key_id, :ssekms_encryption_context, :sse_customer_key, :copy_source_sse_customer_key, :kms_key_id, :key_id, :kms_master_key_id], "SESv2"=>[:domain_signing_private_key], "SSM"=>[:description, :parameters, :owner_information, :task_parameters, :payload, :input, :values, :configuration], "SSO"=>[:access_token, :secret_access_key, :session_token], "STS"=>[:saml_assertion, :web_identity_token], "SageMaker Runtime"=>[:body, :custom_attributes], "Secrets Manager"=>[:secret_binary, :secret_string, :random_password], "SFN"=>[:error, :cause, :input, :output, :definition, :parameters], "Storage Gateway"=>[:secret_to_authenticate_initiator, :secret_to_authenticate_target, :password, :local_console_password], "Transfer"=>[:host_key, :user_password], "Translate"=>[:file], "WorkDocs"=>[:authentication_token, :text, :password, :search_query, :query, :email_message, :status_message, :upload_url], "WorkMail"=>[:password]}.freeze
      # end

      def initialize(options = {})
        if options[:filter_sensitive] == false
          @filters = {}
          return
        end

        filters = options[:filter] || {}
        if filters.is_a?(Hash)
          @filters = SENSITIVE.merge(filters)
        # Support backwards compatibility for Array
        elsif filters.is_a?(Array)
          @filters = SENSITIVE.dup
          @filters.update(@filters) { |_k, v| v | Array(filters) }
        else
          @filters = SENSITIVE
        end
      end

      def filter(service, value)
        case value
        when Struct, Hash then filter_hash(service, value)
        when Array then filter_array(service, value)
        else value
        end
      end

      private

      def filter_hash(service, values)
        filtered = {}
        values.each_pair do |key, value|
          filters = @filters[service] || {}
          filtered[key] = if filters.include?(key)
            '[FILTERED]'
          else
            filter(service, value)
          end
        end
        filtered
      end

      def filter_array(service, values)
        values.map { |value| filter(service, value) }
      end

    end
  end
end
