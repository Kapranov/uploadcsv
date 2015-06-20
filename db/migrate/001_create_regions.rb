class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :iso
      t.string :country
      t.string :name
      t.string :region1
      t.string :region2
      t.string :iso2
      t.string :fips
      t.string :hasc
      t.integer :stat

      t.timestamps null: false
    end
  end
end
