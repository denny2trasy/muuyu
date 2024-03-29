class DeviseCreateStudents < ActiveRecord::Migration
  def self.up
    create_table(:students) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable

      t.string  :first_name,:last_name,:login,:address,:phone      
      t.string  :yoga_style,:difficult_level,:preference
      t.text    :about_me
      t.string  :primary_location,  :travelling_location
      t.string  :photo
      

      t.timestamps
    end

    add_index :students, :email,                :unique => true
    add_index :students, :reset_password_token, :unique => true
    add_index :students, :confirmation_token,   :unique => true
    # add_index :students, :unlock_token,         :unique => true
    # add_index :students, :authentication_token, :unique => true
  end

  def self.down
    drop_table :students
  end
end
