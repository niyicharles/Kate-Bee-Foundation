require 'test_helper'

class VisitorsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Visitor.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Visitor.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Visitor.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to visitor_url(assigns(:visitor))
  end

  def test_edit
    get :edit, :id => Visitor.first
    assert_template 'edit'
  end

  def test_update_invalid
    Visitor.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Visitor.first
    assert_template 'edit'
  end

  def test_update_valid
    Visitor.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Visitor.first
    assert_redirected_to visitor_url(assigns(:visitor))
  end

  def test_destroy
    visitor = Visitor.first
    delete :destroy, :id => visitor
    assert_redirected_to visitors_url
    assert !Visitor.exists?(visitor.id)
  end
end
