class SquadsController < ApplicationController
  def new
    @squad = Squad.new
  end
  
  def index
    @squads = Squad.all
  end
  
  def create
    fail
  end
  
  def destroy
  end
  
  def update
  end
  
  def edit
  end

end
