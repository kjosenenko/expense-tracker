class User < ApplicationRecord
    has_many :transactions
    has_many :transaction_types, through: :transactions
end
