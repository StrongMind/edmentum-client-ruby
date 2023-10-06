# edmentum-client-ruby

## What?

A ruby client that works with the Edmentum 2.0 APIs. Not official - built by StrongMind when we needed to interoperate
with Edmentum systems. Built using a swagger generator and then cleaned up to be suitable for usage.

## Where?

### Links


* [API Documentation](https://app.edmentum.com/api/help/index)
* [Github Repository](https://github.com/StrongMind/edmentum-client-ruby)

### CI/CD

* [https://github.com/StrongMind/edmentum-client-ruby/actions](https://github.com/StrongMind/project/actions)

## Local Install

To use in a project:
```bundle add edmentum-client-ruby
```

To develop locally:
```git clone https://github.com/StrongMind/edmentum-client-ruby.git
cd edmentum-client-ruby
bundle install
```

## Run tests locally
Tests are minimal due to auto-generation. We might add some in the future.

Uses rspec for testing. To run tests locally, for example:
```console
rspec
```

> Code owners can be found in [CODEOWNERS file](./CODEOWNERS)
