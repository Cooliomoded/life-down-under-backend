class UsersController < ApplicationController

    before_action :get_user, only: [:show, :edit, :update, :destroy]

    def index
        users = User.all
        render :json => users
    end

    def show
    end

    def new
        user = User.new
        #more here
        render :json => user
    end

    def create 
        user = User.new(user_params)
        if user.valid?
            user.save
            # session[:user_id] = user.id
            render json: {user: user}
            #then redirect to mainpage?
        # else
        #     flash[:errors] = user.errors.full_messages
        #     #redirect back to create user?
        end
    end

    def edit
    end

    def update
        user.update(user_params)
        #redirect back to user page?
    end

    def login
        user = User.find_by(username: params[:username])
        if user.valid?
            session[:user_id] = user.id
            render :json => user
            #then redirect to mainpage?
        else
            flash[:errors] = user.errors.full_messages
            #redirect back to create user?
        end
    end

    def signup
        user = User.new(user_params)
        if user.valid?
            user.save
            render :json => user
        end
    end

    def destroy
        user.destroy
    end

    private

    def user_params
        params.require(:user).permit(:username, :bio, :profile_pic, :location, :password)
    end

    def get_user
        user = User.find(params[:id])
    end

end
