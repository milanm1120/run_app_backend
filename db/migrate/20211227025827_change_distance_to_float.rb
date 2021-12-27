class ChangeDistanceToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :runs, :distance, :float
  end
end
