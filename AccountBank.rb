class Users
    def initialize(name, arr)
        @name = name
        @arr = arr
    end
end

class BankAccount
    attr_accessor :bank_name, :account1, :balance1
    def initialize(bank_name, account1, balance1 = 0)
        @bank_name = bank_name
        @account1 = account1
        @balance1 = balance1
    end

    attr_accessor :account2, :balance2
    def transfer(account2 = 0, balance2 = 0)
        @account2 = account2
        @balance2 = balance2
        # @balance1 = balance1

        tr_a = @balance1 - @balance1
        tr_b = @balance1 + @balance2

        @balance1 = tr_a
        @balance2 = tr_b
    end

    def total_balance
        "a: #{balance1}, b: #{balance2}"
    end
end

c1 = BankAccount.new('Santander', "cta1", 5000)
c1.transfer

c2 = BankAccount.new('Santander', "cta4", 5000)
c2.transfer("cta2", 5000)

puts "Nombre: #{c1.bank_name}, Cta: #{c1.account1}, Saldo: #{c1.balance1}"
puts "Nombre: #{c2.bank_name}, Cta: #{c2.account2}, Saldo: #{c2.balance2}"
puts c1.total_balance