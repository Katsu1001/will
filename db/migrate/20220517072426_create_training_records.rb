class CreateTrainingRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :training_records do |t|

      t.timestamps
    end
  end
end
