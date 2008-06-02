# 
#  $Id: user.rb 356 2008-06-02 18:48:17Z wv753780 $
# 
#  $LastChangedDate: 2008-06-02 20:48:17 +0200 (Mon, 02 Jun 2008) $
#  $Rev: 356 $
#  $Author: wv753780 $
#  $URL: svn+ssh://megaton/disk2/home/es5/wv753780/svn/wimscorner/trunk/SvnUserAdmin/app/models/user.rb $
# 
# 
class User < ActiveRecord::Base
  # => validates_presence_of :login, :password
  has_many :usergroups
  has_many :groups, :through => :usergroups
  
  def password= (pw)
    salt = [Array.new(6){rand(256).chr}.join].pack("m").chomp # 2^48 combos
    self[:password] = pw.crypt(salt)
  end 
    
end
