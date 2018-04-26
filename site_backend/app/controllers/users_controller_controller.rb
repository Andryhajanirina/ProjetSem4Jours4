class UsersControllerController < ApplicationController
    def new
    end

    def create
        if params['username'] != ""
          user = User.create(username: params['username'], bio: params['bio'])
          user.save
        #   id= user.id
          redirect_to home_path
        else
          redirect_to new_user_path
        end
    end

    def show
        if params['id_user'].to_i != 0 && params['id_user'].to_i != ""
          @user = User.find(params['id_user'].to_i)
          p @user.username
        else
          redirect_to home_path
        end
      end
end
