require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "that /login route opens login page" do
  	get '/login'
  	assert_response :success
  end

    test "that /logout route opens logout page" do
  	get '/logout'
  	assert_response :redirect
  	assert_redirected_to '/'
  end

    test "that /register route opens register page" do
  	get '/register'
  	assert_response :success
  end

  test "that a profile page works" do
  	get '/Jason'
  	assert_response :success
  end
end

