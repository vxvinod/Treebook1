require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  
	test 'check login Url works for Kicking in'  do

		get '/login'
		assert_response :success
		
	end

	test 'check logout Url works for Kicking in'  do

		get '/logout'
		assert_response :redirect
		assert_redirected_to '/'
		
	end

	test 'check register Url works for Kicking in'  do

		get '/register'
		assert_response :success
		
	end


end
9