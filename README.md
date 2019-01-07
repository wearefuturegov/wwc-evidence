[![Build Status](http://img.shields.io/circleci/project/github/wearefuturegov/wwc-evidence.svg?style=flat-square)](https://circleci.com/gh/wearefuturegov/wwc-evidence)
[![Coverage Status](http://img.shields.io/coveralls/wearefuturegov/wwc-evidence.svg?style=flat-square)](https://coveralls.io/r/wearefuturegov/wwc-evidence)
[![License](http://img.shields.io/:license-apache-blue.svg?style=flat-square)](http://www.apache.org/licenses/LICENSE-2.0.html)


# What Works Centre - Evidence Store

A Rails app to show reviews carried out by the [What Works Centre for Children's Social Care](https://whatworks-csc.org.uk/) of children's social care interventions.

# Development

## Prerequisites

* PostgreSQL
* Ruby 2.4+

## Setup

### Clone the repo

```
git clone https://github.com/wearefuturegov/hackney-fostering.git
```

### Install dependencies

```
bundle install
```

### Setup database

```
bundle exec db:setup
```

### Run server

```
bundle exec rails s
```

The server is now running at http://localhost:3000

## CMS

The evidence store has a CMS located at `/admin`. The seed task sets up a user with the username `dev@wearefuturegov.com` and password `Password123`. You can set up additional users in the admin too.
