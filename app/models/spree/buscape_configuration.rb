class Spree::BuscapeConfiguration < Spree::Preferences::Configuration
  #preference :production_domain, :string, :default => 'http://www.minhaloja.com.br/'
  preference :category_taxonomy_id, :integer, :default => nil
  preference :numero_de_parcelas, :integer, :default => nil
end
