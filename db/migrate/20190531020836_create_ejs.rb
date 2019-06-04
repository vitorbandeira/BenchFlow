class CreateEjs < ActiveRecord::Migration[5.2]
  def change
    create_table :ejs do |t|
      t.string :name
      t.references :university, foreign_key: true

      t.timestamps
    end
  end
end
