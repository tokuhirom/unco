CREATE TABLE feed (
       id INTEGER NOT NULL PRIMARY KEY,
       title TEXT,
       rss_url TEXT
);

CREATE TABLE entry (
       id INTEGER NOT NULL PRIMARY KEY,
       feed INTEGER NOT NULL,
       page INTEGER NOT NULL,
       date INTEGER
);
CREATE UNIQUE INDEX entry_feed_page ON entry (feed, page);

CREATE TABLE page (
       id INTEGER NOT NULL PRIMARY KEY,
       url TEXT,
       title TEXT,
       body TEXT,
       hatena_bookmark_count INT,
       date INTEGER
);
CREATE UNIQUE INDEX page_url ON page (url);

