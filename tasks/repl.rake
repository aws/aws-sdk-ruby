# frozen_string_literal: true

# TODO: delete this after fixing:
# /Users/mamuller/workplace/aws-sdk-ruby-v4/gems/aws-sdk-datapipeline/lib/aws-sdk-datapipeline/types.rb:220: warning: redefining 'object_id' may cause serious problems
# /Users/mamuller/workplace/aws-sdk-ruby-v4/gems/aws-sdk-pinpointsmsvoice/lib/aws-sdk-pinpointsmsvoice/schema.rb:49: warning: already initialized constant Aws::PinpointSMSVoice::Schema::String
# /Users/mamuller/workplace/aws-sdk-ruby-v4/gems/aws-sdk-pinpointsmsvoice/lib/aws-sdk-pinpointsmsvoice/schema.rb:43: warning: previous definition of String was here
task 'repl' do
  Dir['gems/*'].each do |gem_path|
    $LOAD_PATH.unshift(File.expand_path('lib', gem_path))
    require File.basename(gem_path)
  end

  require 'pry'
  Aws.pry
end
