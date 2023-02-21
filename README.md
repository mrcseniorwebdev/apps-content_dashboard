# Autotweeter -- svelte Docs


### To run
Make sure both /server/ && /client/ have .env files (server .env may be empty, docker still needs it)


##### dev
```console
nvm use 16
cd ./client && npm i && cd ../server && npm i && cd ..
```
```console
docker-compose -f dev-docker-compose.yml up
```
If you have the new docker it will be

```console
docker compose -f dev-docker-compose.yml up
```

If you add dependencies to either client or server you may need to run to see the changes reflected
```console
docker-compose -f dev-docker-compose.yml up --build --force-recreate
```

After spinning up the development environment the first time you should comment out these lines from `/db_init/init.sql`
```sql
INSERT INTO users (email) VALUES ('jjones@mrc.org');
INSERT INTO users (email) VALUES ('mgeis@mrc.org');
```
This will prevent the user table from having multiple entries for these email.

##### client/.env
MARIA_DB_USER=XXX
MARIA_DB_PASS=XXX
COOKIE_KEY=XXX
NODE_ENV=XXX
GOOGLE_CLIENT_ID=XXX
GOOGLE_CLIENT_SECRET=XXX
AUTH_SECRET=XXX
AUTH_TRUST_HOST=XXX

##### prod

### API Links
To get the content use these api links:
Newsbusters: https://newsbusters.org/api/at/nb
Will grab the correct content from the last 48 hours

Newsbusters: https://newsbusters.org/api/at/nb?created=-3+hours+48+minutes

CNSNews: https://cnsnews.com/api/at/cns
CNSNews: https://cnsnews.com/api/at/cns?created=-3+hours+48+minutes

MRCTV: https://www.mrctv.org/api/at/mrctv
MRCTV: https://www.mrctv.org/api/at/mrctv?created=-3+hours+48+minutes


Adding the `created` paramater youll be able to get just the newest items. The correct formatting should be grabbed from the most recent import.
Without the created query parameter `created` the apis will default to last 48 hours.


### Authentication

This was absolutley abysmal to figure out. I basically ripped everything I needed out of this project https://github.com/jchanes04/flashchem
Currently the project is configured to redirect all routes to `/autotweet/auth` when not logged in.
The only path you can see if you are logged in is `/autotweet/dashboard`. 

### Doing the backend processes
The idea is to have a seperate container where will put the backend logic for keeping track of tweets and when to tweet/delete them.
We will execute these files/processes using a cronjob 

The process should go as follows:

For each Twitter account
 - Check an see if its time to purge the current tweet queue -- (currtime > `end_time` && `purge_time` > (currtime - 23hrs))
    - if we purge, start the refill process
        - Call the default api and create queue items for each blog
 - if (currtime > `start_time` && currtime > `next_tweet_time` && currtime < `end_time`)
    - pop off the next item in the queue and tweet that shit
        - if we tweet, update `next_tweet_time` with currtime + `stagger_time`
 - call the default api with the created url query equal to -







