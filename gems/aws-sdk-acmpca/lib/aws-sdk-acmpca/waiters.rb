# frozen_string_literal: true

# This is generated code!

module Aws::ACMPCA

  # @api private
  module Waiters
    # @api private
    #
    # Wait until a Audit Report is created
    #
    class AuditReportCreated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 3,
          max_delay: options[:max_delay] || 180,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_certificate_authority_audit_report,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "audit_report_status",
                    "expected" => "SUCCESS",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "audit_report_status",
                    "expected" => "FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "AccessDeniedException"
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    # Wait until a Certificate Authority CSR is created
    #
    class CertificateAuthorityCSRCreated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 3,
          max_delay: options[:max_delay] || 180,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_certificate_authority_csr,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "success" => true
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "RequestInProgressException"
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "AccessDeniedException"
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    # Wait until a certificate is issued
    #
    class CertificateIssued
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 1,
          max_delay: options[:max_delay] || 60,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_certificate,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "success" => true
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "RequestInProgressException"
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "AccessDeniedException"
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

  end
end
