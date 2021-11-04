# frozen_string_literal: true

module Aws
  module S3
    # @api private
    class AccessPointARN < Aws::ARN
      def initialize(options)
        super(options)
        @type, @access_point_name, @extra = @resource.split(/[:,\/]/)
      end

      def support_dualstack?
        true
      end

      def support_fips?
        true
      end

      def validate_arn!
        unless @service == 's3'
          raise ArgumentError, 'Must provide a valid S3 Access Point ARN.'
        end

        if @region.empty? || @account_id.empty?
          raise ArgumentError,
                'S3 Access Point ARNs must contain both a region '\
                'and an account ID.'
        end

        if @region.include?('-fips') || @region.include?('fips-')
          raise ArgumentError,
                'S3 Access Point ARNs cannot contain a FIPS region.'
        end

        if @type != 'accesspoint'
          raise ArgumentError, 'Invalid ARN, resource format is not correct.'
        end

        if @access_point_name.nil? || @access_point_name.empty?
          raise ArgumentError, 'Missing ARN Access Point name.'
        end

        if @extra
          raise ArgumentError,
                'ARN Access Point resource must be a single value.'
        end

        unless Seahorse::Util.host_label?(
          "#{@access_point_name}-#{@account_id}"
        )
          raise ArgumentError,
                "#{@access_point_name}-#{@account_id} is not a valid "\
                'host label.'
        end
      end

      def host_url(region, fips = false, dualstack = false, custom_endpoint = nil)
        pfx = "#{@access_point_name}-#{@account_id}"
        if custom_endpoint
          "#{pfx}.#{custom_endpoint}"
        else
          sfx = Aws::Partitions::EndpointProvider.dns_suffix_for(region, 's3')
          "#{pfx}.s3-accesspoint#{'-fips' if fips}#{'.dualstack' if dualstack}.#{region}.#{sfx}"
        end
      end
    end
  end
end
