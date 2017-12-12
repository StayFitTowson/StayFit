class TweetsController < ApplicationController
	def index
		@tweets = current_user.tweet
	end	
end
