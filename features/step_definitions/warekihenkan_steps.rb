Given /^There is a initial data$/ do
  FactoryGirl.create(:year)
end

When /^I am in top page$/ do
  visit '/'
end

When /^I am in about page$/ do
  visit '/about'
end

When /^I am in contact page$/ do
  visit '/contact'
end

When /^I fill in the year "([^"]*)"$/ do |input|
  fill_in('q', with: input)
  click_button('変換')
end

Then /^I should see the page title "([^"]*)"$/ do |page_title|
  page.should have_title(page_title)
end

Then /^I should see the page header$/ do
  page.should have_selector('nav.navbar')
end

Then /^I should see the page footer$/ do
  page.should have_selector('footer')
end

Then /^I should see brand name$/ do
  page.should have_selector('a.navbar-brand')
end

Then /^I should see the copyright$/ do
  page.should have_content('Copyright')
end

Then /^I should see the contents "([^"]*)"$/ do |contents|
  page.should have_content(contents)
end

Then /^I should see link to "([^"]*)"$/ do |link_target|
  page.should have_selector('a', text: link_target)
end

Then /^I should see the site title "([^"]*)"$/ do |site_title|
  page.should have_selector('h1', text: site_title)
end

Then /^I should see the result "([^"]*)"$/ do |result|
  page.should have_content(result)
end
