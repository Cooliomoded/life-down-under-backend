class UsersController < ApplicationController

    before_action :get_user, only: [:show, :edit, :update, :destroy]

    def show
    end

    def new
        user = User.new
        #more here
        render :json => user
    end

    def create 
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id
            #then redirect to mainpage?
        else
            flash[:errors] = user.errors.full_messages
            #redirect back to create user?
        end
    end

    def edit
    end

    def update
        user.update(user_params)
        #redirect back to user page?
    end

    def destroy
        user.destroy
    end

    private

    def user_params
        params.require(:user).permit(:name, :bio) #add password, pic?
    end

    def get_user
        user = User.find(params[:id])
    end

end
