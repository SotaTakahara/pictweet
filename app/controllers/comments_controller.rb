class CommentsController < ApplicationController
   def create
     @comment = Comment.create(text: params[:text],tweet_id: params[:tweet_id],user_id: current_user.id)
     redirect_to "/tweets /#{@comment.tweet.id}"
     binding.pry
     
   end

   private
   def comment_params 
    params.permit(:text, :tweet_id)
   end 
end
