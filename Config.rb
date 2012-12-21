#!/usr/bin/env ruby

profile :cov do

  #
  # Setup QED.
  #
  config :qed do
    require 'simplecov'
    SimpleCov.start do
      coverage_dir 'log/coverage'
      #add_group "RSpec", "lib/assay/rspec.rb"
    end
  end

end

