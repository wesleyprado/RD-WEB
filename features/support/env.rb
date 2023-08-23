require 'selenium-webdriver'
require 'cucumber'
require 'roo'
require 'pry'

ENVIRONMENT = ENV['ENVIRONMENT']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}.yml")

DATA = YAML.load_file(File.dirname(__FILE__) + "/data/#{ENVIRONMENT}/data.yml")

