# 
#  $Id: usergroup_controller.rb 356 2008-06-02 18:48:17Z wv753780 $
# 
#  $LastChangedDate: 2008-06-02 20:48:17 +0200 (Mon, 02 Jun 2008) $
#  $Rev: 356 $
#  $Author: wv753780 $
#  $URL: svn+ssh://megaton/disk2/home/es5/wv753780/svn/wimscorner/trunk/SvnUserAdmin/app/controllers/usergroup_controller.rb $
# 
# 
class UsergroupController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @usergroup_pages, @usergroups = paginate :usergroups, :per_page => 10
    @groups = Group.find :all # needed for the titles
    @users = User.find :all
    
  end

  def show
    @usergroup = Usergroup.find(params[:id])
  end

  def new
    @usergroup = Usergroup.new
  end

  def create
    @usergroup = Usergroup.new(params[:usergroup])
    if @usergroup.save
      flash[:notice] = 'Usergroup was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @usergroup = Usergroup.find(params[:id])
  end

  def update
    @usergroup = Usergroup.find(params[:id])
    if @usergroup.update_attributes(params[:usergroup])
      flash[:notice] = 'Usergroup was successfully updated.'
      redirect_to :action => 'show', :id => @usergroup
    else
      render :action => 'edit'
    end
  end

  def destroy
    Usergroup.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
