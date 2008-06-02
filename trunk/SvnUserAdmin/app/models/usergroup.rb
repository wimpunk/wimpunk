# 
#  $Id: usergroup.rb 356 2008-06-02 18:48:17Z wv753780 $
# 
#  $LastChangedDate: 2008-06-02 20:48:17 +0200 (Mon, 02 Jun 2008) $
#  $Rev: 356 $
#  $Author: wv753780 $
#  $URL: svn+ssh://megaton/disk2/home/es5/wv753780/svn/wimscorner/trunk/SvnUserAdmin/app/models/usergroup.rb $
# 
# 
class Usergroup < ActiveRecord::Base
  belongs_to :group
  belongs_to :user

end
