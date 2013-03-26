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

When /^I send email to a verified email address$/ do

  begin
    @ses.send_email(
      :subject => 'A Sample Email',
      :from => 'noreply@example.com',
      :to => 'noreply@example.com',
      :body_text => 'sample text')
  rescue => e
    e.message.should match(/Email address is not verified/)
  end

end

When /^I send a raw email like:$/ do |raw_email|
  begin
    @ses.send_raw_email(raw_email)
  rescue => e
    e.message.should match(/Email address is not verified/)
  end
end

When /^I send a raw email to "([^"]*)" from "([^"]*)" like:$/ do |to,from,raw|
  begin
    @ses.send_raw_email(raw, :to => to, :from => from)
  rescue => e
    e.message.should match(/Email address is not verified/)
  end
end
