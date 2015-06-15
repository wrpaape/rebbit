#Rebbit
###Description
- Build Reddit (bookmarks and voting in Rails using Forms and relationships)

###Requirements
- Ruby v2.2.0p0 installed globally or to the app directory

###Heroku App
- <a>https://num1rebbitna.herokuapp.com</a>

###Setup
- Fork this repo
- Clone this repo
- Enter the following in the terminal under the path of your cloned directory:

```
$ rake db:create
$ rake db:migrate
$ rake db:setup
```
- Now you can turn on the rails server

```
$ rails s
```
- You should then be able to open the app in your browser by entering the following url:  <a>http://localhost:3000</a>

- For a detailed description on how to interact with the server database check the specifications set in the assignment at <a>https://tiy-classroom.herokuapp.com/assignments/41</a>

###Topics
- Be able to utilize Forms in Rails
- Be able to add custom routes to your resources

###Takeaway

- there has to be a faster way of swapping between dozens of files in sublime text editor

###Contents of this Repo

```
.
├── Gemfile
├── Gemfile.lock
├── Procfile
├── README.md
├── README.rdoc
├── Rakefile
├── app
│   ├── assets
│   │   ├── images
│   │   │   └── rebbitor.png
│   │   ├── javascripts
│   │   │   ├── application.js
│   │   │   ├── bootstrap.js.coffee
│   │   │   ├── comments.coffee
│   │   │   ├── posts.coffee
│   │   │   ├── sessions.coffee
│   │   │   ├── subrebbits.coffee
│   │   │   ├── users.coffee
│   │   │   ├── votes.coffee
│   │   │   └── welcome.coffee
│   │   └── stylesheets
│   │       ├── application.css.scss
│   │       ├── comments.scss
│   │       ├── posts.scss
│   │       ├── sessions.scss
│   │       ├── subrebbits.scss
│   │       ├── users.scss
│   │       ├── votes.scss
│   │       └── welcome.scss
│   ├── controllers
│   │   ├── application_controller.rb
│   │   ├── comments_controller.rb
│   │   ├── concerns
│   │   ├── posts_controller.rb
│   │   ├── sessions_controller.rb
│   │   ├── subrebbits_controller.rb
│   │   ├── users_controller.rb
│   │   ├── votes_controller.rb
│   │   └── welcome_controller.rb
│   ├── helpers
│   │   ├── application_helper.rb
│   │   ├── comments_helper.rb
│   │   ├── posts_helper.rb
│   │   ├── sessions_helper.rb
│   │   ├── subrebbits_helper.rb
│   │   ├── users_helper.rb
│   │   ├── votes_helper.rb
│   │   └── welcome_helper.rb
│   ├── mailers
│   ├── models
│   │   ├── comment.rb
│   │   ├── concerns
│   │   ├── post.rb
│   │   ├── subrebbit.rb
│   │   ├── user.rb
│   │   └── vote.rb
│   └── views
│       ├── comments
│       │   ├── create.html.erb
│       │   ├── destroy.html.erb
│       │   ├── edit.html.erb
│       │   ├── index.html.erb
│       │   ├── new.html.erb
│       │   ├── show.html.erb
│       │   └── update.html.erb
│       ├── layouts
│       │   └── application.html.erb
│       ├── posts
│       │   ├── create.html.erb
│       │   ├── destroy.html.erb
│       │   ├── edit.html.erb
│       │   ├── index.html.erb
│       │   ├── new.html.erb
│       │   ├── show.html.erb
│       │   └── update.html.erb
│       ├── sessions
│       │   └── new.html.erb
│       ├── subrebbits
│       │   ├── create.html.erb
│       │   ├── destroy.html.erb
│       │   ├── edit.html.erb
│       │   ├── index.html.erb
│       │   ├── new.html.erb
│       │   ├── show.html.erb
│       │   └── update.html.erb
│       ├── users
│       │   ├── create.html.erb
│       │   ├── destroy.html.erb
│       │   ├── edit.html.erb
│       │   ├── index.html.erb
│       │   ├── new.html.erb
│       │   ├── show.html.erb
│       │   └── update.html.erb
│       ├── votes
│       └── welcome
│           ├── about.html.erb
│           └── index.html.erb
├── bin
│   ├── bundle
│   ├── rails
│   ├── rake
│   ├── setup
│   └── spring
├── config
│   ├── application.rb
│   ├── boot.rb
│   ├── database.yml
│   ├── environment.rb
│   ├── environments
│   │   ├── development.rb
│   │   ├── production.rb
│   │   └── test.rb
│   ├── initializers
│   │   ├── assets.rb
│   │   ├── backtrace_silencers.rb
│   │   ├── cookies_serializer.rb
│   │   ├── filter_parameter_logging.rb
│   │   ├── inflections.rb
│   │   ├── mime_types.rb
│   │   ├── session_store.rb
│   │   └── wrap_parameters.rb
│   ├── locales
│   │   ├── en.bootstrap.yml
│   │   └── en.yml
│   ├── routes.rb
│   └── secrets.yml
├── config.ru
├── db
│   ├── migrate
│   │   ├── 20150611201747_create_users.rb
│   │   ├── 20150611201748_create_subrebbits.rb
│   │   ├── 20150611201749_create_posts.rb
│   │   ├── 20150611201750_create_comments.rb
│   │   └── 20150614030306_create_votes.rb
│   ├── schema.rb
│   └── seeds.rb
├── lib
│   ├── assets
│   └── tasks
├── log
│   └── development.log
├── public
│   ├── 404.html
│   ├── 422.html
│   ├── 500.html
│   ├── favicon.ico
│   └── robots.txt
├── test
│   ├── controllers
│   │   ├── comments_controller_test.rb
│   │   ├── posts_controller_test.rb
│   │   ├── sessions_controller_test.rb
│   │   ├── subrebbits_controller_test.rb
│   │   ├── users_controller_test.rb
│   │   ├── votes_controller_test.rb
│   │   └── welcome_controller_test.rb
│   ├── fixtures
│   │   ├── comments.yml
│   │   ├── posts.yml
│   │   ├── subrebbits.yml
│   │   ├── users.yml
│   │   └── votes.yml
│   ├── helpers
│   ├── integration
│   ├── mailers
│   ├── models
│   │   ├── comment_test.rb
│   │   ├── post_test.rb
│   │   ├── subrebbit_test.rb
│   │   ├── user_test.rb
│   │   └── vote_test.rb
│   └── test_helper.rb
├── tmp
│   ├── cache
│   │   └── assets
│   │       └── development
│   │           └── sprockets
│   │               └── v3.0
│   ├── pids
│   ├── sessions
│   └── sockets
└── vendor
    └── assets
        ├── javascripts
        └── stylesheets
```

