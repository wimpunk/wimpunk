# 
#  $Id: 002_create_users.rb 349 2008-05-18 13:00:53Z wv753780 $
# 
#  $LastChangedDate: 2008-05-18 15:00:53 +0200 (Sun, 18 May 2008) $
#  $Rev: 349 $
#  $Author: wv753780 $
#  $URL: svn+ssh://megaton/disk2/home/es5/wv753780/svn/wimscorner/trunk/SvnUserAdmin/db/migrate/002_create_users.rb $
# 
# 
class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
    
      t.column :login, :string
      t.column :fullname, :string
      t.column :password, :string
    
    end
  end

  def self.down
    drop_table :users
  end
end
