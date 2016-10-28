$:.unshift(File.expand_path('../../lib',  __FILE__))
$:.unshift(File.expand_path('../../../aws-sigv2/lib',  __FILE__))
$:.unshift(File.expand_path('../../../aws-sigv4/lib',  __FILE__))

require 'aws-sdk-core'

require_relative 'features_helper'
