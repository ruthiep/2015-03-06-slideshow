# DATABASE.results_as_hash = true

DATABASE = SQLite3::Database.new("database/slideshow.db")

DATABASE.execute("CREATE TABLE IF NOT EXISTS slides (id INTEGER PRIMARY KEY, title TEXT NOT NULL,
                  body TEXT, listOrder INTEGER)")

if DATABASE.execute("SELECT * FROM slides") == []
    DATABASE.execute("INSERT INTO slides (title, body, listOrder)
    VALUES 
    ('Page One', 'this is something really cool', 1),
    ('Page Two', 'and this is cool too', 2),
    ('Page Three', 'and last but not least', 3)")  
  end
