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
export $(cat .env | xargs)
ruby rest_tour_test
```

## Configuration and local environment variables
If you are running with foreman, you will need to create ".env" file in the same folder you have your app's Procfile defining the following variables:

- LOGIN_URL="test.salesforce.com"
- SF_USERNAME="sf_username@domain"
- SF_PASSWORD="sf_password"
- SF_TOKEN="sf_token"
- SF_CLIENT_ID="connected app id"
- SF_CLIENT_SECRET="connected app secret"

If you don't have an ".env" file, please make sure the above configurations are defined as environment variables.

