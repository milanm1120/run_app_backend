class CreateRuns < ActiveRecord::Migration[6.1]
  def change
    create_table :runs do |t|
      t.integer :time
      t.integer :distance
      t.string :run_type
      t.string :comments
      t.belongs_to :runner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
