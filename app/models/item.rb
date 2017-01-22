class Item < ApplicationRecord
  belongs_to :user
  has_many :item_categories
  has_many :categories, through: :item_categories
  has_many :destination_items
  has_many :destinations, through: :destination_items

  def images
    if name == "Maroon watch"
      return "https://s-media-cache-ak0.pinimg.com/564x/3d/cc/6f/3dcc6f1f7885e2191fedbd8d02d2d1e3.jpg"
    elsif name == "White windbreaker"
      return "http://site.topdogshirts.com/images/charles_river_apparel/9905white.jpg"
    elsif name == "Gray felt"
      return "https://cdnd.lystit.com/photos/918f-2015/08/05/t-by-alexander-wang-greyblack-reversible-nylon-felt-coat-gray-product-1-083382563-normal.jpeg"
    elsif name == "Green windbreaker"
      return "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=1151117"
    elsif name == "Grey parka"
      return "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR-UbCmFqdhT-KMW9SadDF1lG0fWHekyPZyX0eMaGu-fKig8y5q"
    elsif name == "Purple winter dress"
      return "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRiYUW87yhGU7IX5sQhn1f7LzW-_tjmMhPkU_0NrZjD76fIZwqn"
    elsif name == "Teal winter dress"
      return "https://s-media-cache-ak0.pinimg.com/736x/28/4d/4e/284d4e1a4d665f00bbca845bb4e083b4.jpg"
    elsif name == "Olive sun dress"
      return "https://i.s-jcrew.com/is/image/jcrew/F0897_WU4525?$pdp_enlarge$"
    elsif name == "Maroon winter dress"
      return "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=143141917"
    elsif name == "Blue fancy watch"
      return "http://media.impericon.com/media/catalog/product/k/r/kr3w_phantom_blue_watch_lg.jpg"
    elsif name == "Black fancy watch"
      return "http://www.swarovski.com/is-bin/intershop.static/WFS/SCO-Media-Site/-/-/publicimages/CG/B2C/PROD/600/Swarovski-Daytime-Black-Watch-5172176-W600.jpg"
    elsif name == "Green fancy watch"
      return "https://loveexcellence.co.uk/sites/default/files/lambretta-franco-green-watch-2160gre-love-excellence-best-gifts-1.jpg"
    elsif name == "Red fancy watch"
      return "http://www.mensdesignershoe.com/avactis-images/locman_mens_tremila_watch_red_26000RDNWH5BKW_0.jpg"
    elsif name == "Blue Peacoat"
      return "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=10776942"
    elsif name == "Black Peacoat"
      return "http://styleforum-testing.s3.amazonaws.com/8/82/8206a610_vbattach59955.jpg"
    elsif name == "Purple Peacoat"
      return "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=65661996"
    elsif name == "Yellow Peacoat"
      return "http://nefastore.com/images/yellow-pea-coat-for-teenagers.jpg"
    elsif name == "Purple gown"
      return "https://s-media-cache-ak0.pinimg.com/736x/d0/96/71/d096717aed6e0dcdc4d969118cc71b4c.jpg"
    elsif name == "Yellow gown"
      return "https://s-media-cache-ak0.pinimg.com/736x/db/6a/38/db6a384c1ee7d669fba4f66efd95005e.jpg"
    elsif name == "Red suit pants"
      return "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=51987045"
    elsif name == "Blue tuxedo pants"
      return "https://dtpmhvbsmffsz.cloudfront.net/posts/2016/07/29/579b97515a49d02d1300799c/m_579b97525a49d02d1300799d.jpg"
    elsif name == "Yellow french-cuff button-down"
      return "https://s-media-cache-ak0.pinimg.com/736x/08/13/74/081374eeb01f254cc1a29efc1ae67e47.jpg"
    elsif name == "Navy french-cuff button-down"
      return "https://azarman.com/wp-content/uploads/2015/01/AzarSuits_121314-0016.jpg"
    elsif name == "Teal french-cuff button-down"
      return "https://s-media-cache-ak0.pinimg.com/564x/39/a1/eb/39a1ebffe7220bcb2fde5bd4e0629b47.jpg"
    elsif name == "Olive french-cuff button-down"
      return "https://s-media-cache-ak0.pinimg.com/736x/6f/b9/82/6fb98289cc19b0b50db90644aead6b80.jpg"
    elsif name == "Maroon oxfords"
      return "http://d2ydh70d4b5xgv.cloudfront.net/images/2/0/new-men-wedding-business-shoes-dress-formal-oxfords-shoes-casual-leather-shoes-946510f13cec6bd6d5e385be00175616.jpg"
    elsif name == "White brogues"
      return "https://secure.polyvoreimg.com/cgi/img-thing/size/l/tid/83788355.jpg"
    elsif name == "Yellow oxfords"
      return "https://s-media-cache-ak0.pinimg.com/236x/be/c9/c1/bec9c16cd4deaf5d7c66c8ed818dc322.jpg"
    elsif name == "Gray loafers"
      return "https://cdna.lystit.com/photos/23c5-2014/01/30/steve-madden-gray-madden-grens-slip-on-loafers-product-1-12684785-0-955171074-normal.jpeg"
    elsif name == "Purple jeans"
      return "https://woojenz.com/wp-content/uploads/2015/12/purple-jeans-11.jpg"
    elsif name == "Teal jeans"
      return "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=51086701"
    elsif name == "Red khakis"
      return "https://dtpmhvbsmffsz.cloudfront.net/posts/2016/06/11/575ca29541b4e052a70048bf/m_575ca298c6c7959ac40045de.jpg"
    elsif name == "Blue khakis"
      return "http://www.dapperq.com/wp-content/uploads/2012/11/Old-Navy-Mens-Broken-In-Slim-Fit-Khakis.jpg"
    elsif name == "Navy rain coat"
      return "http://image.sportsmansguide.com/adimgs/l/9/96325_ts.jpg"
    elsif name == "Navy rain boots"
      return "https://s-media-cache-ak0.pinimg.com/736x/67/9c/02/679c02ac5bec868dfdd0fd2beef347ae.jpg"
    elsif name == "Purple rain coat"
      return "https://img0.etsystatic.com/000/0/5468942/il_fullxfull.98100234.jpg"
    elsif name == "Yellow flip-flops"
      return "http://www.elementhealing.com/wp-content/uploads/2014/06/bigstock-Flip-Flops-Yellow-On-White-Bac-45870712-2.jpg"
    elsif name == "Purple button-down"
      return "https://www.thepurplestore.com/images/products/big/13433_b.jpg"
    elsif name == "Blue waffle shirt"
      return "https://ae01.alicdn.com/kf/HTB1i69aKFXXXXaFXXXXq6xXFXXXF/-font-b-Men-b-font-font-b-Waffle-b-font-Long-Sleeve-T-font-b.jpg"
    elsif name == "Olive flannel"
      return "https://cdn.ccs.com/media/catalog/product/cache/4/image/9df78eab33525d08d6e5fb8d27136e95/l/r/lrg-buckshot-flannel-shirt-dark-olive_4.1478671203.jpg"
    elsif name == "Gray skate shoes"
      return "http://scene7.zumiez.com/is/image/zumiez/pdp_hero/Osiris-Clone-Grey-%26-White-Denim-Skate-Shoes-_263835-front.jpg"
    elsif name == "Purple linen shorts"
      return "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSoS62_Os-OKlebm4JZybRWVu1vOyLXEMEB2I9_NQYHa1KEpfpz8Q"
    elsif name == "Purple bermuda shorts"
      return "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnG1T09HAzOyR6_uZl9HhZ4gl5K9Ppm9jI3bmsc7jdJGpw1o2YaQ"
    elsif name == "Blue linen shorts"
      return "http://www.fleurisse-leon.com/website/media/catalog/product/cache/1/image/1200x/9df78eab33525d08d6e5fb8d27136e95/t/o/tommy-lb-stripe.jpg"
    elsif name == "Green linen shorts"
      return "http://media.brostrick.com/wp-content/uploads/2015/05/06124929/light-blue-linen-cotton-dress-shorts-for-men-2016.jpg"
    elsif name == "Red solid colored t-shirt"
      return "http://www.clipartbest.com/cliparts/7ia/oB9/7iaoB9nxT.jpeg"
    elsif name == "Black t-shirt"
      return "http://pixel.nymag.com/imgs/daily/intelligencer/2016/10/13/black-t-shirt/13-black-tshirt-jcrew.w710.h473.2x.jpg"
    elsif name == "Red t-shirt"
      return "http://target.scene7.com/is/image/Target/14390025_Alt02?wid=450&hei=450&fmt=pjpeg"
    elsif name == "Gray t-shirt"
      return "http://www.backtoschoolstore.org/media/catalog/product/cache/1/image/650x650/9df78eab33525d08d6e5fb8d27136e95/o/x/oxfordgray-front-hanes-beefy-t.jpg"
    else
      return "/img/noise.gif"
    end
  end

end