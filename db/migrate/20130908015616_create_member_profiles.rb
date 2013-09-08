class CreateMemberProfiles < ActiveRecord::Migration
  def change
    create_table :member_profiles do |t|
      t.string :email
      t.integer :age
      t.string :location
      t.text :desc

      t.timestamps
    end
  end
end
