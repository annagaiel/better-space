FactoryGirl.define do
  factory :space_listing do
    title 'Wonderful Space'
    description 'Best place to store items'
    day_rent 60
    monthly_rent 100
    space_type 'Garage'
    environment_type 'Indoor'
    size_length 9
    size_width 10
    size_height 7
  end

end
