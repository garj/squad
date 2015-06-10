class AddPlayerIdsToSquads < ActiveRecord::Migration
  def change
    change_table :squads do |t|
      t.column :slot1_player_id, :integer
      t.column :slot2_player_id, :integer
      t.column :slot3_player_id, :integer
      t.column :slot4_player_id, :integer
    end
  end
end
