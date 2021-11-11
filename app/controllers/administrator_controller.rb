class AdministratorController < ApplicationController
    before_action :youNeedToLogIn

    def admin_home
    end

    def qanda_index
        @qanda = Qn.where(originality: "yes")
    end

    def add_qas
        @qanda = Qn.new
    end

    def create
        @qanda = Qn.new(question: params[:question],
                        answer: params[:answer],
                        originality: "yes")
        if @qanda.save
            redirect_to("/administrator/index")
        else
            @question = params[:question]
            @answer = params[:answer]
            render("administrator/add_qas")
        end
    end

    def qanda_editform
        @qanda = Qn.find_by(id: params[:id])
    end

    def qanda_edit
        @qanda = Qn.find_by(id: params[:id])
        @qanda.question = params[:question]
        @qanda.answer = params[:answer]
        if @qanda.save
            flash[:notice] = "管理者としてクイズを編集しました"
            redirect_to("/administrator/home")
        else
            @qanda = Qn.find_by(id: params[:id])
            render("administrator/qanda_editform")
        end
    end
end
