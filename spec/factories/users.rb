FactoryGirl.define do

  #valid
  factory :sanyok, class: User  do
    email "rich@mail.ru"
    password "11111111"
    password_confirmation "11111111"
  end


  #not_valid
  factory :fail_user, class: User  do
    email "richmail.ru"
    password "11111111"
    password_confirmation "11111111"
  end

  factory :fail_user2, class: User  do
    email "rich@mail.ru"
    password "111111"
    password_confirmation "111111"
  end

  factory :fail_user3, class: User  do
    email "rich@mail"
    password "11111111"
    password_confirmation "11111111"
  end

end