class EvaluationsController < ApplicationController
  def create
    Evaluation.create(comment_params)
  end

  def new
  end

  private

  def comment_params
    params.permit(:comment, :product_id).merge(user_id: current_user.id)
  end
end
