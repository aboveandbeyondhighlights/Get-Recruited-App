FactoryBot.define do
  factory :player do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    age { Faker::Number.between(13, 18) }
    birthday { Faker::Date.birthday(13, 18) }
    foot { ['right', 'left'].sample }
    nationality { Faker::Nation.nationality }
    sex { ['male', 'female'].sample }
    graduation_year { Faker::Number.between(2019, 2025) }
    highschool { "#{Faker::Team.mascot} High School" }
    highschool_goals { Faker::Number.digit }
    highschool_assists { Faker::Number.digit }
    highschool_position { ['RightBack', 'LeftBack', 'GoalKeeper', 'Right Centerback', 'Left Centerback', 'Center Defensive Mid', 'Center Mid', 'Center Attacking Mid', 'Forward', 'Left Wing', 'Right Wing'].sample }
    phone_number { Faker::PhoneNumber.phone_number }
    state { Faker::Address.state }
    city { Faker::Address.city }
    street_address { Faker::Address.street_address }
    club_name { Faker::Team.mascot }
    club_position { ['RightBack', 'LeftBack', 'GoalKeeper', 'Right Centerback', 'Left Centerback', 'Center Defensive Mid', 'Center Mid', 'Center Attacking Mid', 'Forward', 'Left Wing', 'Right Wing'].sample }
    club_goals { Faker::Number.digit }
    club_assists { Faker::Number.digit }
    height { ["5'0", "5'1", "5'2", "5'3", "5'4", "5'5", "5'6", "5'7", "5'8", "5'9", "5'10", "5'11", "6'0", "6'1", "6'2", "6'3", "6'4", "6'5"].sample }
    weight { Faker::Number.between(110, 220) }
    highlight_video_link { Faker::Internet.url }
    full_game_link { Faker::Internet.url }
    sat_score { Faker::Number.between(700, 1600) }
    act_score { Faker::Number.between(10, 40) }
  end
end
