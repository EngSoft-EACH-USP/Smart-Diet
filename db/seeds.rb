# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

   
   Dieta.create(nome:"Emagrecimento", cafe:"Leite Desanatado / Vitaminas (sem açúcar) / Iorgute Desnatado", 
              almoco:"Peixe / Salada Cozida / Sopa / Salada de Crus", lanche: "Fruta / Chá / Omelete",
              jantar:"Peito de Frango / Sopa de Feijão / Salada de Crus",
              bebida:"Sucos de Fruta", extra: "Sopa Detox", kcal: 1100
              )

   Dieta.create(nome:"Super Fit", cafe:"Iorgute Desnatado / Banana Fatiada / Queijo Branco", 
              almoco:"Arroz Integral / Filé de Frango / Salada de Cenoura", lanche: "Maçã / Suco / Torrada",
              jantar:"Arroz Integral / Feijão / Vegetais Cozidos",
              bebida:"Sucos de Fruta", extra: "Suco Detox", kcal: 1400
              )

   Dieta.create(nome:"Equilibrada", cafe:"Torrada / Café com Leite / Tapioca",  almoco: "Arroz Integral / Legumes Refogados / Filé de Frango / Salada Verde / Feijão", 
               lanche: "Fruta / Iourgute Desnatado / Queijo Branco",
              jantar:"Arroz Integral / Feijão / Peixe / Verduras",
              bebida:"Sucos de Fruta", extra: "Água em abundânica", kcal: 1900
              )

   Dieta.create(nome:"Hipertrofia", cafe:"Pão com Queijo / Vitaminas / Iorgute", 
   			  almoco:"Arroz / Feijão / Batata Doce / Frango", lanche: "Vitamina / Café com Leite / Tapioca",
   			  jantar:"Arroz / Feijão / Salada de Crus",
   			  bebida:"Sucos de Fruta", extra: "Whey Protein", kcal: 2450
   			  )

   
   Dieta.create(nome:"Monstro", cafe:"Pão com Ovo e Queijo / Café com Leite / Tapioca de Frango", almoco:"Arroz Integral / Purê de Batata Doce / 150g de Carne", 
               lanche: "Vitamina de Abacate com Aveia / Sanduíche de Frango / Iourgute",
               jantar: "Macarronada / Feijão / Legumes Refogados / Salada Verde / Arroz",
              bebida:"Sucos de Fruta", extra: "Whey Protein", kcal: 2900
              )
