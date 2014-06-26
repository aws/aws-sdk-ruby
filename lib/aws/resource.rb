require 'aws/resource/base'
require 'aws/resource/batch'
require 'aws/resource/builder'
require 'aws/resource/builder_sources'
require 'aws/resource/collection'
require 'aws/resource/definition'
require 'aws/resource/errors'
require 'aws/resource/operations'
require 'aws/resource/request'
require 'aws/resource/request_params'
require 'aws/resource/source'
require 'aws/resource/validator'

module Aws
  module Resource

    autoload :Documenter, 'aws/resource/documenter'

    # @see Base.define
    # @api private
    def self.define(*args)
      Base.define(*args)
    end

  end
end
