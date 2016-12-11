class CreateExecutions < ActiveRecord::Migration[5.0]
  def change
    create_table :executions do |t|
      t.references :executor, foreign_key: true
      t.timestamp :executed_at

      t.timestamps
    end
  end
end
