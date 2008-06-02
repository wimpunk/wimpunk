# 
#  $Id: 004_create_usergroups.rb 356 2008-06-02 18:48:17Z wv753780 $
# 
#  $LastChangedDate: 2008-06-02 20:48:17 +0200 (Mon, 02 Jun 2008) $
#  $Rev: 356 $
#  $Author: wv753780 $
#  $URL: svn+ssh://megaton/disk2/home/es5/wv753780/svn/wimscorner/trunk/SvnUserAdmin/db/migrate/004_create_usergroups.rb $
# 
# 
class CreateUsergroups < ActiveRecord::Migration
  def self.up
    create_table :usergroups do |t|
      t.column :user_id, :integer
      t.column :group_id, :integer
    end
  end

  def self.down
    drop_table :usergroups
  end
end
