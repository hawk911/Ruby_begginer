module Manufacturer
  #module ClassMethods

  #end

  module InstanceMethods


    def make_print
      puts self.make
    end

    def make_manufacturer=(make)
      self.make = make
    end

    protected
    attr_accessor :make

  end

  def self.included(receiver)
    #receiver.extend         ClassMethods
    receiver.send :include, InstanceMethods
  end
end
