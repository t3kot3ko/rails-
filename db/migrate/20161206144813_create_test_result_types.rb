class CreateTestResultTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :test_result_types do |t|
      t.string :title
      t.string :color
      t.string :identifier

      t.timestamps
    end
  end
end
