class PagesController < ApplicationController
	def home
	end

	def about
		@major = "EECS"
		@age = "19"
		@song = "Take Five"
	end
end