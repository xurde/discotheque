class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :limit => 128, :null => false
      t.string :name, :limit => 128
      
      t.timestamps
    end
  end
end
