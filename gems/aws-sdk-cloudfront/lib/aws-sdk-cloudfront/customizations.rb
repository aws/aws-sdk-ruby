# frozen_string_literal: true

module Aws
  module CloudFront
    autoload :Signer, 'aws-sdk-cloudfront/signer'
    autoload :UrlSigner, 'aws-sdk-cloudfront/url_signer'
    autoload :CookieSigner, 'aws-sdk-cloudfront/cookie_signer'
  end
end
