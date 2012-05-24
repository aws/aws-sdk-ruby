require 'aws/core'
require 'aws/emr/config'

module AWS
  class EMR

    AWS.register_autoloads(self) do
      autoload :Client,     'client'
      autoload :Errors,     'errors'
      autoload :Request,    'request'
    end

    include Core::ServiceInterface

  end
end
