
# resp must be defined outside this helper as a Response object
def handle(send_handler = nil, &block)
  handler.handler = send_handler || block
  handler.call(resp.context)
end

# A helper method to test Standard and Adaptive tests
def run_retry(test_cases)
  # Apply delay expectations first
  test_cases.each do |test_case|
    if test_case[:expect][:delay]
      expect(Kernel).to receive(:sleep).with(test_case[:expect][:delay])
    end
  end

  i = 0
  handle do |_context|
    if i > 0
      # Apply expectations to previous call
      expected = test_cases[i - 1][:expect]
      if expected[:available_capacity]
        expect(resp.context.config.retry_quota.available_capacity)
          .to eq(expected[:available_capacity])
      end
      if expected[:retries]
        expect(resp.context.retries).to eq(expected[:retries])
      end
      if expected[:calculated_rate]
        expect(resp.context.config.client_rate_limiter.instance_variable_get(:@calculated_rate))
          .to be_within(0.1).of(expected[:calculated_rate])
      end
    end

    # Setup the next response
    test_case = test_cases[i]
    status_code = test_case[:response][:status_code]
    resp.context.http_response.status_code = status_code
    resp.error = test_case[:error]

    if test_case[:response][:timestamp]
      allow(Aws::Util).to receive(:monotonic_seconds).and_return(test_case[:response][:timestamp])
    end

    i += 1
    resp
  end

  expect(i).to(
    eq(test_cases.size),
    "Wrong number of retries. Handler was called #{i} times but "\
            "#{test_cases.size} test cases were defined."
  )

  # Handle has finished called.  Apply final expectations.
  expected = test_cases[i - 1][:expect]
  if expected[:available_capacity]
    expect(resp.context.config.retry_quota.available_capacity)
      .to eq(expected[:available_capacity])
  end
  if expected[:retries]
    expect(resp.context.retries).to eq(expected[:retries])
  end
  if expected[:calculated_rate]
    expect(resp.context.config.client_rate_limiter.instance_variable_get(:@calculated_rate))
      .to be_within(0.1).of(expected[:calculated_rate])
  end
end

def success(timestamp, calculated_rate)
  [{
     response: { status_code: 200, error: nil, timestamp: timestamp},
     expect: { calculated_rate: calculated_rate}
   }]
end

def throttle(timestamp, calculated_rate)
  [{
     response: { status_code: 429, error: nil, timestamp: timestamp},
     expect: { calculated_rate: calculated_rate}
   }]
end