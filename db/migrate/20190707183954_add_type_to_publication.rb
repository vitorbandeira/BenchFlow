class AddTypeToPublication < ActiveRecord::Migration[5.2]
  def change
    add_column :publications, :publication_type, :integer
  end
end
