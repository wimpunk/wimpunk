require File.dirname(__FILE__) + '/../test_helper'
require 'usergroup_controller'

# Re-raise errors caught by the controller.
class UsergroupController; def rescue_action(e) raise e end; end

class UsergroupControllerTest < Test::Unit::TestCase
  fixtures :usergroups

  def setup
    @controller = UsergroupController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new

    @first_id = usergroups(:first).id
  end

  def test_index
    get :index
    assert_response :success
    assert_template 'list'
  end

  def test_list
    get :list

    assert_response :success
    assert_template 'list'

    assert_not_nil assigns(:usergroups)
  end

  def test_show
    get :show, :id => @first_id

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:usergroup)
    assert assigns(:usergroup).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:usergroup)
  end

  def test_create
    num_usergroups = Usergroup.count

    post :create, :usergroup => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_usergroups + 1, Usergroup.count
  end

  def test_edit
    get :edit, :id => @first_id

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:usergroup)
    assert assigns(:usergroup).valid?
  end

  def test_update
    post :update, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => @first_id
  end

  def test_destroy
    assert_nothing_raised {
      Usergroup.find(@first_id)
    }

    post :destroy, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      Usergroup.find(@first_id)
    }
  end
end
