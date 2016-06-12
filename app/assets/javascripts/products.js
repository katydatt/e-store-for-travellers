$(document).ready(function(){
  function showProducts(){

    $.ajax({
      url: "http://localhost:3000/api/products"
    }).done(function(products){
      console.log(products);
      $.each(products, function(index,product){
        var template = $("#products-template").html();
        var templateFunction = Handlebars.compile(template);

        var html = templateFunction({
          productID: product.id,
          productName: product.name,
          img: product.image
        });

          var $newDiv = $(html);
          $(".section-box-item").append($newDiv);
      });
    });
  };
  showProducts();
});
