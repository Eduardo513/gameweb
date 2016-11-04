class Comment < ActiveRecord::Base
	belongs_to:forum
	belongs_to:user
	
  def up_vote(comment)
   if !comment.nil?
		comment.upVote = comment.upVote + 1
	end
  end
  
end
