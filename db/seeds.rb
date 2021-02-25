User.destroy_all
TransactionType.destroy_all
Transaction.destroy_all

tom = User.create(name: "tom")
jerry = User.create(name: "jerry")

gas = TransactionType.create(category: "gas")
grocery = TransactionType.create(category: "grocery")

trans1 = tom.transactions.build(amount: 30, description: "gas", transaction_type: gas)
trans1.save
trans2  = tom.transactions.build(amount: 100, description: "groceries", transaction_type: grocery)
trans2.save
trans3 = jerry.transactions.build(amount: 40, description: "gas station", transaction_type: gas)
trans3.save
trans4 = jerry.transactions.build(amount: 150, description: "king soopers", transaction_type: grocery)
trans4.save