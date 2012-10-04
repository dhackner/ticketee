require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given /^I am on (the homepage)$/ do |page_name|
  visit path_to(page_name)
end

When /^I add a new project called "(.*?)"$/ do |arg1|
  click_link "New Project"
  fill_in "Name", :with => arg1
  click_button "Create Project"
end

Then /^I should see "(.*?)"$/ do |arg1|
  has_content? arg1
end