# frozen_string_literal: true

# utility classes
module Aws
  module Cloudfront
    autoload :Signer, 'aws-sdk-cloudfront/signer'
    autoload :UrlSigner, 'aws-sdk-cloudfront/url_signer'
    autoload :CookieSigner, 'aws-sdk-cloudfront/cookie_signer'
  end
end
