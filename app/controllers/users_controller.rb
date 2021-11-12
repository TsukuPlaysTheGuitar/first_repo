class UsersController < ApplicationController
    before_action :youNeedToLogIn, except: [:youAreNotCorrectUser, :login_form, :login, :new, :create]
    before_action :forbidLoginUser, only: [:new, :login_form]
    before_action :youAreNotCorrectUser, except: [:login_form, :login, :logout, :new, :create]

    #あるログインユーザーが他ユーザのidをURLに含めてリクエストすることで他ユーザのページたちを閲覧するのをブロックする
    def youAreNotCorrectUser
        if @current_user.id != params[:id].to_i
            flash[:notice] = "他ユーザーの領域に入ることはできません"
            redirect_to("/users/#{@current_user.id}/home")
        end
    end

    #ログイン画面へ移動
    def login_form
    end

    #ログインのためDBとやりとり
    def login
        @user = User.find_by(name: params[:name],
                         password: params[:password])
        if @user
            flash[:notice] = "ログインしました"
            session[:user_id] = @user.id
            if @user.administrator == true
                redirect_to("/administrator/home")
            else
                redirect_to("/users/#{session[:user_id]}/home")
            end
        
        else
            @name = params[:name]
            @password = params[:password]
            render("users/login_form")
        end
    end

    def logout
        flash[:notice] = "ログアウトしました"
        session[:user_id] = nil
        redirect_to("/")
    end

    def user_home
    end

    def user_profile
        @user = User.find_by(id: @current_user.id)
    end

    def profile_edit
        @user = User.find_by(id: params[:id])
        @user.name = params[:name]
        @user.password = params[:password]
        if @user.save
            redirect_to("/users/#{@current_user.id}/home")
        else
            render("users/user_profile")
        end
    end

    #新規ユーザー登録画面へ移動
    def new
        User.new
    end

    # 新規ユーザーをDBに追加
    def create
        @user = User.new(name: params[:name],
                         password: params[:password])
        if @user.save
            flash[:notice] = "アカウントを作成しました"
            session[:user_id] = @user.id
            redirect_to("/users/#{session[:user_id]}/home")
        else
            @name = params[:name]
            @password = params[:password]
            render("users/new")
        end
    end
    
    #問題一覧を表示する
    def index
        @original_qas = Qn.where(originality: "yes")
        @yourqas = Qn.where(user_id: @current_user.id)
        if @yourqas.empty?
            @noqas_message = "あなたが作った問題はありません。何か作ってみませんか？"
        end
    end

    #クイズ追加画面へ移動
    def add_yourqn
        @yourqa = Qn.new
    end

    #収録問題出題画面へ移動
    def give_qas
        qasFromTable = Qn.where(originality: "yes")
        shuffledQas = qasFromTable.shuffle
        gon.qns = shuffledQas.pluck(:question)
        gon.anss = shuffledQas.pluck(:answer)
    end

    #ユーザー作成の問題出題画面へ移動
    def give_userqas
        qasFromTable = Qn.where(user_id: @current_user.id)
        shuffledQas = qasFromTable.shuffle
        gon.qns = shuffledQas.pluck(:question)
        gon.anss = shuffledQas.pluck(:answer)
    end
end
