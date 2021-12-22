class CreateRunners < ActiveRecord::Migration[6.1]
  def change
    create_table :runners do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end
