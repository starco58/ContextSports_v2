class CreatePlayResponses < ActiveRecord::Migration
  def change
    create_table :play_responses do |t|

      t.integer :play_id

      t.integer :player_id

      t.integer :user_id

      t.boolean :player_responible

      t.text :comment


      t.timestamps

    end

  end
end
