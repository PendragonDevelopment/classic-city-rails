# New and awesome gems

- Paperclip: file uploads
    + Images, audio, video, docs
- SimpleForm, Nested Forms: form helpers
- Thin, Puma, Unicorn: servers
    + Thin: Rack-based, multiple servers to handle concurrency
    + Puma: Multiple threads to handle concurrency, small memory footprint
    + Unicorn: Handles load balancing and restarting workers on its own
    + WEBrick: Basic server that is SLOW
    + All can be used in conjuction with Apache/Phusion Passenger or nginx
- Annotate: Route and Model enhancers
- BetterErrors: exactly what it sounds like.
- Pry: better debugging

# Testing

- What are we supposed to test?
- TDD: test driven development
- Red::Green::Refactor
- How we test - Thoughtbot: http://robots.thoughtbot.com/how-we-test-rails-applications
- Why We Don't Write Tests: https://whatdoitest.com/why-we-dont-write-tests
- Writing Maintainable Tests: http://www.littlelines.com/blog/2013/12/17/a-guide-for-writing-maintainable-rails-tests/
- We could spend an entire 12 weeks learning about testing - it's another DSL

## Testing frameworks

- Unit test
- Mini test
- RSpec
- FactoryGirl
- Capybara
- Cucumber

### The least you should know:

- How to write a test
- What is a good test vs what is an inconclusive test
- How writing tests help you see the big picture while designing small systems in that scope