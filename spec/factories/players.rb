FactoryBot.define do
  factory :player do
    name { Faker::Name.name }
    position { 'setter' }
    set { 1 }
    block { 1 }
    serve { 1 }
    dig { 1 }
    spike { 1 }
  end
end
