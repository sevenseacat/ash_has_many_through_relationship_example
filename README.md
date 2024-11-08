# Ash `through` relationship example

An example showing how to create a `through` relationship, demonstrated with countries, regions, cities, and landmarks.

I wrote more about this in a blog post, [Modelling `through` relationships with Ash](http://sevenseacat.net/posts/2024/through-relationships-with-ash/)

## Setup

```
$ git clone git@github.com:sevenseacat/ash_through_relationship_example.git
$ cd ash_through_relationship_example
$ mix deps.get
```

## Run

```
$ mix ash.setup
$ mix run priv/repo/seeds/*.exs
```

Then you can test queries in `iex`, eg:

```iex
iex(1) Ash.get!(Example.World.Country, %{name: "Australia"}, load: [:city_count])
```
