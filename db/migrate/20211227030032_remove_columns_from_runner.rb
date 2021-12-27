class RemoveColumnsFromRunner < ActiveRecord::Migration[6.1]
  def change
    remove_column :runners, :age
    remove_column :runners, :gender
    remove_column :runners, :height
    remove_column :runners, :weight
  end
end
