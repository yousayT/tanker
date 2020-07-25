class UsersController < ApplicationController
    
    def new
        @user = User.new
    end

    def create
        puts(params[:name], params[:password])
        @user = User.new(name: params[:name], password: [:password])
        @user.save
        # あとでPost一覧に指定　→　redirect_to("/users/#{@user.id}")
        flash[:notice] = '新規会員登録に成功！'
    end

end
