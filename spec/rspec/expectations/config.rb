require 'opal/progress_json_formatter' # verify case uses this

RSpec::configure do |config|
  config.color = true

  config.include FormattingSupport
  config.include RSpecHelpers

  config.expect_with :rspec do |expectations|
    $default_expectation_syntax = expectations.syntax
    expectations.syntax = :expect
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  #config.full_description = 'RSpec::Matchers once required includes itself in Minitest::Test'
end
