# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

   Dieta.create(nome:"Hipertrofia", cafe:"Pão com Queijo / Vitaminas / Iorgute", 
   			  almoco:"Arroz / Feijão / Batata Doce / Frango", lanche: "Vitamina / Café com Leite / Tapioca",
   			  jantar:"Arroz / Feijão / Salada de Crus",
   			  bebida:"Sucos de Fruta", extra: "Whey Protein", kcal: 2450
   			  )


   Dieta.create(nome:"Emagrecimento", cafe:"Leite Desanatado / Vitaminas (sem açúcar) / Iorgute Desnatado", 
   			  almoco:"Peixe / Salada Cozida / Sopa / Salada de Crus", lanche: "Fruta / Chá / Omelete",
   			  jantar:"Peito de Frango / Sopa de Feijão / Salada de Crus",
   			  bebida:"Sucos de Fruta", extra: "Sopa Detox", kcal: 1100
   			  )

