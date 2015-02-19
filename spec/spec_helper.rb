require 'rubygems'
require 'bundler/setup'

require 'nearest_time_zone'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end
