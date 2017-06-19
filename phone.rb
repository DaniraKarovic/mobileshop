require_relative 'product'
class Phone < Product
    attr_accessor :specs
    def initialize (memory, camera, bluetooth, os, model, price, in_stock)
        @specs = { memory: memory, camera: camera, bluetooth: bluetooth, os: os }
        super(model, price, in_stock)
    end

    def to_s
        puts 'Model: '+@model
        puts 'Price: '+@price.to_s
        puts 'Specs:'
        puts '        memory: '+@specs[:memory]
        puts '        camera: '+@specs[:camera]
        puts '        bluetooth: '+@specs[:bluetooth].to_s
        puts '        os: '+@specs[:os]

        puts '------------------------'
    end
end
