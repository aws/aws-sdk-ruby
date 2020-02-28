RetryErrorsSvc = ApiHelper.sample_service

# Sets up the handler to run retry tests
# by calling either the send_handler or passed block
# :handler and :resp must be defined outside this helper
def handle(send_handler = nil, &block)
  handler.handler = send_handler || block
  handler.call(resp.context)
end

# A helper method to test Standard and Adaptive tests
# Expects a test case defined as a Hash with response and expect keys.
# response: Hash with status_code and error
# expect: delay, available_capacity, retries, calculated_rate
def handle_with_retry(test_cases)
  # Apply delay expectations first
  test_cases.each do |test_case|
    if test_case[:expect][:delay]
      expect(Kernel).to receive(:sleep).with(test_case[:expect][:delay])
    end
  end

  i = 0
  handle do |_context|
    apply_expectations(test_cases[i - 1]) if i > 0

    # Setup the next response
    setup_next_response(test_cases[i])

    i += 1
    resp
  end

  expect(i).to(
    eq(test_cases.size),
    "Wrong number of retries. Handler was called #{i} times but "\
            "#{test_cases.size} test cases were defined."
  )

  # Handle has finished called.  Apply final expectations.
  apply_expectations(test_cases[i - 1])
end

# apply the expectations from a test case
# See handle_with_retry for test case definition
def apply_expectations(test_case)
  expected = test_case[:expect]
  if expected[:available_capacity]
    expect(resp.context.config.retry_quota.instance_variable_get(:@available_capacity))
      .to eq(expected[:available_capacity])
  end
  expect(resp.context.retries).to eq(expected[:retries]) if expected[:retries]
  if expected[:calculated_rate]
    expect(resp.context.config.client_rate_limiter.instance_variable_get(:@calculated_rate))
      .to be_within(0.1).of(expected[:calculated_rate])
  end
end

def setup_next_response(test_case)
  response = test_case[:response]
  resp.context.http_response.status_code = response[:status_code]
  resp.error = response[:error]

  if response[:timestamp]
    allow(Aws::Util).to receive(:monotonic_seconds).and_return(response[:timestamp])
  end
end
