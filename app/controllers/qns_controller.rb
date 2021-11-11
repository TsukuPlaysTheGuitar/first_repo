class QnsController < ApplicationController
    before_action :youNeedToLogIn
    before_action :youAreNotCorrectUserQns, {except: [:create]}

    def youAreNotCorrectUserQns
        qn = Qn.find_by(id: params[:id])
        if @current_user.name != qn.creater_name
            flash[:notice] = "他ユーザーの領域に入ることはできません"
            redirect_to("/users/#{@current_user.id}/home")
        end
    end

    def show_userqas
        @qanda = Qn.find_by(id: params[:id])
    end
    

    def create
        @yourqa = Qn.new(question: params[:qn],
                         answer: params[:ans],
                         user_id: @current_user.id,
                         creater_name: @current_user.name)
        if @yourqa.save
            redirect_to("/users/#{@current_user.id}/home")
        else
            @qn = params[:qn]
            @ans = params[:ans]
            render("users/add_yourqn")
        end
    end

    def edit_form
        @qanda = Qn.find_by(id: params[:id])
    end

    def edit
        @qanda = Qn.find_by(id: params[:id])
        @qanda.question = params[:question]
        @qanda.answer = params[:answer]
        if @qanda.save
            redirect_to("/users/#{@current_user.id}/index")
        else
            @qanda = Qn.find_by(id: params[:id])
            render("qns/edit_form")
        end
    end

    def destroy
        @qanda = Qn.find_by(id: params[:id])
        @qanda.destroy
        redirect_to("/users/#{@current_user.id}/index")
    end    
end

