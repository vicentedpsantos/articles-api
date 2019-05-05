# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.create([
  { title: 'Article number one', content: 'Content number one', slug: 'article-slug-1' },
  { title: 'Article number two', content: 'Content number two', slug: 'article-slug-2' },
  { title: 'Article number three', content: 'Content number three', slug: 'article-slug-3' }
])
