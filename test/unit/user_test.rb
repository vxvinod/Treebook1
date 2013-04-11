require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "user first name validation " do
  	user=User.new
  assert !user.save
  assert !user.errors[:first_name].empty?
  end
  
  test "user last name validation " do
  	user=User.new
  assert !user.save
  assert !user.errors[:last_name].empty?
  end
test "user profile name validation " do
    user=User.new
  assert !user.save
  assert !user.errors[:profile_name].empty?
  end

  test "validate the profile_name uniqueness" do

    user = User.new

    user.profile_name="ashok1"

    
    assert !user.save
    
    assert !user.errors[:profile_name].empty?

end

test "profile name should have correct format without spaces" do
    
    user=User.new(first_name:'vinod',last_name: 'kumar',email: 'vinod3@treebook.com')
    user.password=user.password_confirmation="vinodkum123"
    user.profile_name="Ashok2"

    
    assert !user.save
    assert !user.errors[:profile_name].empty?
    assert  user.errors[:profile_name].include?("Must be formatted correctly.")

end

test "profile name should be have correct format" do

    user=User.new(first_name:'vinod',last_name: 'kumar',email: 'vinod3@treebook.com')
    user.password=user.password_confirmation="vinodkumar123"
    user.profile_name="vinodkumar3"
  
    assert user.valid?


  end


end
