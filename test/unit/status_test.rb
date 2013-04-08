require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  	
  	test "status should contain a content"  do

  		status=Status.new
  		assert !status.save
  		assert !status.errors[:content].empty?
  		
  	end

  	test "that status length should be atleast 2" do

  		status=Status.new
  		status.content="H"
  		assert !status.save
  		assert !status.errors[:content].empty?
  	end


  	test "status has an user_id " do

  		status=Status.new
  		status.content="Hello"
  		assert !status.save
  		assert !status.errors[:user_id].empty?
  	end


end
