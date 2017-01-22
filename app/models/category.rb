class Category < ApplicationRecord
  has_many :item_categories
  has_many :items, through: :item_categories

  def images()
    if name == "Pants"
      return "https://s-media-cache-ak0.pinimg.com/originals/70/23/58/702358daf131aff5f2ed16a3afbbfb64.jpg"
    elsif name == "Formal Accessories"
      return "http://i.telegraph.co.uk/multimedia/archive/02111/accessories_bow_ti_2111621i.jpg"
    elsif name == "Coats"
      return "http://www.picshouse2.com/vb/imgcache/2/26658poster.jpg"
    elsif name == "Dresses"
      return "http://gloimg.rosegal.com/rosegal/pdm-product-pic/Clothing/2016/08/10/source-img/20160810142410_81000.jpg"
    elsif name == "Accessories"
      return "http://esquireuk.cdnds.net/16/07/1455902737-watch-junghans-automatic-43.jpg"
    elsif name == "Formal Coats"
      return "http://thumbs1.ebaystatic.com/d/l225/m/m24lspjM8Dg4oqLvy0Hv-gw.jpg"
    elsif name == "Formal Dresses"
      return "http://images.neimanmarcus.com/ca/1/product_assets/B/3/G/7/K/NMB3G7K_mk.jpg"
    elsif name == "Formal Pants"
      return "https://secure.polyvoreimg.com/cgi/img-thing/size/l/tid/65761539.jpg"
    elsif name == "Formal Shirts"
      return "http://img.tradeindia.com/fp/1/876/242.jpg"
    elsif name == "Formal Shoes"
      return "https://images-cdn.azureedge.net/azure/in-resources/9d695974-9771-4356-8ec8-ed1c5dc8f290/Images/ProductImages/Source/VNGS-003_000.JPG;width=900"
    elsif name == "Raingear"
      return "http://i.ebayimg.com/00/s/NDk5WDM2OA==/z/U9AAAOxy4dNS-qZy/$_3.JPG?set_id=2"
    elsif name == "Sandals"
      return "http://www.tennesseedrivertraining.com/wp-content/uploads/2014/09/Milenio-Wholesale-Flip-Flops-e1347649613637.jpg"
    elsif name == "Shirts"
      return "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=2246683"
    elsif name == "Shoes"
      return "http://scene7.zumiez.com/is/image/zumiez/pdp_hero/Vans-Sk8-Hi-Skate-Shoes--Mens--_247142.jpg"
    elsif name == "Shorts"
      return "http://scene7.zumiez.com/is/image/zumiez/pdp_hero/Volcom-Frickin-Modern-Stretch-Port-Shorts-_257648-front.jpg"
    elsif name == "T-Shirts"
      return "https://smhttp-ssl-48567.nexcesscdn.net/media/catalog/product/cache/1/image/700x700/9df78eab33525d08d6e5fb8d27136e95/b/l/blue_logo_t-shirt_front.png"
    else
      return "http://i3.kym-cdn.com/photos/images/newsfeed/001/056/841/eb9.gif"
    end
  end
end
