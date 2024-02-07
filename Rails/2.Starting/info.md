### To start the server
```bash
rails server
# or
rails s
```

### Generate a new controller
```
rails generate controller pages
# or
rails g controller pages
```
This will create a controller named 'pages'

### Scaffold genereator
```
rails generate scaffold Article title:string description:text
# or
rails g scaffold Article title:string description:text
```

### Generate migration file
```
rails generate migration create_articles
# or
rails g migration create_articles
```

### migrate & rollback
**To migrate:**
```
rails db:migrate
```
**To rollback:**
```
rails db:rollback
# it will rollback the last migration
```

**Use a migration file to create a table**
```
rails db:migrate
```

### Check all the routes
```
rails routes
# or
rails routes --expanded
```

### Naming Convenions
Table Name: articles
Model Name: article
Article model file name: article.rb
Article model class name: Article