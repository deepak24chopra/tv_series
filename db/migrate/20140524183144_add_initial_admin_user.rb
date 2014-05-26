class AddInitialAdminUser < ActiveRecord::Migration
 
  def up
    1.time do |i|
      AdminUser.create(name: "deepak24chopra", password_digest: "$2a$10$IEVnAvRxJyv4n7.ZhayU9.AnV3o0jqnazxELnTXCfR03RLEaewjtC ")
    end
  end
 
  def down
    AdminUser.delete_all
  end

end
