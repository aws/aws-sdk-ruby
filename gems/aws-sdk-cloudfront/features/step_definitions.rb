# frozen_string_literal: true

Before("@cloudfront") do
  @client = Aws::CloudFront::Client.new
end

After("@cloudfront") do
end

Given(/^I create a disabled distribution$/) do
  params = {
    distribution_config: {
      caller_reference: Time.now.to_i.to_s,
      aliases: {
        quantity: 0
      },
      default_root_object: '',
      origins: {
        quantity: 1,
        items: [
          {
            id: 'Custom-mywebsite',
            domain_name: 'mywebsite.io',
            custom_origin_config: {
              http_port: 80,
              https_port: 443,
              origin_protocol_policy: 'http-only'
            }
          }
        ]
      },
      default_cache_behavior: {
        target_origin_id: 'Custom-mywebsite',
        forwarded_values: {
          query_string: false,
          cookies: { forward: 'none' },
          headers: { quantity: 0 }
        },
        trusted_signers: {
          enabled: false,
          quantity: 0
        },
        viewer_protocol_policy: 'allow-all',
        min_ttl: 0,
        allowed_methods: {
          quantity: 2,
          items: %w(GET HEAD)
        },
        smooth_streaming: false
      },
      cache_behaviors: { quantity: 0 },
      custom_error_responses: { quantity: 0 },
      comment: 'mywebsite-distribution',
      logging: {
        enabled: false,
        include_cookies: false,
        bucket: '',
        prefix: ''
      },
      price_class: 'PriceClass_100',
      enabled: false,
      viewer_certificate: {
        cloud_front_default_certificate: true,
        ssl_support_method: 'vip'
      },
      restrictions: {
        geo_restriction: {
          restriction_type: 'none',
          quantity: 0
        }
      }
    }
  }
  response = @client.create_distribution(params)
  @distribution = response.distribution
end

When(/^I get the distribution configuration$/) do
  response = @client.get_distribution(id: @distribution[:id])
  @etag = response.etag
  @distribution = response.distribution
end

Then(/^I can update the distribution configuration$/) do
  response = @client.update_distribution(
    id: @distribution[:id],
    distribution_config: @distribution[:distribution_config],
    if_match: @etag
  )
  @etag = response.etag
  @distribution = response.distribution
end

Then(/^I can delete the distribution$/) do
  # This test requires the distribution status to be complete, which can take
  # quite a while, polling for up to 20 minutes
  eventually(upto: 60 * 20) do
    @client.delete_distribution(
      id: @distribution[:id],
      if_match: @etag
    )
  end
end
