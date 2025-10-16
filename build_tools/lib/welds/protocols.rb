# frozen_string_literal: true

require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/ec2_protocol'
require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/json_rpc_protocol'
require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/query_protocol'
require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/rest_json_protocol'
require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/rest_xml_protocol'

module BuildTools
  module Welds
    # Adds a supported protocol plugin to the client if the service has the trait, prioritized by a list.
    class Protocols < Smithy::Weld
      PROTOCOL_PRIORITY = %w[
        aws.protocols#awsJson1_1
        aws.protocols#awsJson1_0
        aws.protocols#restJson1
        aws.protocols#restXml
        aws.protocols#awsQuery
        aws.protocols#ec2Query
      ].freeze

      def for?(service)
        _id, service = service.first
        service_traits = service.fetch('traits', {})
        PROTOCOL_PRIORITY.each do |id|
          if service_traits.key?(id)
            @protocol = id
            return true
          end
        end
        false
      end

      def add_plugins
        case @protocol
        when 'aws.protocols#awsJson1_1', 'aws.protocols#awsJson1_0'
          { Aws::Core::Plugins::JsonRpcProtocol => { require_path: 'aws-sdk-core/plugins/json_rpc_protocol' } }
        when 'aws.protocols#awsQuery'
          { Aws::Core::Plugins::QueryProtocol => { require_path: 'aws-sdk-core/plugins/query_protocol' } }
        when 'aws.protocols#ec2Query'
          { Aws::Core::Plugins::Ec2Protocol => { require_path: 'aws-sdk-core/plugins/ec2_protocol' } }
        when 'aws.protocols#restJson1'
          { Aws::Core::Plugins::RestJsonProtocol => { require_path: 'aws-sdk-core/plugins/rest_json_protocol' } }
        when 'aws.protocols#restXml'
          { Aws::Core::Plugins::RestXmlProtocol => { require_path: 'aws-sdk-core/plugins/rest_xml_protocol' } }
        else {}
        end
      end

      def add_dependencies
        case @protocol
        when 'aws.protocols#restJson1', 'aws.protocols#awsJson1_1', 'aws.protocols#awsJson1_0'
          { 'smithy-json' => '1.0.0.pre1' }
        when 'aws.protocols#awsQuery', 'aws.protocols#ec2Query', 'aws.protocols#restXml'
          { 'smithy-xml' => '1.0.0.pre1' }
        else {}
        end
      end

      def protocol_test_vendor_code
        {
          'aws.protocoltests.config#ErrorCodeParams' => ErrorCodeParams.new
        }
      end

      # Used for generating error code expectations in protocol tests.
      class ErrorCodeParams
        def error_expect_code(params)
          <<~CODE
            expect(e.code).to eq('#{params['code']}')
            # except(e.type).to eq('#{params['type']}')
          CODE
        end
      end
    end
  end
end
