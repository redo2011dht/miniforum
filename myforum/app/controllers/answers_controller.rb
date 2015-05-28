class AnswersController < ApplicationController
  def create
    ## tim cau hoi dua vao question_id
      @question = Question.find(params[:question_id])
     
      ## tim tat ca cac cau tra loi cua @question
      @answer   = @question.answers.build(answers_params)
     
      ##lay ten tai khoan tuong ung cua cau tra loi
      @answer.user = current_user
     
      @answer.save

       redirect_to questions_url
  end

  def destroy
      @question = Question.find(params[:question_id])
      @answer = @question.answers.find(params[:id]).destroy
      redirect_to questions_url
  end

  private 
  def answers_params
      params.require(:answer).permit(:content)     
  end
end
