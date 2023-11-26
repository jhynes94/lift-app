require 'rails_helper'

RSpec.describe Program, type: :model do
  it "is valid with a name, description, and an image" do
    program = Program.new(
      name: 'Test Program',
      description: 'This is a test program.',
      image: fixture_file_upload(Rails.root.join('spec', 'fixtures', 'test_image.jpg'), 'image/jpeg')
    )
    expect(program).to be_valid
  end

  it "is invalid without a name" do
    program = Program.new(name: nil)
    expect(program).not_to be_valid
  end

  it "is invalid without a description" do
    program = Program.new(description: nil)
    expect(program).not_to be_valid
  end

  it "is invalid without an image" do
    program = Program.new(image: nil)
    expect(program).not_to be_valid
  end
end
