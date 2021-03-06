Factory.define :user do |f|
  f.first_name "Joe"
  f.last_name "Smith"
  f.sequence(:email) {|n| "joesmith#{n}@example.com"}
end

Factory.define :twitter_user, :parent => :user do |f|
  f.provider 'twitter'
  f.uid '123456'
  f.avatar 'spec/fixtures/Buddy.png'
  f.username 'joesmith'
end

Factory.define :shipping_address do |f|
  f.association :user
  f.street "123 Main St"
  f.city "San Francisco"
  f.zip "1234"
  f.state "CA"
end

Factory.define :order do |f|
  f.association :shipping_address
end
