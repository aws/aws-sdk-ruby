require 'aws-sdk-sqs/plugins/queue_urls'
require 'aws-sdk-sqs/plugins/md5s'

module Aws
  module SQS
    class Client
      add_plugin(Plugins::QueueUrls)
      add_plugin(Plugins::Md5s)
    end
  end
end
