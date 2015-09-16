$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'omniauth-onvedeo'
require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start
