class Coin < ApplicationRecord
	validates_presence_of :name
	validates_presence_of :amount


	Coin_List = ["Bitcoin","Ethereum","Ripple","Bitcoin","Cash","Litecoin","Cardano","NEO","Stellar","EOS","Monero","Dash","NEM","IOTA","Tether","TRON","VeChain","Ethereum","Classic","Lisk","Nano","Qtum","Bitcoin","Gold","OmiseGO","ICON","Binance","Coin","Zcash","DigixDAO","Populous","Steem","Waves","Bytecoin","Stratis","Maker","Verge","RChain","Dogecoin","Status","BitShares","Siacoin","Aeternity","Decred","Augur","Bytom","Waltonchain","Komodo","Ark","Zilliqa","Ardor","0x","Veritaseum","Cryptonex","Electroneum","KuCoin","Shares","Hshare","Aion","MonaCoin","DigiByte","PIVX","Basic","Attention","Token","Gas","Ethos","Factom","QASH","Golem","Dragonchain","Syscoin","Revain","Nebulas","Loopring","FunFair","GXChain","Kin","ZCoin","ReddCoin","SALT","ChainLink","aelf","IOStoken","Dentacoin","SmartCash","Power","Ledger","Kyber","Network","Polymath","Nxt","Bancor","Byteball","Bytes","MaidSafeCoin","Particl","Emercoin","Neblio","TenX","Request","Network","Dent","SIRIN","LABS","Token","Iconomi","Enigma","Pillar","SingularityNET","Substratum","Bitcore","Storj"]
	belongs_to :user
end
