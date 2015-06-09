class AddSquadRefToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :squad_id, :integer
  end
end
