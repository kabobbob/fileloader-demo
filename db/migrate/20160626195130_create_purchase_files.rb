class CreatePurchaseFiles < ActiveRecord::Migration
  def up
    create_table :purchase_files do |t|
      t.timestamps null: false
    end
    add_attachment :purchase_files, :file
  end

  def down
    remove_attachment :purchase_files, :file
  end
end
