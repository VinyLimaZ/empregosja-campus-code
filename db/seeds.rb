# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category = Category.create(name: 'Desenvolvedor Mobile')
category2 = Category.create(name: 'Analista QA')

company = Company.create(name: 'Campus Code',
                         location: 'São Paulo',
                         mail: 'contato@campus.com.br',
                         phone: '2369-3476')

company2 = Company.create(name: 'Google',
                         location: 'São Paulo',
                         mail: 'contato@google.com.br',
                         phone: '2369-9999')

job = Job.create(title: 'Dev Master',
                 location: 'Rio de Janeiro',
                 company: company,
                 category: category,
                 description: 'Vaga para Dev Master para Bootcamp Rails')

another_job = Job.create(title: 'Dev Java Senior',
                         location: 'São Paulo',
                         company: company2,
                         category: category2,
                         description: 'Dev com experiência em Java 8')
