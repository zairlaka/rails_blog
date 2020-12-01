#rake db:seed:dump APPEND=true
#rake db:seed:dump MODELS=User
#
# ps -ef | grep postgres


User.create!([
  {email: "zair@blog.com", password: "pass123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: nil, confirmed_at: "2019-07-17 14:57:00", confirmation_sent_at: nil, isadmin: false, username: "zair", image: nil},
  {email: "user2@blog.com", password: "pass123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: nil, confirmed_at: "2019-07-17 14:57:00", confirmation_sent_at: nil, isadmin: false, username: "user2", image: nil},
  {email: "hello@gmail.com", password: "pass123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: "Tw1mh8mpsq-sSkM_h12x", confirmed_at: nil, confirmation_sent_at: "2019-07-19 07:46:48", isadmin: false, username: "hello", image: nil},
  {email: "muhammadzair@techcreatix.com", password: "pass123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: "aGZq4-b7Sx_GmgyBNRrH", confirmed_at: "2019-07-23 13:54:17", confirmation_sent_at: "2019-07-23 13:53:19", isadmin: true, username: "admin", image: nil},
  {email: "hello1@gmail.com", password: "pass123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: "ve4n5CzExbGk8SqpeikH", confirmed_at: nil, confirmation_sent_at: "2019-07-19 13:47:48", isadmin: false, username: "hello1", image: nil},
  {email: "test@test.com", password: "pass123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: "i99NmPLXbkp-H64yTu2N", confirmed_at: nil, confirmation_sent_at: "2019-07-23 07:13:45", isadmin: false, username: "test", image: nil},
  {email: "username@blog.com", password: "pass123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: "VKPbTNZp3cSZgbhx_-TC", confirmed_at: nil, confirmation_sent_at: "2019-08-01 07:47:07", isadmin: false, username: "username ", image: nil},
  {email: "hitachi.xoxoxo@gmail.com", password: "pass123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: "MJL7Hb2z9QEVRvcX9R9T", confirmed_at: "2019-08-01 11:05:33", confirmation_sent_at: "2019-08-01 11:04:37", isadmin: false, username: "Salman Dost", image: nil}
])
Category.create!([
  {name: "Tech"},
  {name: "Cricket"},
  {name: "Music"},
  {name: "Cooking"}
])
Post.create!([
                 {title: "Bug of the Match", body: "<h1>World Cup</h1><p>The umpires made an \"error of judgement\" in awarding six runs, instead of five, to England for the overthrow that hit Ben Stokes' bat and ran to the boundary, says Simon Taufel, confirming the story that ESPNcricinfo broke right after the World Cup 2019 final. Currently part of the MCC's laws sub-committee that makes the rules governing cricket, Taufel told foxsports.com.au that England should have been awarded five runs, not six.\r\n\r\n\"It's a clear mistake.. it's an error of judgment,\" Taufel said. \"They (England) should have been awarded five runs, not six.\"</p>", user_id: 1, category_id: 2, image: "something.jpg"},
                 {title: "Do the Laravel", body: "<h1><b>Laravel</b></h1><p><br></p><p> is a web application framework with an expressive, elegant syntax. We believe development must be an enjoyable, creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as authentication, routing, sessions, and caching.\r\n\r\nLaravel aims to make the development process a pleasing one for the developer without sacrificing application functionality. Happy developers make the best code. To this end, we've attempted to combine the very best of what we have seen in other web frameworks, including frameworks implemented in other languages, such as <b>Ruby on Rails, ASP.NET MVC, and Sinatra.</b></p>", user_id: 2, category_id: 1, image: "something.jpg"},
                 {title: "Coke Studio", body: "<h1><span style=\"font-family: inherit; color: rgb(51, 51, 51);\"><b>Coke Studio</b></span><br></h1><p><span style=\"color: rgb(51, 51, 51);\"><br></span></p><p style=\"margin-left: 25px;\"><span style=\"color: rgb(51, 51, 51);\">is a Pakistani television program and international music franchise which features live studio-recorded music performances by established and emerging artists. It is the longest-running annual television music show in Pakistan since 2008.</span></p><p style=\"margin-left: 25px;\"><span style=\"color: rgb(51, 51, 51);\"><br></span></p><p><span style=\"color: rgb(51, 51, 51);\"><br></span></p><p><span style=\"color: rgb(51, 51, 51);\"><br></span></p><p><span style=\"color: rgb(51, 51, 51);\"><br></span></p><p><span style=\"color: rgb(51, 51, 51);\"><br></span></p><p><span style=\"color: rgb(51, 51, 51);\"><br></span></p><p><span style=\"color: rgb(51, 51, 51);\"><br></span></p>", user_id: 2, category_id: 3, image: "something.jpg"},
                 {title: "Roar the ROR", body: "<h1>ROR</h1><h1></h1>#Don't Repeat Yourself:\r\n DRY is a principle of software development which states that \"Every piece of knowledge must have a single, unambiguous, authoritative representation within a system.\" By not writing the same information over and over again, our code is more maintainable, more extensible, and less \r\n#Convention Over Configuration:\r\nRails have opinions about the best way to do many things in a web application, and defaults to this set of conventions, rather than require that you specify minutiae through endless configuration files.\r\n\r\n", user_id: 1, category_id: 1, image: "something.jpg"},
                 {title: "Biryani", body: "<div><h1>NewYork Biryani</h1>Marinate 1 kg Chicken with 2 tbsp brown onion, 1 tbsp National Ginger Garlic Paste, ½ tsp grated papaya, ½ pack National Sindhi Biryani Masala, 1 tbsp National Red Chili powder, mint leaves, 2 tbsp of lemon juice, salt, let it rest in the refrigerator for at least 1-2 hours.</div><div>Soak rice well for at least 1 hour. Wash rice well and boil rice with black cumin, 2-3 cloves, 3-4 cardamom, 2-3 cinnamon sticks, 4-6 black pepper cloves, 3-4 bay leaf and mint leaves. Once done, half drain them in colander and keep them aside.</div><div>Cook marinated chicken on low flame with 1 cup of cooking oil till chicken pieces are tender and chicken is done. Once cooked set it aside. Generally, it takes around 8-10 minutes for chicken to become tender and cooked.</div><div>Now take a deep pan, grease it with cooking oil and add half serving of steamed rice, top it up with cooked chicken, top chicken with mint leaves, brown onion and lemon juice and then layer it with other half of the rice on top. Garnish again with mint leaves, brown onion.</div><div>Mix warm milk with saffron color and pour over the flavorful garnished rice and squeeze lemon juice on top and cover it with lid and let it simmer on low flame for 10 minutes at least.</div><div>Once done mix it with quarter plate from all four sides and serve delicious Hyderabadi Biryani in a nice rice plate topped with some crisp brown onion and fresh mint leaves along with Yogurt raita and some National mixed pickles and salad.</div>", user_id: 4, category_id: 4, image: "something.jpg"},
                 {title: "Sushi", body: "<p style=\"margin-bottom: 5px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background: transparent; color: rgb(68, 68, 68); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, verdana, arial, helvetica, clean, sans-serif;\"><span style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Uramaki&nbsp;</span>is makizushi that’s inverted with rice on the outside of the roll, rather than nori. Usually, when making makizushi, a sheet of nori is placed first on the bamboo mat, followed by sushi rice and then the fillings. But for uramaki, rice is the layer closest to the bamboo mat, followed by nori, and then the fillings. The finished roll can be sprinkled with white or black sesame seeds or&nbsp;<span style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">tobiko&nbsp;</span>(flying fish roe) before slicing.</p><div><br></div>", user_id: 4, category_id: 4, image: "something.jpg"}
             ])
Comment.create!([
  {name: "DaveDev", message: "Personally, I like the ruby because of its robustness and flexibility.", post_id: 1},
  {name: "Fresher", message: "but for newcomers, it is very hard to digest the smartness and conventions of the ROR, and I felt dumb in beginning.", post_id: 1},
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
  {post_id: 3, user_id: 4},
  {post_id: 4, user_id: 4}
])

Relationship.create!([
  {follower_id: 1, followed_user_id: 4},
  {follower_id: 2, followed_user_id: 4},
  {follower_id: 4, followed_user_id: 1}
])
#rake db:seed:dump APPEND=true
#rake db:seed:dump MODELS=User
#
# ps -ef | grep postgres
# if above line won't work in windows
# just restarting the service: postgresql-x64-9.5
Tag.create!([
  {name: "Food"},
  {name: "Sport"},
  {name: "Fashion"},
  {name: "Tech"},
  {name: "Music"},
  {name: "Code"},
  {name: "ROR"},
  {name: "JS"}
])
Tagging.create!([
  {tag_id: 5, post_id: 4},
  {tag_id: 6, post_id: 2},
  {tag_id: 7, post_id: 2},
  {tag_id: 6, post_id: 3},
  {tag_id: 1, post_id: 5},
  {tag_id: 2, post_id: 1},
  {tag_id: 1, post_id: 6}
])
