class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

      t.string :game

      t.date :date

      t.time :game_time

      t.integer :home_team

      t.integer :away_team


      t.timestamps

    end

  end
end
