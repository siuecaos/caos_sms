require 'test_helper'

class SignupsControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Signup.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Signup.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to root_url
  end
end
