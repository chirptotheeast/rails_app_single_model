class CreateBlockbusters < ActiveRecord::Migration[6.0]
  def change
    create_table :blockbusters do |t|
      t.string :name
      t.string :genre
      t.integer :year_released
      t.boolean :award_nominee
      t.string :quote

      t.timestamps
    end
  end
end
