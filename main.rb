require_relative 'product'
require_relative 'phone'
require_relative 'store'

phone1 = Phone.new('8gb', '12mp', true, 'android', 'galaxy', 500, true)
phone2 = Phone.new('12gb', '3mp', true, 'android', 'htc', 50, false)
phone3 = Phone.new('16gb', '14mp', false, 'ios', 'iphone', 800, true)
phone4 = Phone.new('3gb', '3mp', false, 'android', 'nokia', 10, false)

univerzalno = Store.new('Univerzalno', 'Milana Preloga 33', 'univerzalno.com', [phone1, phone2, phone3, phone4])

univerzalno.to_s

univerzalno.show_expensive_phones
univerzalno.show_cheap_phones    
univerzalno.show_android_phones
univerzalno.show_in_stock_phones

