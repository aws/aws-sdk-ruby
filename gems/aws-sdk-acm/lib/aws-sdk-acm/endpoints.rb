# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ACM
  # @api private
  module Endpoints

    class AddTagsToCertificate
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class CreateAcmeDomainValidation
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class CreateAcmeEndpoint
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class CreateAcmeExternalAccountBinding
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class DeleteAcmeDomainValidation
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class DeleteAcmeEndpoint
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class DeleteAcmeExternalAccountBinding
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class DeleteCertificate
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class DescribeAcmeAccount
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class DescribeAcmeDomainValidation
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class DescribeAcmeEndpoint
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class DescribeAcmeExternalAccountBinding
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class DescribeCertificate
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class ExportCertificate
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class GetAccountConfiguration
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class GetAcmeExternalAccountBindingCredentials
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class GetCertificate
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class ImportCertificate
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class ListAcmeAccounts
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class ListAcmeDomainValidations
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class ListAcmeEndpoints
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class ListAcmeExternalAccountBindings
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class ListCertificateDomainValidations
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class ListCertificates
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class ListTagsForCertificate
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class ListTagsForResource
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class PutAccountConfiguration
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class RemoveTagsFromCertificate
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class RenewCertificate
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class RequestCertificate
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class ResendValidationEmail
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class RevokeAcmeAccount
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class RevokeAcmeExternalAccountBinding
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class RevokeCertificate
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class SearchCertificates
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class TagResource
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class UntagResource
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end

    class UpdateAcmeDomainValidation
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class UpdateAcmeEndpoint
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM-ACME",
        )
      end
    end

    class UpdateCertificateOptions
      def self.build(context)
        Aws::ACM::EndpointParameters.create(
          context.config,
          service_type: "ACM",
        )
      end
    end


    def self.parameters_for_operation(context)
      case context.operation_name
      when :add_tags_to_certificate
        AddTagsToCertificate.build(context)
      when :create_acme_domain_validation
        CreateAcmeDomainValidation.build(context)
      when :create_acme_endpoint
        CreateAcmeEndpoint.build(context)
      when :create_acme_external_account_binding
        CreateAcmeExternalAccountBinding.build(context)
      when :delete_acme_domain_validation
        DeleteAcmeDomainValidation.build(context)
      when :delete_acme_endpoint
        DeleteAcmeEndpoint.build(context)
      when :delete_acme_external_account_binding
        DeleteAcmeExternalAccountBinding.build(context)
      when :delete_certificate
        DeleteCertificate.build(context)
      when :describe_acme_account
        DescribeAcmeAccount.build(context)
      when :describe_acme_domain_validation
        DescribeAcmeDomainValidation.build(context)
      when :describe_acme_endpoint
        DescribeAcmeEndpoint.build(context)
      when :describe_acme_external_account_binding
        DescribeAcmeExternalAccountBinding.build(context)
      when :describe_certificate
        DescribeCertificate.build(context)
      when :export_certificate
        ExportCertificate.build(context)
      when :get_account_configuration
        GetAccountConfiguration.build(context)
      when :get_acme_external_account_binding_credentials
        GetAcmeExternalAccountBindingCredentials.build(context)
      when :get_certificate
        GetCertificate.build(context)
      when :import_certificate
        ImportCertificate.build(context)
      when :list_acme_accounts
        ListAcmeAccounts.build(context)
      when :list_acme_domain_validations
        ListAcmeDomainValidations.build(context)
      when :list_acme_endpoints
        ListAcmeEndpoints.build(context)
      when :list_acme_external_account_bindings
        ListAcmeExternalAccountBindings.build(context)
      when :list_certificate_domain_validations
        ListCertificateDomainValidations.build(context)
      when :list_certificates
        ListCertificates.build(context)
      when :list_tags_for_certificate
        ListTagsForCertificate.build(context)
      when :list_tags_for_resource
        ListTagsForResource.build(context)
      when :put_account_configuration
        PutAccountConfiguration.build(context)
      when :remove_tags_from_certificate
        RemoveTagsFromCertificate.build(context)
      when :renew_certificate
        RenewCertificate.build(context)
      when :request_certificate
        RequestCertificate.build(context)
      when :resend_validation_email
        ResendValidationEmail.build(context)
      when :revoke_acme_account
        RevokeAcmeAccount.build(context)
      when :revoke_acme_external_account_binding
        RevokeAcmeExternalAccountBinding.build(context)
      when :revoke_certificate
        RevokeCertificate.build(context)
      when :search_certificates
        SearchCertificates.build(context)
      when :tag_resource
        TagResource.build(context)
      when :untag_resource
        UntagResource.build(context)
      when :update_acme_domain_validation
        UpdateAcmeDomainValidation.build(context)
      when :update_acme_endpoint
        UpdateAcmeEndpoint.build(context)
      when :update_certificate_options
        UpdateCertificateOptions.build(context)
      else
        Aws::ACM::EndpointParameters.create(context.config)
      end
    end
  end
end
