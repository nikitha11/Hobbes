# Given("I am on home page") do
# 	visit Login_page
# 	sleep 1
# end

# When("I enter all the valid credentials") do
# 	on Login_page do |login|
# 		login.mailadrs = Common.man_login('mailid')
# 		sleep 2
# 		login.password = Common.man_login('prfctpwd')


# end

# Then("I should see home page after clicking on log me in button") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
# Given("I am on home page") do
# 	visit Login_page
# end

# When("I enter all the valid Username and Password") do
# 	on Login_page do |login|
# 		login.username = Common.man_login('username')
# 		login.password = Common.man_login('prfctpwd')
# 		login.Login
# 	end
# end

# # Then("I should see home page after clicking on log me in button") do
# # 	on Login_page do |login|
# # 		login.display
# # 	end
# # end
# Then("I should see {string}") do |var|
#   on Login_page do |login|
#   	login.display
#   end
# end
Given("I am on Login page") do
  visit Login_page
end

When("I enter the Valid Email and Password") do
 on Login_page do |login|
		login.email = Common.man_login('Email')
		login.password = Common.man_login('Password')
		login.signin
	end 
end

Then("I should see the home page") do
	# on Login_page do |login|
		a = @browser.find_element(xpath: "//div/h1").text
		  puts "#{a}"
		  b = "Welcome to Hobbes!"
		if a == b
			puts "#{a}"
		else
			raise "login not successful"
		end
	# end
end

# Then("I should see {string}") do |var|
# 	on Login_page do |login|
# 		login.logedin
# 	end
# end


