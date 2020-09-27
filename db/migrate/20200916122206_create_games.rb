class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :hero_headline
      t.string :hero_description
      t.timestamps
    end
  end
end
