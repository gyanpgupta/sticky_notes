class AddAvatarToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :avatar, :string
  end
end
