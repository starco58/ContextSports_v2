class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|

      t.integer :event_id

      t.integer :player_id

      t.string :play_type

      t.integer :quarter_play_occured


      t.timestamps

    end

  end
end
