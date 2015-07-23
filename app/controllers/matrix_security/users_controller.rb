require_dependency 'matrix_security/application_controller'

module MatrixSecurity
  class UsersController < ApplicationController
    before_action :set_matrix_security_user, only: [:show, :edit, :update, :destroy]

    # GET /matrix_security/users
    def index
      @matrix_security_users = MatrixSecurity::User.all
    end

    # GET /matrix_security/users/1
    def show
    end

    # GET /matrix_security/users/new
    def new
      @matrix_security_user = MatrixSecurity::User.new
    end

    # GET /matrix_security/users/1/edit
    def edit
    end

    # POST /matrix_security/users
    def create
      @matrix_security_user = MatrixSecurity::User.new(matrix_security_user_params)

      if @matrix_security_user.save
        redirect_to @matrix_security_user, notice: 'User was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /matrix_security/users/1
    def update
      if @matrix_security_user.update(matrix_security_user_params)
        redirect_to @matrix_security_user, notice: 'User was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /matrix_security/users/1
    def destroy
      @matrix_security_user.destroy
      redirect_to matrix_security_users_url, notice: 'User was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_matrix_security_user
        @matrix_security_user = MatrixSecurity::User.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def matrix_security_user_params
        params[:matrix_security_user]
      end
  end
end
