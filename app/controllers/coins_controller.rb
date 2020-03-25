require 'httparty'
require 'json'
require 'uri'
require 'time'

class CoinsController < ApplicationController
	include HTTParty
	before_action :setevent

	def index
		@total = 0
		@coins = @user.coins
		@arrayd = Array.new
		@coins.each do |e|
			id = e.name
			link = URI.join("https://api.coinmarketcap.com/v1/ticker/",id)
			response = HTTParty.get(link,
								:headers =>{'Content-Type' => 'application/json'})
			price = response[0]["price_usd"]
			value = price.to_f.round(2) * e.amount
			@total = @total + value
			coin_arr = [e.name,value]
			@arrayd.push(coin_arr)
		end
	end

	def show
		@coin = @user.coins.find(params[:id])
		id = @coin.name
		link = URI.join("https://api.coinmarketcap.com/v1/ticker/",id)
		@response = HTTParty.get(link,
								:headers =>{'Content-Type' => 'application/json'})
		price = @response[0]["price_usd"]
		@value = price.to_f * @coin.amount

		symbol = @response[0]["symbol"]

		link2 = URI.join("https://min-api.cryptocompare.com/data/histoday?fsym=#{symbol}&tsym=USD&limit=7")
		@response2 = HTTParty.get(link2,
								:headers =>{'Content-Type' => 'application/json'})

		
		@arraydate = Array.new
		(0..7).each do |i|
				date = Time.at(@response2["Data"][i]["time"]).strftime("%Y-%m-%d")
				close = @response2["Data"][i]["close"]
				date_arr = [date,close]
				@arraydate.push(date_arr)
		end


		link3 = URI.join("https://min-api.cryptocompare.com/data/histohour?fsym=#{symbol}&tsym=USD&limit=10")
		@response3 = HTTParty.get(link3,
								:headers =>{'Content-Type' => 'application/json'})

		@arraydate1 = Array.new
		(0..10).each do |i|
				date = Time.at(@response3["Data"][i]["time"]).strftime("%c")
				close = @response3["Data"][i]["close"]
				date_arr = [date,close]
				@arraydate1.push(date_arr)
		end

	end

	def new
		@coin = @user.coins.build
	end

	def create
		@coin = @user.coins.new(coin_params)

		if @coin.save
			flash[:success] = "Successfully added to your portfolio."
			redirect_to :action => :index
		else 
			render :action => :new
		end
	end

	def edit
		@coin = @user.coins.find(params[:id])
	end

	def update
		@coin = @user.coins.find(params[:id])

		if @coin.update(coin_params)
			flash[:success] = "Updated!"
			redirect_to :action => :index
		else
			flash.now[:danger] = 'Name or amount cannot be blank.'
			render :action=>:edit

		end
	end

	def destroy
		@coin = @user.coins.find(params[:id])
		@coin.destroy
		redirect_to :action => :index

	end

	def setevent
		@user = User.find(params[:user_id])
	end

	private

	def coin_params
		params.require(:coin).permit(:name, :amount)
	end
end
