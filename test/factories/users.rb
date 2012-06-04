# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do |user|
    user.email  "usuario@dominio.com"
    user.name   "Usario Lastname"
    user.password  "password01"
    user.password_confirmation  "password01"
  end
end
