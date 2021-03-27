require 'pry'
require 'open-uri'
require 'net/http'
require 'json'
require 'tty-prompt'

require_relative "../models/cli.rb"
require_relative "../models/nhl_api.rb"
require_relative "../models/team.rb"
require_relative "../config/seeds.rb"