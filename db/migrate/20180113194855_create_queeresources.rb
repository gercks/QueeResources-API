class CreateQueeresources < ActiveRecord::Migration[5.1]
  def change
    create_table :queeresources do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :description
      t.string :location
      t.string :website
      t.string :orgtype
      t.string :popfocus

      t.timestamps
    end
  end
end
