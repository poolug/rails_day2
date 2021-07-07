class Users
    def initialize(name, arr)
        @name = name
        @arr = arr
    end
end

class BankAccount
    attr_accessor :bank_name, :account, :balance
    def initialize(bank_name, account, balance = 0)
        @bank_name = bank_name
        @account = account
        @balance = balance
        transfer(account, balance)
    end

    # attr_accessor :account2, :balance2
    def transfer(account2, balance2)
        @account2 = account2
        @balance2 = balance2

        @balance -= @balance
        @balance2 += @balance2
    end

    # def total_balance
    #     "a: #{self.balance}, b: #{self.balance2}"
    # end
end

c1 = BankAccount.new('Santander', "cta1", 5000)
# c1.transfer

c2 = BankAccount.new('Santander', "cta4", 5000)
# c2.transfer("cta2", 5000)

puts "Nombre: #{c1.bank_name}, Cta: #{c1.account}, Saldo: #{c1.balance}"
puts "Nombre: #{c2.bank_name}, Cta: #{c2.account2}, Saldo: #{c2.balance2}"
# puts c1.total_balance