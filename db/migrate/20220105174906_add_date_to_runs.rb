class AddDateToRuns < ActiveRecord::Migration[6.1]
  def change
    add_column :runs, :run_date, :date
  end
end
