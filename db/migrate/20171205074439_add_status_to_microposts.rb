class AddStatusToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :status, :string
  end
end
