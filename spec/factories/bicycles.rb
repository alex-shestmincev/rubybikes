FactoryGirl.define do

  #valid
  factory :valid_bike1, class: Bicycle  do
    title "bike_title"
    key 12345
    status 1
    description "cool bike"
    distance 0
  end

  factory :valid_bike2, class: Bicycle  do
    title "bike_title"
    key 12345
    status 1
    description "cool bike"
  end


  #not valid
  factory :false_bike1, class: Bicycle  do
    key 12345
    status 1
    description "cool bike"
    distance 0
  end

  factory :false_bike2, class: Bicycle  do
    title "bike_title"
    status 1
    description "cool bike"
    distance 0
  end

  factory :false_bike3, class: Bicycle  do
    title "bike_title"
    key 1
    status 1
    description "cool bike"
    distance 0
  end

  factory :false_bike4, class: Bicycle  do
    title "bike_title"
    key 12
    status 0
    description "cool bike"
    distance 0
  end

  factory :false_bike5, class: Bicycle  do
    title "bike_title"
    key 12
    status 4
    description "cool bike"
    distance 0
  end


end