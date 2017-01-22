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
      return ""
    else
      return ""
    end
  end
end
