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

Before("@sqs") do

  @sqs = SQS.new
  @sqs_client = @sqs.client
  @created_queues = []

end

After("@sqs") do

  @created_queues.each do |queue|
    begin
      queue.delete
    rescue SQS::Errors::NonExistentQueue
    end
  end

end
