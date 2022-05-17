class CreateUserBodies < ActiveRecord::Migration[6.0]
  def change
    create_table :user_bodies do |t|

      t.timestamps
    end
  end
end
