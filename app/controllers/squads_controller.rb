class SquadsController < ApplicationController
  def new
    @squad = Squad.new
  end
  
  def index
    @squads = Squad.all
  end
  
  def create
    @squad = Squad.new(params.require(:squad).permit(:name, :formation, :slot1_player_id, :slot2_player_id, :slot3_player_id, :slot4_player_id))
    if @squad.save
      redirect_to squads_path
    else
      render :new
    end
  end
  
  def destroy
  end
  
  def update
  end
  
  def edit
  end
  
  def show
    @squad = Squad.find(params[:id])
  end

end
