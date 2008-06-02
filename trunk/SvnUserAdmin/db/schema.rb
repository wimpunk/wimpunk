# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 4) do

  create_table "groups", :force => true do |t|
    t.column "name", :string
    t.column "desc", :string
  end

  create_table "usergroups", :force => true do |t|
    t.column "user_id",  :integer
    t.column "group_id", :integer
  end

  create_table "users", :force => true do |t|
    t.column "login",    :string
    t.column "fullname", :string
    t.column "password", :string
  end

end