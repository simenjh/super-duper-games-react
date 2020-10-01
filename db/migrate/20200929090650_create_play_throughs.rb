class CreatePlayThroughs < ActiveRecord::Migration[5.2]
  def change
    create_table :playthroughs do |t|
      t.integer :score, default: 0
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
