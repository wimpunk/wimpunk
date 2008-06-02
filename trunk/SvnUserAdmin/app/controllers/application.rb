# 
#  $Id: application.rb 349 2008-05-18 13:00:53Z wv753780 $
# 
#  $LastChangedDate: 2008-05-18 15:00:53 +0200 (Sun, 18 May 2008) $
#  $Rev: 349 $
#  $Author: wv753780 $
#  $URL: svn+ssh://megaton/disk2/home/es5/wv753780/svn/wimscorner/trunk/SvnUserAdmin/app/controllers/application.rb $
# 
# 
# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  # Pick a unique cookie name to distinguish our session data from others'
  session :session_key => '_SvnUserAdmin_session_id'
end
