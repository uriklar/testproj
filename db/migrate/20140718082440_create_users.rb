class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :visible, default: true

      t.timestamps
    end
  end
end
