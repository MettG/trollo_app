class BoardsController < ApplicationController
	def index
		@boards = Board.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
