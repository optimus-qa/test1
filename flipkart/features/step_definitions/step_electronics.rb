require 'watir-webdriver'
require 'webrat'

Given /^I navigate to flipkart site$/ do
  #sleep(5)
  @browser = Watir::Browser.new
  @browser.goto "http://www.flipkart.com/"
end

When /^I keep my mouse pointer over electronics$/ do
  @browser.span(:text => 'Electronics').click
end

When /^click laptops$/ do
  @browser.div(:id => 'submenu_electronics').link(:text => 'Laptops').click
end

Then /^I select the Brand and Price Range$/ do
  @browser.link(:title => 'Dell').click
  @browser.checkbox(:value => 'facets.price_range%5B%5D=Rs.+20001+-+Rs.+30000').click
end

When /^I add laptops for comparison$/ do
 #@browser = Watir::Browser.new
 #@browser.goto "http://www.flipkart.com/laptops/dell~brand/pr?sid=6bo,b5g&otracker=nmenu_sub_electronics_0_Dell"
 @browser.checkbox(:id => 'COMDW2KBKFYEXYKX').click
 @browser.checkbox(:id => 'COMDHJVNHHPUY9JS').click
 @browser.checkbox(:id => 'COMDXDDYMKDBKGA6').click
 @browser.checkbox(:id => 'COMDXDDYNPYPHHUR').click
end

Then /^comparison page pops up$/ do
 @browser.span(:class => 'btn btn-blue compare-button').click
end

When /^I Buy a laptop$/ do
  @browser.span(:class => 'price').button(:class => 'btn btn-orange tmargin5').click
end

When /^enter the fields$/ do
  pending # express the regexp above with the code you wish you had
end

