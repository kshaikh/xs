class CreateServers < ActiveRecord::Migration
  def self.up
    create_table :servers do |t|
      t.string :ip
      t.float :response

      t.timestamps
    end
  end

  def self.down
    drop_table :servers
  end
end
