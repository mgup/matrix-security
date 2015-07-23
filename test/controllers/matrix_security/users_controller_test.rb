require 'test_helper'

module MatrixSecurity
  class MatrixSecurity::UsersControllerTest < ActionController::TestCase
    setup do
      @matrix_security_user = matrix_security_matrix_security_users(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:matrix_security_users)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create matrix_security_user" do
      assert_difference('MatrixSecurity::User.count') do
        post :create, matrix_security_user: {  }
      end

      assert_redirected_to matrix_security_user_path(assigns(:matrix_security_user))
    end

    test "should show matrix_security_user" do
      get :show, id: @matrix_security_user
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @matrix_security_user
      assert_response :success
    end

    test "should update matrix_security_user" do
      patch :update, id: @matrix_security_user, matrix_security_user: {  }
      assert_redirected_to matrix_security_user_path(assigns(:matrix_security_user))
    end

    test "should destroy matrix_security_user" do
      assert_difference('MatrixSecurity::User.count', -1) do
        delete :destroy, id: @matrix_security_user
      end

      assert_redirected_to matrix_security_users_path
    end
  end
end
