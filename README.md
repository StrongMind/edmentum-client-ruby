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
```shell
bundle add edmentum-client
```

To develop locally:
```shell
git clone https://github.com/StrongMind/edmentum-client-ruby.git
cd edmentum-client
bundle install
```

## Run tests locally
Tests are minimal due to auto-generation. We might add some in the future.

Uses rspec for testing. To run tests locally, for example:
```console
rspec
```

> Code owners can be found in [CODEOWNERS file](./CODEOWNERS)

## Usage
```ruby
require 'edmentum_client'
ec = ::EdmentumClient.configure do |config|
config.username = "mark.ng@strongmind.com@PRIMA" # Notice the PRIMA...this is the Account name
config.password = "YOUR REAL PASSWORD HERE"
config.client_id = "YOUR REAL ID HERE"
config.client_secret = "YOUR REAL SECRET HERE"
config.debugging = true
config.api_key['Authorization'] = ::EdmentumClient::Authentication.token(config)
end

aa = ::EdmentumClient::V20AdministrationCenterApi.new
aa.users_controller_get_users(100)
```