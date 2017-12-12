class CreateContactMessages < ActiveRecord::Migration
  def change
    create_table :contact_messages do |t|
      t.string :contact_name
      t.string :contact_email
      t.string :contact_subject
      t.string :message

      t.timestamps null: false
    end
  end
end
