FactoryGirl.define do
  factory :hospital do
    name "Charleston Birth Center"
  end
  factory :patient do
    first_name "John"
    last_name  "Doe"
    facilities_provider FactoryGirl.create(:hospital)
    malady "sick"
  end
end
