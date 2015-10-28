rspec_filter 'fuzzy_matcher' do
  # ArgumentErrors/arity don't work right w/ Opal here
  filter('RSpec::Support::FuzzyMatcher when given an object whose implementation of `==` raises an ArgumentError surfaces the error').unless { at_least_opal_0_9? }
end
