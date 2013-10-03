xml.instruct! :xml, :version=>"1.0", :encoding=>"ISO-8859-1"

xml.comment! "Generated at " + DateTime.now.strftime("%Y-%m-%dT%H:%M:%S") + "GMT-3"

xml.loja do
  xml.produtos do
    
    @products.each do |product|
      xml.produto do
        xml.id_oferta product.id.to_s
        xml.descricao product.name
        if product.description
          xml.detalhes CGI.escapeHTML(product.description.strip_html_tags)
        end
        xml.link_prod "http://" + Spree::Config[:site_url].gsub(/http:|https:|\//,"") + '/produtos/' + product.permalink
        xml.preco number_to_currency product.price        
        xml.disponibilidade product.count_on_hand.to_s
         
        # Product Brand
        if product.property('brand')
          xml.marca product.property('brand') 
        elsif product.property('marca')
          xml.marca product.property('marca')
        elsif product.property('fornecedor')
          xml.marca product.property('fornecedor')
        elsif product.property('fabricante')
          xml.marca product.property('fabricante')  
        end
        
        # Parcelamento
        if SpreeBuscape::Config[:numero_de_parcelas] && SpreeBuscape::Config[:numero_de_parcelas] > 0
          xml.parcelamento "#{SpreeBuscape::Config[:numero_de_parcelas]}x de #{number_to_currency product.price / SpreeBuscape::Config[:numero_de_parcelas].to_i}"
        end
        
        # Categoria usada na loja
        if SpreeBuscape::Config[:category_taxonomy_id] && Spree::Taxonomy.exists?(SpreeBuscape::Config[:category_taxonomy_id])
          xml.categoria product.buscape_category
        end
        
        xml.imagem "http://" + Spree::Config[:site_url].gsub(/http:|https:|\//,"") + product.images.first.attachment.url(:product) unless product.images.empty?
      end
    end
  end
end