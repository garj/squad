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
    
    @slot1_player = nil
    @slot2_player = nil
    @slot3_player = nil
    @slot4_player = nil
    
    
    if Player.exists?(id: @squad.slot1_player_id)
     @slot1_player = Player.find(@squad.slot1_player_id)
    end
    if Player.exists?(id: @squad.slot2_player_id)
      @slot2_player = Player.find(@squad.slot2_player_id)
    end      
    if Player.exists?(id: @squad.slot3_player_id)
      @slot3_player = Player.find(@squad.slot3_player_id)
    end      
    if Player.exists?(id: @squad.slot4_player_id)
      @slot4_player = Player.find(@squad.slot4_player_id)     
    end      
  end

end
