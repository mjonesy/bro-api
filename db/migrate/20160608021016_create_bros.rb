class CreateBros < ActiveRecord::Migration
  def change
    create_table :bros do |t|
      t.string :name
      t.string :bio
      t.string :food
      t.string :job

      t.timestamps null: false
    end
  end
end
