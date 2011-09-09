class CreateAttachments < ActiveRecord::Migration
  def self.up
    create_table :attachments do |t|
      t.column  :owner_id, :integer
      t.column  :owner_type,  :string
      t.column  :a_type,  :string
      t.column  :data_file_name,  :string
      t.column  :data_content_type, :string
      t.column  :data_file_size, :integer
      t.column  :data_updated_at, :datetime
      t.timestamps
    end
  end

  def self.down
    drop_table :attachments
  end
end
