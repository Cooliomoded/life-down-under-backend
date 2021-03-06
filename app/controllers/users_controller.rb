class UsersController < ApplicationController

    def index
        users = User.all
        render :json => users
    end

    def show
        user = User.find(params[:id])
        render :json => user
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
            render json: user.to_json(:include => [:favorites])
            #then redirect to mainpage?
        # else
        #     flash[:errors] = user.errors.full_messages
        #     #redirect back to create user?
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render :json => user
    end

    def login
        user = User.find_by(username: params[:username])
        if user.valid?
            # session[:user_id] = user.id
            render :json => user.to_json(:include => [:favorites])
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
            render :json => user.to_json(:include => [:favorites])
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        users = User.all
        render :json => users
    end

    private

    def user_params
        params.require(:user).permit(:username, :bio, :profile_pic, :location, :password)
    end

end
