# 
#  $Id: group.rb 356 2008-06-02 18:48:17Z wv753780 $
# 
#  $LastChangedDate: 2008-06-02 20:48:17 +0200 (Mon, 02 Jun 2008) $
#  $Rev: 356 $
#  $Author: wv753780 $
#  $URL: svn+ssh://megaton/disk2/home/es5/wv753780/svn/wimscorner/trunk/SvnUserAdmin/app/models/group.rb $
# 
# 
class Group < ActiveRecord::Base
  has_many :usergroups
  has_many :users, :through => :usergroups
end
