# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::ACMPCA
  module Waiters

    # Wait until a Audit Report is created
    class AuditReportCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (3)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 3,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_certificate_authority_audit_report,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "audit_report_status",
                "expected" => "SUCCESS"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "audit_report_status",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_certificate_authority_audit_report)
      # @return (see Client#describe_certificate_authority_audit_report)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a Certificate Authority CSR is created
    class CertificateAuthorityCSRCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (3)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 3,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_certificate_authority_csr,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "status",
                "expected" => 200
              },
              {
                "state" => "retry",
                "matcher" => "error",
                "expected" => "RequestInProgressException"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_certificate_authority_csr)
      # @return (see Client#get_certificate_authority_csr)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a certificate is issued
    class CertificateIssued

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (3)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 3,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_certificate,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "status",
                "expected" => 200
              },
              {
                "state" => "retry",
                "matcher" => "error",
                "expected" => "RequestInProgressException"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_certificate)
      # @return (see Client#get_certificate)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
