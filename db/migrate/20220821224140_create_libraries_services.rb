class CreateLibrariesServices < ActiveRecord::Migration[6.1]
  def change
    create_table :libraries_services do |t|
      t.references :library, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
    add_index :libraries_services, [:library_id, :service_id], unique: true
  end
end
