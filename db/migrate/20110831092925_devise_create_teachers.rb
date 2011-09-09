class DeviseCreateTeachers < ActiveRecord::Migration
  def self.up
    create_table(:teachers) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable

      t.string  :first_name,:last_name,:login,:address,:phone      
      t.string  :yoga_style,:weblink
      t.text    :short_bio,:philosophy
      t.string  :photo

      t.timestamps
    end

    add_index :teachers, :email,                :unique => true
    add_index :teachers, :reset_password_token, :unique => true
    add_index :teachers, :confirmation_token,   :unique => true
    # add_index :teachers, :unlock_token,         :unique => true
    # add_index :teachers, :authentication_token, :unique => true
  end

  def self.down
    drop_table :teachers
  end
end
