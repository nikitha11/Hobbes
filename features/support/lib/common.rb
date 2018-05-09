module Common

	def Common.get_url route
		YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["url"] [route] 
	end

	def Common.man_login route
		YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["login_man"] [route]	
	end
end