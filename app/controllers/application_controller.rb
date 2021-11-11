class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    #ログインしていないのならURLでリクエストをしてもログイン画面に戻される。
    def youNeedToLogIn
        if @current_user == nil
          flash[:notice] = "ログインしてください"
          redirect_to("/loginform")
        end
    end

    #ログインしているユーザーが閲覧する必要のないページは閲覧できず、ログイン画面に案内する。
    def forbidLoginUser
        if @current_user
          redirect_to("/users/#{@current_user.id}/home")
        end
    end
end
