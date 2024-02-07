### Open the Rails console inside a project
```
rails console
# or
rails c
```
**Now testing the connection with database**
```
# Article is the class name
Article.all
```
```
irb(main):001> Article.all
```
Rails generated this query for articles table
```
  Article Load (0.1ms)  SELECT "articles".* FROM "articles" /* loading for pp */ LIMIT ?  [["LIMIT", 11]]
=> []
```

### Add records to db

**1. Create a record**
```
irb(main):002> Article.create(title: "Some title", description: "Some desc")
```
Rails generated this query for articles table
```
TRANSACTION (0.0ms)  begin transaction

Article Create (0.4ms)  INSERT INTO "articles" ("title", "created_at", "updated_at", "description") VALUES (?, ?, ?, ?) RETURNING "id"  [["title", "Some title"], ["created_at", "2024-02-07 10:14:26.239223"], ["updated_at", "2024-02-07 10:14:26.239223"], ["description", "Some desc"]]

TRANSACTION (0.1ms)  commit transaction
```
```
=> 
#<Article:0x00007f849a9aa210
 id: 1,
 title: "Some title",
 created_at: Wed, 07 Feb 2024 10:14:26.239223000 UTC +00:00,
 updated_at: Wed, 07 Feb 2024 10:14:26.239223000 UTC +00:00,
 description: "Some desc">
```
**2. Another way (preffered way) of creating records is using variables**
```
irb(main):004> article = Article.new
```
```
=> #<Article:0x00007f8499cba780 id: nil, title: nil, created_at: nil, updated_at: nil, description: nil>
```
```
irb(main):005> article.title = "Second Article"
=> "Second Article"

irb(main):006> article.description = "Desc of Second Article"
=> "Desc of Second Article"
```

```
irb(main):007> article

=> #<Article:0x00007f8499cba780 id: nil, title: "Second Article", created_at: nil, updated_at: nil, description: "Desc of Second Article">
```

Now the nil fields will be filled when we save it to the database.
```
irb(main):008> article.save
```
```
TRANSACTION (0.0ms)  begin transaction

Article Create (0.4ms)  INSERT INTO "articles" ("title", "created_at", "updated_at", "description") VALUES (?, ?, ?, ?) RETURNING "id"  [["title", "Second Article"], ["created_at", "2024-02-07 10:46:22.912244"], ["updated_at", "2024-02-07 10:46:22.912244"], ["description", "Desc of Second Article"]]

TRANSACTION (0.1ms)  commit transaction

=> true
```

**2. A third way of creating records is using variables**
```
> article = Article.new(title: "Third article", description: "a new description")

> article.save
```

## Fint a particular article
```
Article.find(2)
# Here 2 is the id
```
Similarly...
```
Article.first   # gives the first article
Article.last    # gives the last article
```

## To delete an article
```
article.find(2)

article.destroy
```
It will hit the db an delete the article from there.

