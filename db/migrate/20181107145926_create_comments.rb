class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.timestamps
      t.text :content
      # Manque user_id pour la relation user <-> comments
   end
 end
end
