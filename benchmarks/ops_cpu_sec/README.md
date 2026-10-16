# Ops/CPU-sec benchmark

Measures how many complete SDK operations the client performs per second of
process CPU time (`ops / CPU-sec`, higher is better) for the 71 shared serde
benchmark cases (22 awsJson1_0, 19 rpcv2Cbor, 10 awsQuery, 10 restJson1,
10 restXml).

Each operation is a real `Client#<operation>` call through the full handler
stack: param conversion and validation, protocol build, endpoint resolution
(the service's endpoint rule set), SigV4 signing, retry and checksum
handlers, response parsing and output structs. Only the HTTP transport is
replaced: `StubSendHandler` takes the place of the Net::HTTP send handler,
streams the request body like the real handler, and returns the case's canned
status, headers and body bytes. Nothing touches a socket.

## Layout

| Path | Purpose |
|---|---|
| `ops_cpu_sec.rb` | Entry point: options, warmup, timed loop, report |
| `lib/stub_transport.rb` | `StubSendHandler`, the in-process replacement for the Net::HTTP send handler |
| `lib/cases.rb` | Loads the fixtures and builds one client per case |
| `lib/validator.rb`, `lib/validator/` | `--validate`: checks every case against the model before timing |
| `fixtures/cases.json` | The 71 cases (generated) |
| `fixtures/models/<Service>/` | `api-2.json` and `endpoint-rule-set-1.json` of the five benchmark services (generated) |
| `generation/generate.rb` | Regenerates `fixtures/` from the Smithy model |
| `generation/smithy_ast/` | Produces the model's Smithy JSON AST with the Smithy reference implementation |
| `Gemfile`, `Gemfile.lock` | Pinned non-SDK gems (JSON/XML engines, code generator dependencies) |

The service clients are code-generated in memory at startup by this
checkout's `aws-sdk-code-generator`, and the SDK gems load from this checkout
(`gems/*/lib`), so two checkouts with identical `benchmarks/ops_cpu_sec`
directories differ only in SDK code.

## Running

From the repository root:

```sh
export BUNDLE_GEMFILE=benchmarks/ops_cpu_sec/Gemfile
bundle install
bundle exec ruby benchmarks/ops_cpu_sec/ops_cpu_sec.rb --list       # 71 ids
bundle exec ruby benchmarks/ops_cpu_sec/ops_cpu_sec.rb --validate   # must print 71/71
bundle exec ruby benchmarks/ops_cpu_sec/ops_cpu_sec.rb              # full run
```

Options: `--filter REGEX` (exits with status 2 if no case matches), `--warmup N` (default 1000),
`--min-iterations N` (default 50000), `--min-cpu-seconds S` (default 5),
`--json FILE`.

Per case: build the client (not timed), run the warmup iterations, `GC.start`,
then call the operation until 50,000 iterations or 5 s of process CPU have
passed, whichever comes first (checked every 100 iterations).
CPU time is `Process.clock_gettime(Process::CLOCK_PROCESS_CPUTIME_ID)`
(user + system, all threads). Each output line has the id, iterations, CPU
seconds, wall seconds, ops/CPU-sec and the CPU/wall ratio. The end of the run
prints the mean CPU/wall ratio and a cross-check of total CPU against
`Process.times`.

Compare builds with separate processes, alternating between them (for example
baseline, current, baseline, current, ...), and use the median per case.

## Validation

`--validate` calls each case twice and fails unless, on both calls:

* the request is signed (SigV4 `Authorization` for region `us-east-1`) and
  sent to the host from the endpoint rule set, with the model's method and
  URI;
* request cases send exactly the model's params: the decoded JSON/CBOR body
  equals the params, every query param value is in the form body, and every
  REST param is bound to its URI label, header, query string or payload (the
  full payload is sent on every call);
* response cases return the model's canned response, and the parsed output
  contains every value of the response body and of the output-bound headers,
  and no other values.

## Regenerating the inputs

```sh
benchmarks/ops_cpu_sec/generation/smithy_ast/build_ast.sh <models>/model /tmp/model-ast.json
ruby benchmarks/ops_cpu_sec/generation/generate.rb --ast /tmp/model-ast.json --source-apis <c2j-apis-dir>
```

`--source-apis` is a directory of `<service>/1999-12-31/api-2.json` C2J models
of the five services (the `apis/*-data-plane` models on the `perf-testing`
branch). `generate.rb` writes `fixtures/`; it keeps the operations each
Smithy service binds that have protocol tests and applies the Smithy
service's signing name, target prefix and endpoint rule set.

Model conventions that the harness applies:

* blob payloads (object bodies) and CBOR response bodies are base64 in the
  model and are decoded; other blobs (attribute value `B`) are raw strings;
* the model's rpcv2Cbor request tests give URI `/`; the harness expects the
  protocol's `/service/<service>/operation/<operation>` path;
* request cases get the protocol's smallest valid 200 response, and response
  cases send the smallest valid request (the model has no request params for
  them).

`restJson1_GetObjectStreaming` is tagged in the model but is not one of the 71
cases.
