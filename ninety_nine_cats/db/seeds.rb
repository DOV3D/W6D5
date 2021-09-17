# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
ApplicationRecord.connection.reset_pk_sequence!('cats')

c1 = Cat.create(birth_date: "2012/01/12", name: "Kevin", description: "Hello", sex: "M", color: "brown")
c2 = Cat.create(birth_date: "2018/03/15", name: "Billy", description: "beautiful cat", sex: "F", color: "tuxedo")
c3 = Cat.create(birth_date: "2019/03/11", name: "Covid", description: "smelly cat", sex: "M", color: "black")

