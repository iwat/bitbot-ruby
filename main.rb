#!/usr/bin/env ruby
# frozen_string_literal: true

require 'bundler/setup'
require 'pry'

$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/vendor")

require 'arbitrager'

arbitrager = Arbitrager.new
arbitrager.register_exchange(Arbitrager::Exchange::Binance.new('', ''))
arbitrager.register_exchange(Arbitrager::Exchange::BxInTh.new('', ''))

pp arbitrager.pairings
pp arbitrager.find_opportunity