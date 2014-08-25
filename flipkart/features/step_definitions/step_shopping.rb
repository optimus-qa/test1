require 'watir-webdriver'
require 'webrat'

Given /^I navigate to flipkart$/ do
  @browser = Watir::Browser.new
  @browser.goto "http://www.flipkart.com/"
end

Given /^Login to my account$/ do
  loginButton = @browser.link(:class, 'no-border js-login login-required')
  loginButton.click
end

When /^I enter my username and password$/ do
  nameField = @browser.text_field(:id,'login_email_id')
  passwordField = @browser.text_field(:id, 'login_password')
  login1Button = @browser.form(:id => 'login-form').button(:value, 'Login')
  nameField.set 'div_paris@yahoo.com'
  passwordField.set 'divya'
  login1Button.click
  sleep(5)

  
end

Then /^my home page should display$/ do
  
end

When /^I enter (\d+) states book into the serch field$/ do |arg1|
  searchField = @browser.text_field(:id,'fk-top-search-box')
  searchButton = @browser.button(:class,'search-bar-submit fk-font-13 fk-font-bold')
  searchField.set '2 states book'
  searchButton.click
end

Then /^the page displaying the book should be present$/ do
@browser.link(:text,'2 States : The Story Of My Marriage (English) (Paperback)').click
@browser.button(:class,'lmargin5 btn btn-orange btn-buy-big fk-buy-now fkg-pp-buy-btn').click
# bookButton.click
end

Then /^Cart page is dispalyed$/ do
sleep(4)  
@browser.link(:text => /PLACE ORDER/).click
 
end

Then /^Order summary page is dispalyed$/ do
  sleep(4)
@browser.link(:text => /CONTINUE/).click
end

When /^I select credit card$/ do
  sleep(3)
  @browser.span(:text => /Credit Card/).click
end

When /^enter an invalid card number$/ do
  sleep(5)
  #numberField = @browser.div(:class => 'card-form-wrap-inn card-face front-face').text_field(:id ,'card-no')
#numberField = @browser.frame(:id, 'co_fk_pg').text_field(:name ,'pan')
@browser.frame(:id, 'co_fk_pg').div(:class => 'card-form-wrap-inn card-face front-face').text_field(:id ,'card-no').when_present.set '1234567890'
  

#expirymField = @browser.frame(:id, 'co_fk_pg').text_field(:id, 'exp-dt-mt')
  #expiryyField = @browser.text_field(:id, 'exp-dt-yr')
  #ccvField = @browser.text_field(:id,'cvv-no')
  #nameField = @browser.text_field(:id,'card-name')
  #payButton = @browser.button(:text => /PAY/)
  #numberField.set '1234567890'
  #expirymField.set '9'
  #expiryyField.set '2013'
  #ccvField.set '123'
  #nameField 'Divya Arora'
  #payButton.click
  sleep(5)
end

Then /^an error message is displayed$/ do
  
end

