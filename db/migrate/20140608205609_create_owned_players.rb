class CreateOwnedPlayers < ActiveRecord::Migration
  def change
    create_table :owned_players do |t|

      t.integer :user_id

      t.integer :player_id


      t.timestamps

    end

  end
end
