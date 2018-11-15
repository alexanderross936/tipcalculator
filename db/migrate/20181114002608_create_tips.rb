class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.string :totalbill
      t.string :percent

      t.timestamps
    end
  end
end
