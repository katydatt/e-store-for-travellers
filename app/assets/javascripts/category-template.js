$(document).ready(function(){
  function showCategories() {

    $.ajax({
      url: "http://localhost:3000/api/categories"
    }).done(function(categories){
      console.log(categories);

      $.each(categories, function(index, category){
        var template = $("#category-template").html();
        var templateFunction = Handlebars.compile(template);

        var html = templateFunction({
          category: category.name,
          id: category.id,
          img: category.image

        });

        console.log(html);

        var $newDiv = $(html);
        $(".category-cards").append($newDiv);
      });
    });
  };
  showCategories();
});
