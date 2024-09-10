class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.integer :set
      t.integer :block
      t.integer :serve
      t.integer :dig
      t.integer :spike

      t.timestamps
    end
  end
end
