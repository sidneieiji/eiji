require 'rubygems'
require 'rspec'
require 'httparty'
require 'pry'

#Syncronization related settings
module Helpers
  def without_resynchronize
    page.driver.options[:resynchronize] = false
    yield
    page.driver.options[:resynchronize] = true
  end
end
