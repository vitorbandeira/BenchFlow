class CreateEjPublications < ActiveRecord::Migration[5.2]
  def change
    create_table :ej_publications do |t|
      t.references :ej, foreign_key: true
      t.references :publication, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
