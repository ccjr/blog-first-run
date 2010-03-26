user = User.create :email => 'mary@example.com', :password => 'guessit'

Category.create [{:name => 'Programming'},
                 {:name => 'Event'},
                 {:name => 'Travel'},
                 {:name => 'Music'},
                 {:name => 'TV'}]

user.articles.create [{:title => 'Advanced ActiveRecord', :body => 'Models need to relate to each other. In the real world, bank accounts have transactions, books belong to authors, and products have categories. We refer to these relationships as associations, and Active Record makes them easy to work with. Models also have requirements.', :published_at => 1.week.ago}, {:title => 'One-to-many associations', :body => 'One-to-many associations describe a pattern ..', :published_at => 1.week.ago}, {:title => 'Associations', :body => 'Active Record makes working with associations easy..', :published_at => 1.week.ago}, {:title => 'Attending Rails Workshop', :body => "I'm attending a Ruby on Rails workshop in Miami this summer", :published_at => 1.week.ago}]

Article.last.comments.create(:email => 'john@example.com', :name => 'John Smith', :body => 'Good for you, enjoy the nice weather.')
