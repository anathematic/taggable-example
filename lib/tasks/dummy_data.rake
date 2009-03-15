desc "Adding dummy data"
task(:dummy_data => :environment) do
  Cake.create(:name => "Chocolate Cake", :tag_list => "The Best Kind, Awesome, Great")
  Cake.create(:name => "Ice Cream Cake", :tag_list => "The Best Kind, Cold")
  Cake.create(:name => "Mud Cake", :tag_list => "The Best Kind, Thick")
  Cake.create(:name => "Cheese Cake", :tag_list => "Crappy Cake, Sweet")
  Cake.create(:name => "Carrot Cake", :tag_list => "Disgusting Wtf, Crappy Cake")
  puts "Added Data!"
end