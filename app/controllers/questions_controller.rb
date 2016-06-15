class QuestionsController < ApplicationController

def index
  @questions = Question.all
end

def new
  @user = User.new
  @question = @user.questions.new
end

def create
  @user = User.find_or_create_by(name: params[:question][:user_attributes][:name])
  @question = @user.questions.new(question_params)
  if @question.save
    flash[:notice] = "Question posted successfully"
    redirect_to questions_path
  else
    flash[:alert] = "Question has not been posted successfully"
    render :new
  end
end

def edit
  @question = Question.find(params[:id])
end

private

  def question_params
    params.require(:question).permit(
      :title,
      :question_content
    )
  end
end
