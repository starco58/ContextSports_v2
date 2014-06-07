class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|

      t.string :city

      t.string :team_name

      t.string :team_logo


      t.timestamps

    end

  end
end
