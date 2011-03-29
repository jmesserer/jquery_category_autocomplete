require 'test_helper'

class CdsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Cd.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Cd.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Cd.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to cd_url(assigns(:cd))
  end

  def test_edit
    get :edit, :id => Cd.first
    assert_template 'edit'
  end

  def test_update_invalid
    Cd.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Cd.first
    assert_template 'edit'
  end

  def test_update_valid
    Cd.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Cd.first
    assert_redirected_to cd_url(assigns(:cd))
  end

  def test_destroy
    cd = Cd.first
    delete :destroy, :id => cd
    assert_redirected_to cds_url
    assert !Cd.exists?(cd.id)
  end
end
