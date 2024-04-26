# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all
Tag.delete_all
PostTag.delete_all


usr1 = User.create!(name: 'John Doe', email: 'jperez@example.com', password: '782365235')
usr2 = User.create!(name: 'Lionel Andrés Messi Cuccittini', email: 'leomessi@gmail.com', password: '325255266')
usr3 = User.create!(name: 'Alexis Alejandro Sánchez Sánchez', email: 'alexissanchez@gmail.com', password: '356275762')
usr4 = User.create!(name: 'Andrés Herrera', email: 'aaherrera4@miuandes.cl', password: '82758257')
usr5 = User.create!(name: 'Juan Garcia', email: 'illojuan@vizz-agency.com', password: '89347892')


Post.create!(
    title: 'Te va a caé',
    content: 'Se cayó',
    user_id: usr5.id,
    published_at: Time.now,
    answers_count: 199999,
    likes_count: 4124
)

Post.create!(
    title: 'El mejor post',
    content: 'Este es el contenido del mejor post del mundo',
    user_id: usr2.id,
    published_at: Time.now,
    answers_count: 42444,
    likes_count: 4242
)

Post.create!(
    title: 'El peor post',
    content: 'Este es el peor contenido que he visto en mi vida',
    user_id: usr4.id,
    published_at: Time.now,
    answers_count: 23653,
    likes_count: 4254
)

Post.create!(
    title: 'Post 1',
    content: 'First post ever',
    user_id: usr1.id,
    published_at: Time.now,
    answers_count: 325628,
    likes_count: 35372
)

Post.create!(
    title: 'Campeon de America',
    content: 'Contenido sobre el dia que Chile salio campeon de américa',
    user_id: usr3.id,
    published_at: Time.now,
    answers_count: 25552,
    likes_count: 7938
)

Post.create!(
    title: 'Campeón del Mundo',
    content: 'Argentina Campeón del Mundo',
    user_id: usr2.id,
    published_at: Time.now,
    answers_count: 62352,
    likes_count: 35223522
)

Post.create!(
    title: 'Chile Alma Soul',
    content: 'Videos del viñedo ALMA SOUL',
    user_id: usr3.id,
    published_at: Time.now,
    answers_count: 32467,
    likes_count: 4534
)

Post.create!(
    title: 'Se cayó',
    content: 'Respuesta a te va a cae',
    user_id: usr4.id,
    published_at: Time.now,
    answers_count: 42,
    likes_count: 4144
)

Post.create!(
    title: 'La Receta',
    content: 'Una receta de como hacer galletas',
    user_id: usr5.id,
    published_at: Time.now,
    answers_count: 345,
    likes_count: 523535
)

Post.create!(
    title: 'My last post',
    content: 'Una carta hacia los fans agradeciendo',
    user_id: usr1.id,
    published_at: Time.now,
    answers_count: 99999,
    likes_count: 1
)


Tag.create(name: "Fútbol")
Tag.create(name: "Memes")
Tag.create(name: "Food")
Tag.create(name: "Winner")
Tag.create(name: "Tag 1")

PostTag.create(post_id: 5, tag_id: 1)
PostTag.create(post_id: 6, tag_id: 1)
PostTag.create(post_id: 7, tag_id: 1)
PostTag.create(post_id: 2, tag_id: 1)
PostTag.create(post_id: 9, tag_id: 2)
PostTag.create(post_id: 10, tag_id: 2)
PostTag.create(post_id: 7, tag_id: 3)
PostTag.create(post_id: 7, tag_id: 1)
PostTag.create(post_id: 7, tag_id: 4)
PostTag.create(post_id: 8, tag_id: 2)
PostTag.create(post_id: 4, tag_id: 5)
PostTag.create(post_id: 1, tag_id: 2)
PostTag.create(post_id: 3, tag_id: 2)