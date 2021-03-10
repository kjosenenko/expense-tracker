Transaction.destroy_all
User.destroy_all
TransactionType.destroy_all

kj = User.create(name: "KJ")
shannon = User.create(name: "Shannon")

gas = TransactionType.create(category: "gas")
grocery = TransactionType.create(category: "grocery")

trans1 = kj.transactions.build(amount: 30, description: "gas", transaction_type: gas)
trans1.save
trans2  = kj.transactions.build(amount: 100, description: "groceries", transaction_type: grocery)
trans2.save
trans3 = shannon.transactions.build(amount: 40, description: "gas station", transaction_type: gas)
trans3.save
trans4 = shannon.transactions.build(amount: 150, description: "king soopers", transaction_type: grocery)
trans4.save