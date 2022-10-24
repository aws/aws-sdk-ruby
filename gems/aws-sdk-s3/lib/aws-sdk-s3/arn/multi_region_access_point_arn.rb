# frozen_string_literal: true

module Aws
  module S3
    # @api private
    class MultiRegionAccessPointARN < Aws::ARN
      def initialize(options)
        super(options)
        @type, @mrap_alias, @extra = @resource.split(/[:,\/]/)
      end

      attr_reader :mrap_alias

      def support_dualstack?
        false
      end

      def support_fips?
        false
      end

      def validate_arn!
        unless @service == 's3'
          raise ArgumentError,
                'Must provide a valid S3 multi-region access point ARN.'
        end

        if @account_id.empty?
          raise ArgumentError,
                'S3 multi-region access point ARNs must contain '\
                'an account id.'
        end

        unless @region.empty?
          raise ArgumentError,
                'Multi-region access points must have an empty region.'
        end

        if @type != 'accesspoint'
          raise ArgumentError, 'Invalid ARN, resource format is not correct'
        end

        if @mrap_alias.nil? || @mrap_alias.empty?
          raise ArgumentError, 'Missing ARN multi-region access points alias.'
        end

        unless @mrap_alias.split('.').all? { |s| Seahorse::Util.host_label?(s) }
          raise ArgumentError, "#{@mrap_alias} is not a valid "\
                'multi region access point alias.'
        end

        if @extra
          raise ArgumentError,
                'ARN access point resource must be a single value.'
        end
      end

      def host_url(_region, _fips = false, _dualstack = false, custom_endpoint = nil)
        if custom_endpoint
          "#{@mrap_alias}.#{custom_endpoint}"
        else
          sfx = Aws::Partitions::EndpointProvider.dns_suffix_for(@partition, 's3')
          "#{@mrap_alias}.accesspoint.s3-global.#{sfx}"
        end
      end
    end
  end
end
