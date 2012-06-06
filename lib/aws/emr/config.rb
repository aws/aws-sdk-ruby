AWS::Core::Configuration.module_eval do

  add_service 'EMR', 'emr', 'us-east-1.elasticmapreduce.amazonaws.com'

  add_option :key_pair
  add_option :key_pair_file

end
