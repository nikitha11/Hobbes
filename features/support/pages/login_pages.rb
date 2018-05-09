class Login_page
	include PageObject
  page_url Common.get_url("home")
	text_field :email, :id =>"inputEmail"
	text_field :password, :id =>"inputPassword"
	button :signin, :xpath =>"//*[@type='submit']"
	

	def logedin
		sleep 2
		
end
end
