class AddPasswordDigest < ActiveRecord::Migration
  def self.up
    add_column :students, :password_digest, :string
  end

  def self.down
    remove_column :students, :password_digest
  end
end
