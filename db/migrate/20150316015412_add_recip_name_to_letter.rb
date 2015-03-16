class AddRecipNameToLetter < ActiveRecord::Migration
  def change
    add_column :letters, :recipient, :string
  end
end
