# Flipper Test App

Dummy rails app. It's based on Rails 6 and Ruby 2.6.

## Setup

This template comes with:
- Set your db credentials in database.yml
- Install gems and bundler
- Create database and migrate
- Run rails console:
```
 SERVER_URL=https://a9049493e30a.ngrok.io SECRET_KEY_BASE=lkansdknasjnbdjabdskjabjksdb PASSWORD_RESET_URL=https://a9049493e30a.ngrok.io rails s
```
- Go into rails console and:

```
# Create admin user
AdminUser.create(email: 'admin@example.com', password: 'asdfasdf', password_confirmation: 'asdfasdf')

# Create feature and a group
FlipperFeature.create(key: 'stats')
Flipper.register(:admins) { |thing| thing.admin? }
feature = Flipper[:stats]
feature.enable_group :admins
admin = AdminUser.last
feature.enabled? admin => true

# now quit rails console and enter again then try:

admin = AdminUser.last
feature = Flipper[:stats]
feature.enabled? admin => false
```
