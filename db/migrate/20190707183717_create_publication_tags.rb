class CreatePublicationTags < ActiveRecord::Migration[5.2]
  def change
    create_table :publication_tags do |t|
      t.references :publication, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
