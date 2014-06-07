class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|

      t.string :player_name

      t.integer :player_team

      t.string :player_image


      t.timestamps

    end

  end
end
