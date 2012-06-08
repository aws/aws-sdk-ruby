AWS::Core::Configuration.module_eval do

  add_service 'EMR', 'emr', 'us-east-1.elasticmapreduce.amazonaws.com'

  add_option :emr_key_pair, nil
  add_option :emr_key_pair_file, nil

end
