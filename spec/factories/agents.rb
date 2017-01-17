FactoryGirl.define do
  factory :agent do
    firstname "MyString"
    lastname "MyString"
    email "MyText"
    password "MyText"
    telephone "MyText"
    isadmin false
    branch nil
  end
end
