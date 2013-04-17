require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase

	should belong_to(:user)
	should belong_to(:friend)


	test "should create a friendship works without raising an exception" do
	assert_nothing_raised do 
		UserFriendship.create user: users(:vinod), friend: users(:sans)
		
		end
	end
	test "that creating friends using friend_id and user_id" do
		UserFriendship.create user_id: users(:vinod).id,friend: users(:sans)
		users(:vinod).friends.include?(users(:sans))
  end
end
