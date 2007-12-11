require "C:/ProgFiles/Ruby1.8.6/lib/ruby/gems/1.8/gems/activerecord-1.15.5/lib/active_record"
require "database/person"
require "database/address"

class WerknemersApplic
  
  ActiveRecord::Base.establish_connection(
  :adapter  => "mysql",
  :host     => "localhost",
  :username => "vspw",
  :password => "",
  :database => "vspw"
  )
  
  class Department < ActiveRecord::Base
  end
  
  class CreateDepartments < ActiveRecord::Migration
    def self.up
      create_table :departments do |t|
        t.column :omschrijving,     :string
        t.column :mnemonic,    :string
        t.column :employee_id, :integer
      end
      Department.create  :omschrijving => "hardware", :mnemonic => "HW", :employee_id => 1
      Department.create  :omschrijving => "development", :mnemonic => "DVP", :employee_id => 2
      Department.create  :omschrijving => "sales", :mnemonic => "SLS", :employee_id => 3
      Department.create  :omschrijving => "administration", :mnemonic => "ADM", :employee_id => 4
    end
    
    def self.down
      drop_table :departments
    end
  end
  
  class Employee < ActiveRecord::Base
  
  def Employee.met_department_omschrijving
    
  end
  end
  
  class CreateEmployees < ActiveRecord::Migration
    def self.up
      create_table :employees do |t|
        t.column :naam,     :string
        t.column :functie,    :string
        t.column :department_id, :integer
      end
      Employee.create  :naam => "Jan Janssens", :functie => "", :department_id => 1
      Employee.create  :naam => "Piet Pieters", :functie => "test", :department_id => 2
      Employee.create  :naam => "Leen Leningsens", :functie => "", :department_id => 3
      Employee.create  :naam => "Els Elsenboom", :functie => "", :department_id => 4
      Employee.create  :naam => "Karel Karels", :functie => "test", :department_id => 1
      Employee.create  :naam => "Jo Jossem", :functie => "test", :department_id => 1
      Employee.create  :naam => "Miet Mieters", :functie => "", :department_id => 2
      Employee.create  :naam => "No Body", :functie => "", :department_id => 4
      
    end
    
    def self.down
      drop_table :employees
    end
  end

#####  main 
#CreateDepartments.up
#CreateEmployees.up

# alle afdelingen
puts 'alle afdelingen'

#department: 1 - HW hardware
#department: 2 - DVP development
#department: 3 - SLS sales
#department: 4 - ADM administration


# alle werknemers
puts 'alle werknemers'

#employee: 1 - Jan Janssens
#employee: 2 - Piet Pieters
#employee: 3 - Leen Leningsens
#employee: 4 - Els Elsenboom
#employee: 5 - Karel Karels
#employee: 6 - Jo Jossem
#employee: 7 - Miet Mieters
#employee: 8 - No Body

# alle werknemers geordend per afdeling met hoogste id eerst
puts 'alle werknemers geordend per afdeling met hoogste id eerst'

#volgend department met id '4' 
#   employee: 4 - Els Elsenboom
#   employee: 8 - No Body
#volgend department met id '3' 
#   employee: 3 - Leen Leningsens
#volgend department met id '2' 
#   employee: 2 - Piet Pieters
#   employee: 7 - Miet Mieters
#volgend department met id '1' 
#   employee: 1 - Jan Janssens
#   employee: 5 - Karel Karels
#   employee: 6 - Jo Jossem



# alle werknemers van de afdeling hardware (id = 1)
puts 'alle werknemers van de afdeling hardware (id = 1)'

#employee: 1 - Jan Janssens
#employee: 5 - Karel Karels
#employee: 6 - Jo Jossem

# alle werknemers vanaf de afdeling met id 3 en id 4 enz..
puts 'alle werknemers vanaf de afdeling met id 3 en id 4 enz..'


#employee: 3 - Leen Leningsens
#employee: 4 - Els Elsenboom
#employee: 8 - No Body

# alle met functie 'test'
puts 'alle met functie \'test\''


#employee: 2 - Piet Pieters
#employee: 5 - Karel Karels
#employee: 6 - Jo Jossem

# alle chefs met hun naam en omschrijving van hun afdeling
puts 'alle chefs met hun naam en omschrijving van hun afdeling'
Employee.met_department_omschrijving

#Jan Janssens chef van afdeling 'hardware'
#Piet Pieters chef van afdeling 'development'
#Leen Leningsens chef van afdeling 'sales'
#Els Elsenboom chef van afdeling 'administration'

end