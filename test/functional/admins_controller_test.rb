require 'test_helper'

class AdminsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Admin.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Admin.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Admin.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_url(assigns(:admin))
  end
  
  def test_edit
    get :edit, :id => Admin.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Admin.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Admin.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Admin.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Admin.first
    assert_redirected_to admin_url(assigns(:admin))
  end
  
  def test_destroy
    admin = Admin.first
    delete :destroy, :id => admin
    assert_redirected_to admins_url
    assert !Admin.exists?(admin.id)
  end
end
