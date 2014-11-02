class CreateBits < ActiveRecord::Migration
  def change
    create_table :bits do |t|
      t.text :body
      t.string :author

      t.timestamps
    end
  end
end
