# Client Version

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
