module DemoPagesHelper
  def exercise_desc
    Faker::Lorem.sentence(25);

  end
  def random_name
    Faker::Name.name
  end

  def random_email
    Faker::Internet.email(random_name)
  end

  def random_lorem(max_words)
    Faker::Lorem.sentence(20+Random.rand(max_words))
  end
end
