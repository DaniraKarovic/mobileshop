class Store
    attr_accessor :name, :street, :websites, :phones
    def initialize(name, street, websites, phones)
        @name = name
        @street = street
        @websites = websites
        @phones = phones
    end

    def to_s
        puts '*************************'
        puts 'Name: '+@name
        puts 'Street: '+@street
        puts 'Website: '+@websites
        puts 'Total phones: '+@phones.count.to_s
        puts 'Total phones in stock: '+total_phones_in_stock.to_s
        puts '*************************'
    end

    def total_phones_in_stock
        @phones.select {|p| p.in_stock == true }.length
    end

    def show_expensive_phones
        expensive_phones = @phones.select { |p| p.price > 50 } 
        print 'Expensive Phones: ' 
        puts expensive_phones.length
        puts '===================================='
        puts expensive_phones
    end

    def show_cheap_phones
        cheap_phones = @phones.select { |p|  p.price <= 50 }
        print 'Cheap Phones: '
        puts cheap_phones.length
        puts '===================================='
        puts cheap_phones
    end

    def show_android_phones
         android_phones = @phones.select {|p| p.specs[:os] == 'android' }
         print 'Android Phones: '
         puts android_phones.length
         puts '===================================='
         puts android_phones
    end

    def show_in_stock_phones
        in_stock_phones = @phones.select {|p| p.in_stock == true }
        print 'In stock phones: '
        puts in_stock_phones.length
        puts '===================================='
        puts in_stock_phones
    end
        

end
