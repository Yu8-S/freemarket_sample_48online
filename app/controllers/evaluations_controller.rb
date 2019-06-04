class EvaluationsController < ApplicationController
  def create
    @evaluation = Evaluation.create(comment_params)
    if @evaluation.save
      redirect_to product_path(comment_params[:product_id])
    else
      flash[:danger] = "コメント送信を失敗しました"
      render :create
    end
  end

  def new
  end

  private

  def comment_params
    params.permit(:comment, :product_id).merge(user_id: current_user.id)
  end
end
