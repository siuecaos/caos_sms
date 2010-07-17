require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Users.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Users.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to users_url
  end
end
