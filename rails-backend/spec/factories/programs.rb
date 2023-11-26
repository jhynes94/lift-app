FactoryBot.define do
  factory :program do

  name {'Test Program'}
  description {'This is a test program.'}
  image {fixture_file_upload(Rails.root.join('spec', 'fixtures', 'test_image.jpg'), 'image/jpeg')}

  end
end
