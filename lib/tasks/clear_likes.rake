### clear all the likes

namespace :newey do

  desc "Set all Like count to 0"
  task :clear_likes => :environment do
    puts "clearing all the likes"
    puts "Number of photos: #{Photo.count}"
    Photo.update_all likes: 0
  end

end
