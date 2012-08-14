class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.integer :user_id
      t.string :fname
      t.string :lname
      t.string :gender
      t.date :dob
      t.string :country
      t.string :state
      t.string :city
      t.string :address
      t.integer :pin
      t.integer :phone
      t.string :image

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
