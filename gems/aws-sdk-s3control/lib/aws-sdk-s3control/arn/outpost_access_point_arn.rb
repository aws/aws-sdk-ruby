# frozen_string_literal: true

module Aws
  module S3Control
    # @api private
    class OutpostAccessPointARN < Aws::ARN
      def initialize(options)
        super(options)
        @type, @outpost_id, @subtype, @access_point_name, @extra =
          @resource.split(/[:,\/]/)
      end

      attr_reader :outpost_id, :access_point_name

      # After expanding this ARN, this value will be used to repopulate
      # input so that URIs do not contain ARNs
      def input_member
        access_point_name
      end

      def support_dualstack?
        false
      end

      def support_fips?
        true
      end

      def validate_arn!
        unless @service == 's3-outposts'
          raise ArgumentError, 'Must provide a valid S3 Outpost Access '\
                               'Point ARN.'
        end

        if @region.empty? || @account_id.empty?
          raise ArgumentError,
                'S3 Outpost Access Point ARNs must contain both a region '\
                'and an Account ID.'
        end

        if @region.include?('-fips') || @region.include?('fips-')
          raise ArgumentError,
                'S3 Outpost Access Point ARNs cannot contain a FIPS region.'
        end

        if @type != 'outpost' && @subtype != 'accesspoint'
          raise ArgumentError, 'Invalid ARN, resource format is not correct.'
        end

        if @outpost_id.nil? || @outpost_id.empty?
          raise ArgumentError, 'Missing ARN Outpost ID.'
        end

        if @access_point_name.nil? || @access_point_name.empty?
          raise ArgumentError, 'Missing ARN Access Point name.'
        end

        if @extra
          raise ArgumentError,
                'ARN accesspoint resource must be a single value.'
        end

        unless Seahorse::Util.host_label?(
          "#{@access_point_name}-#{@account_id}"
        )
          raise ArgumentError,
                "#{@access_point_name}-#{@account_id} is not a valid "\
                'host label.'
        end

        unless Seahorse::Util.host_label?(@outpost_id)
          raise ArgumentError, "#{@outpost_id} is not a valid host label."
        end
      end

      # Outpost Access Point ARNs currently do not support dualstack
      def host_url(region, fips = false, _dualstack = false, custom_endpoint = nil)
        if custom_endpoint
          custom_endpoint
        else
          "s3-outposts#{'-fips' if fips}.#{region}.amazonaws.com"
        end
      end
    end
  end
end
