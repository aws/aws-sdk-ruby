# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

Before("@elastic_transcoder") do

  @elastic_transcoder = AWS::ElasticTranscoder.new
  @client = @elastic_transcoder_client = @elastic_transcoder.client

  @transcoder_pipeline_ids = []

end

After("@elastic_transcoder") do

  @transcoder_pipeline_ids.each do |pipeline_id|
    @elastic_transcoder_client.delete_pipeline(:id => pipeline_id)
  end

end
