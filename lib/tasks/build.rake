namespace :build do
  task images: :environment do
    Dir.new('app/assets/images').each do |f|
      Image.create(path: File.path(f)) if File.extname(f) == '.png'
    end
  end

  task doors: :environment do
    p 'Bar'
  end
end
