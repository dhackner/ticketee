require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given /^I am on (the homepage)$/ do |page_name|
  visit path_to(page_name)
end