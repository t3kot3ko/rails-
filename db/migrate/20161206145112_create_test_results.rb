class CreateTestResults < ActiveRecord::Migration[5.0]
  def change
    create_table :test_results do |t|
      t.references :test_result_type, foreign_key: true
      t.references :execution, foreign_key: true

      t.timestamps
    end
  end
end
