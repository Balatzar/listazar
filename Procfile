web:        bundle exec rails s -p $PORT
worker:     bundle exec sidekiq -c 5
postdeploy: bundle exec rake db:migrate && bundle exec honeybadger deploy --environment=production --revision=$CONTAINER_VERSION --repository=github --user=balthazar
