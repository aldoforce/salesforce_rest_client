# WeWork REST client

This is the REST client for testing the different custom REST end points.

## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org), [Bundler](http://bundler.io) installed.

Foreman:
```sh
bundle
foreman start
```

Command line:
```sh
bundle
export $(cat .env | xargs)
ruby rest_tour_test
```

## Configuration and local environment variables
If you are running with foreman, you will need to create ".env" file in the same folder you have your app's Procfile defining the following variables:

- WEWORK_LOGIN_URL="test.salesforce.com"
- WEWORK_SF_USERNAME="sf_username@domain"
- WEWORK_SF_PASSWORD="sf_password"
- WEWORK_SF_TOKEN="sf_token"
- WEWORK_SF_CLIENT_ID="connected app id"
- WEWORK_SF_CLIENT_SECRET="connected app secret"

If you don't have an ".env" file, please make sure the above configurations are defined as environment variables.
