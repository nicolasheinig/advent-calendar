namespace :build do
  task images: :environment do
    Dir.new('app/assets/images').each do |f|
      Image.create(path: File.path(f)) if File.extname(f) == '.png'
    end
  end

  task doors: :environment do
    Door.delete_all
    counter = 1
    Image.all.sample(24).each do |image|
      image.build_door(day: counter).save
      counter += 1
    end
  end
end
