web: RAILS_MAX_THREADS=5 bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
release: bundle exec rails db:migrate
