class CommentsController < ApplicationController
  
  before_action :authenticate_user!

  def index
   @comments = Comment.all.order('created_at DESC')
  end

  def create
   Comment.create!(
     content: params[:comment]
   )

  redirect_to comments_path
end
  # Il manque des features !
  # Attention à la mise en forme SVP, ça sent un peu l'urgence
end
