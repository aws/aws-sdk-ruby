# frozen_string_literal: true

require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/aws_query'
require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/ec2_query'
require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/json_rpc'
require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/rest_json'
require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/rest_xml'

module BuildTools
  module Welds
    # Adds a supported protocol to the client if the service has the trait, prioritized by a list.
    # TODO: once we optimize RpcVCbor implementation in smithy ruby, we should include that.
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

      def add_protocols
        case @protocol
        when 'aws.protocols#awsJson1_1', 'aws.protocols#awsJson1_0'
          { json_rpc: { class_name: Aws::Core::JsonRpc, require_path: 'aws-sdk-core/json_rpc' } }
        when 'aws.protocols#restJson1'
          { rest_json: { class_name: Aws::Core::RestJson, require_path: 'aws-sdk-core/rest_json' } }
        when 'aws.protocols#restXml'
          { rest_xml: { class_name: Aws::Core::RestXml, require_path: 'aws-sdk-core/rest_xml' } }
        when 'aws.protocols#awsQuery'
          { aws_query: { class_name: Aws::Core::AwsQuery, require_path: 'aws-sdk-core/aws_query' } }
        when 'aws.protocols#ec2Query'
          { ec2_query: { class_name: Aws::Core::Ec2Query, require_path: 'aws-sdk-core/ec2_query' } }
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
