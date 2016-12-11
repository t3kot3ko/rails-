class CreateTestcases < ActiveRecord::Migration[5.0]
  def change
    create_table :testcases do |t|
      t.string :title
      t.text :step
      t.text :precondition
      t.text :postcondition
      t.text :expected_result
      t.string :identifier
      t.text :description
			t.references :section

      t.timestamps
    end
  end
end
