User.create!([
  {email: "zair@blog.com", password: "pass123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: nil, confirmed_at: "2019-07-17 14:57:00", confirmation_sent_at: nil, isadmin: false, username: "zair"},
  {email: "user2@blog.com", password: "pass123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: nil, confirmed_at: "2019-07-17 14:57:00", confirmation_sent_at: nil, isadmin: false, username: "user2"},
  {email: "hello@gmail.com", password: "pass123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: "Tw1mh8mpsq-sSkM_h12x", confirmed_at: nil, confirmation_sent_at: "2019-07-19 07:46:48", isadmin: false, username: "hello"},
  {email: "muhammadzair@techcreatix.com", password: "admin123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: "aGZq4-b7Sx_GmgyBNRrH", confirmed_at: "2019-07-23 13:54:17", confirmation_sent_at: "2019-07-23 13:53:19", isadmin: true, username: "admin"},
  {email: "hitachi.xoxoxo@gmail.com", password: "pass123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: "cS_8V2tztxq9NyFjBQu4", confirmed_at: "2019-07-19 12:48:27", confirmation_sent_at: "2019-07-19 12:47:20", isadmin: false, username: "china"},
  {email: "hello1@gmail.com", password: "pass123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: "ve4n5CzExbGk8SqpeikH", confirmed_at: nil, confirmation_sent_at: "2019-07-19 13:47:48", isadmin: false, username: "hello1"},
  {email: "test@test.com", password: "pass123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: "i99NmPLXbkp-H64yTu2N", confirmed_at: nil, confirmation_sent_at: "2019-07-23 07:13:45", isadmin: false, username: "test"},
  {email: "username@blog.com", password: "pass123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, isadmin: false, username: "username "}
])
Category.create!([
                     {name: "Tech"},
                     {name: "Cricket"},
                     {name: "Music"},
                     {name: "Cooking"}
                 ])
Post.create!([
                 {title: "Bug of the Match", body: "The umpires made an \"error of judgement\" in awarding six runs, instead of five, to England for the overthrow that hit Ben Stokes' bat and ran to the boundary, says Simon Taufel, confirming the story that ESPNcricinfo broke right after the World Cup 2019 final. Currently part of the MCC's laws sub-committee that makes the rules governing cricket, Taufel told foxsports.com.au that England should have been awarded five runs, not six.\r\n\r\n\"It's a clear mistake.. it's an error of judgment,\" Taufel said. \"They (England) should have been awarded five runs, not six.\"", user_id: 1, category_id: 2},
                 {title: "Roar the ROR", body: "#Don't Repeat Yourself:\r\n DRY is a principle of software development which states that \"Every piece of knowledge must have a single, unambiguous, authoritative representation within a system.\" By not writing the same information over and over again, our code is more maintainable, more extensible, and less \r\n#Convention Over Configuration:\r\nRails have opinions about the best way to do many things in a web application, and defaults to this set of conventions, rather than require that you specify minutiae through endless configuration files.\r\n\r\n", user_id: 1, category_id: 1},
                 {title: "Do the Laravel", body: "Laravel is a web application framework with an expressive, elegant syntax. We believe development must be an enjoyable, creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as authentication, routing, sessions, and caching.\r\n\r\nLaravel aims to make the development process a pleasing one for the developer without sacrificing application functionality. Happy developers make the best code. To this end, we've attempted to combine the very best of what we have seen in other web frameworks, including frameworks implemented in other languages, such as Ruby on Rails, ASP.NET MVC, and Sinatra.", user_id: 2, category_id: 1},
                 {title: "Coke Studio", body: "Coke Studio is a Pakistani television program and international music franchise which features live studio-recorded music performances by established and emerging artists. It is the longest-running annual television music show in Pakistan since 2008.", user_id: 2, category_id: 3}
             ])
Comment.create!([
  {name: "DaveDev", message: "Personally, I like the ruby because of its robustness and flexibility.", post_id: 1},
  {name: "Fresher", message: "but for newcomers, it is very hard to digest the smartness and conventions of the ROR, and I fell dumb in beginning.", post_id: 1},
  {name: "Nooby", message: "what a biseness, I would say", post_id: 2},
  {name: "zair", message: "who cares!! unless you are a gambler :)", post_id: 2},
  {name: "PureSoul", message: "The best on earth.Rohail Hayat is the best composer of all time. <3", post_id: 4},
  {name: "PeaceArt", message: "can't find another match !", post_id: 4},
  {name: "pro", message: "it is like an Art for me. Best framework.", post_id: 3},
  {name: "vital", message: "agree", post_id: 3},
  {name: "Qasim", message: "what a blunder!!", post_id: 2}
])
Like.create!([
  {post_id: 2, user_id: 4},
  {post_id: 4, user_id: 1},
  {post_id: 3, user_id: 1},
  {post_id: 4, user_id: 4},
  {post_id: 3, user_id: 4}
])

Relationship.create!([
  {follower_id: 1, user_id: 4},
  {follower_id: 2, user_id: 4},
  {follower_id: 4, user_id: 1}
])
#rake db:seed:dump APPEND=true
#rake db:seed:dump MODELS=User
#
# ps -ef | grep postgres