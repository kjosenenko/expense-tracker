Transaction.destroy_all
User.destroy_all
TransactionType.destroy_all

jeff = User.create(name: "Jeff")
walter = User.create(name: "Walter")
donny = User.create(name: "Donny")

gas = TransactionType.create(category: "Gas")
grocery = TransactionType.create(category: "Grocery")
clothing = TransactionType.create(category: "clothing")
utilities = TransactionType.create(category: "Utilities")
dining = TransactionType.create(category: "Dining")
travel = TransactionType.create(category: "Travel")
insurance = TransactionType.create(category: "Insurance")
gift = TransactionType.create(category: "Gift")
leisure = TransactionType.create(category: "Leisure")
rent_mortgage = TransactionType.create(category: "Rent/Mortgage")
charity = TransactionType.create(category: "Charity")
supplies = TransactionType.create(category: "Supplies")
home_furnishings = TransactionType.create(category: "Home Furnishings")

trans1 = jeff.transactions.build(amount: 5, description: "gas", transaction_type: gas)
trans1.save
trans2  = jeff.transactions.build(amount: 1, description: "Half & Half", transaction_type: grocery)
trans2.save
trans3 = jeff.transactions.build(amount: 15, description: "A used robe", transaction_type: clothing)
trans3.save
trans4 = jeff.transactions.build(amount: 87, description: "Power & late fees", transaction_type: utilities)
trans4.save
trans5 = jeff.transactions.build(amount: 7, description: "In 'n Out", transaction_type: dining)
trans5.save
trans6  = jeff.transactions.build(amount: 12, description: "bowling", transaction_type: leisure)
trans6.save
trans7 = jeff.transactions.build(amount: 15, description: "white russians", transaction_type: leisure)
trans7.save
trans8 = jeff.transactions.build(amount: 30, description: "Cab fare to Jackie Treehorn's", transaction_type: travel)
trans8.save
trans9 = jeff.transactions.build(amount: 20, description: "Creedence Tapes", transaction_type: leisure)
trans9.save
trans10  = jeff.transactions.build(amount: 400, description: "Overdue rent", transaction_type: rent_mortgage)
trans10.save
trans11 = jeff.transactions.build(amount: 75, description: "Little Lebowski Urban Achievers", transaction_type: charity)
trans11.save
trans12 = jeff.transactions.build(amount: 25, description: "A new rug.", transaction_type: home_furnishings)
trans12.save

trans13 = walter.transactions.build(amount: 20, description: "bowling", transaction_type: leisure)
trans13.save
trans14  = walter.transactions.build(amount: 6, description: "Ralph's", transaction_type: grocery)
trans14.save
trans15 = walter.transactions.build(amount: 3, description: "diner coffee", transaction_type: dining)
trans15.save
trans16 = walter.transactions.build(amount: 150, description: "Wife's trip to Hawaii", transaction_type: travel)
trans16.save
trans17 = walter.transactions.build(amount: 100, description: "bowling", transaction_type: leisure)
trans17.save
trans18  = walter.transactions.build(amount: 50, description: "dog kennel", transaction_type: home_furnishings)
trans18.save
trans19 = walter.transactions.build(amount: 40, description: "Army Surplus Store", transaction_type: supplies)
trans19.save
trans20 = walter.transactions.build(amount: 20, description: "The ringer", transaction_type: clothing)
trans20.save
trans21 = walter.transactions.build(amount: 25, description: "bowling", transaction_type: leisure)
trans21.save
trans22  = walter.transactions.build(amount: 15, description: "In 'n Out", transaction_type: dining)
trans22.save
trans23 = walter.transactions.build(amount: 1000, description: "business rental", transaction_type: rent_mortgage)
trans23.save
trans24 = walter.transactions.build(amount: 100, description: "VFW", transaction_type: charity)
trans24.save

trans25 = donny.transactions.build(amount: 15, description: "bowling", transaction_type: leisure)
trans25.save
trans26  = donny.transactions.build(amount: 10, description: "In 'n Out", transaction_type: dining)
trans26.save
trans27 = donny.transactions.build(amount: 600, description: "rent", transaction_type: rent_mortgage)
trans27.save
trans28 = donny.transactions.build(amount: 150, description: "Surfing", transaction_type: travel)
trans28.save
trans29 = donny.transactions.build(amount: 80, description: "cheap health insurance", transaction_type: insurance)
trans29.save
trans30  = donny.transactions.build(amount: 40, description: "Ralph's", transaction_type: grocery)
trans30.save
trans31 = donny.transactions.build(amount: 40, description: "bowling shirt", transaction_type: clothing)
trans31.save
trans32 = donny.transactions.build(amount: 80, description: "new bowling ball", transaction_type: supplies)
trans32.save