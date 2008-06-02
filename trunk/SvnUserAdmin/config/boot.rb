# 
#  $Id: boot.rb 349 2008-05-18 13:00:53Z wv753780 $
# 
#  $LastChangedDate: 2008-05-18 15:00:53 +0200 (Sun, 18 May 2008) $
#  $Rev: 349 $
#  $Author: wv753780 $
#  $URL: svn+ssh://megaton/disk2/home/es5/wv753780/svn/wimscorner/trunk/SvnUserAdmin/config/boot.rb $
# 
# 
# Don't change this file. Configuration is done in config/environment.rb and config/environments/*.rb

RAILS_ROOT = "#{File.dirname(__FILE__)}/.." unless defined?(RAILS_ROOT)

unless defined?(Rails::Initializer)
  if File.directory?("#{RAILS_ROOT}/vendor/rails")
    require "#{RAILS_ROOT}/vendor/rails/railties/lib/initializer"
  else
    require 'rubygems'

    rails_gem_version =
      if defined? RAILS_GEM_VERSION
        RAILS_GEM_VERSION
      else
        File.read("#{File.dirname(__FILE__)}/environment.rb") =~ /^[^#]*RAILS_GEM_VERSION\s+=\s+'([\d.]+)'/
        $1
      end

    if rails_gem_version
      rails_gem = Gem.cache.search('rails', "=#{rails_gem_version}.0").sort_by { |g| g.version.version }.last

      if rails_gem
        gem "rails", "=#{rails_gem.version.version}"
        require rails_gem.full_gem_path + '/lib/initializer'
      else
        STDERR.puts %(Cannot find gem for Rails =#{rails_gem_version}.0:
    Install the missing gem with 'gem install -v=#{rails_gem_version} rails', or
    change environment.rb to define RAILS_GEM_VERSION with your desired version.
  )
        exit 1
      end
    else
      gem "rails"
      require 'initializer'
    end
  end

  Rails::Initializer.run(:set_load_path)
end
