require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

# Single-line step scoper
When /^(.*) within ([^:]+)$/ do |step_name, parent|
  with_scope(parent) { step step_name }
end

# Multi-line step scoper
When /^(.*) within ([^:]+):$/ do |step_name, parent, table_or_string|
  with_scope(parent) { step "#{step_name}:", table_or_string }
end

Given /^I am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^I add a new project called "(.*?)"$/ do |project_name|
  click_link "New Project"
  fill_in "Name", :with => project_name
  click_button "Create Project"
end

Then /^I should( not)? see "([^"]*?)"$/ do |negated, text|
  assert_equal page.has_content?(text), negated.nil?
end

Then /^I should be on (.+)$/ do |page_name|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end

When /^I follow "(.*?)"$/ do |link|
  click_link link
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |field, value|
  fill_in field, :with => value
end

When /^I press "(.*?)"$/ do |button|
  click_button button
end

When /^I check "(.*?)"$/ do |box|
  check box
end
