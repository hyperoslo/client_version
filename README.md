# Client Version
[![Gem Version](https://img.shields.io/gem/v/client_version.svg?style=flat)](https://rubygems.org/gems/client_version)
[![Build Status](https://img.shields.io/travis/hyperoslo/client-version.svg?style=flat)](https://travis-ci.org/hyperoslo/client-version)
[![Code Climate](https://img.shields.io/codeclimate/github/hyperoslo/client-version.svg?style=flat)](https://codeclimate.com/github/hyperoslo/client-version)
[![Coverage Status](https://img.shields.io/coveralls/hyperoslo/client-version.svg?style=flat)](https://coveralls.io/r/hyperoslo/client-version)
[![Join the chat at https://gitter.im/hyperoslo/client-version](https://badges.gitter.im/hyperoslo/client-version.svg)](https://gitter.im/hyperoslo/client-version?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

If you're building an API, it can be really helpful to be able to force your
clients to upgrade to the latest version. This is Rack middleware that simply
adds a `Client-Version` header to every response with the value of the
`CLIENT_VERSION` environment variable. Your clients can use it to determine
whether they should force the user to upgrade to the latest version.

## Installation

You know the drill:

```ruby
# Gemfile
gem 'client_version'
```

```bash
$ bundle install
```

## Configuration

If you're using Rails, you're all set; we've hooked into your middleware stack
for you. Otherwise just add `ClientVersion` to your middleware stack.

## Hyper loves you

[Hyper] made this. We're a bunch of folks who love building things. You should
[tweet us] if you can't get it to work. In fact, you should tweet us anyway.
If you're using Facebook Messenger, we probably want to [hire you].

[Hyper]: https://github.com/hyperoslo
[tweet us]: http://twitter.com/hyperoslo
[hire you]: http://www.hyper.no/jobs/engineers
