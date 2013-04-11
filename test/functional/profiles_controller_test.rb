require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: users(:vinod).profile_name
    assert_response :success

    assert_template 'profiles/show'
  end
  
  test "render 404 profile does not exist" do
  	get :show, id: "doesn't exist"
  	assert_response :not_found
	end


	test "viewing the variables are assigned to successful profile viewing" do
		get :show, id: users(:vinod).profile_name
		assert assigns(:user)
    assert_not_empty assigns(:statuses)
	end

  test "only show the correct user's status" do

    get :show,id: users(:vinod).profile_name
    assigns(:statuses).each do |status| 
      assert_equal users(:vinod),status.user
    end
  end

end
