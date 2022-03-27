$(document).ready(function () {
    function setRating(rating, objectId) {

        for (step = 1; step < rating+1; step++) {
            $('.rating-star#rating-' + step + '-' + objectId ).removeClass('fa-star-o').addClass('selected');
        }
        $('.rating-star#rating-' + rating + '-' + objectId+ ' ~ .rating-star').removeClass('selected').addClass('fa-star-o');
        let form = document.getElementById("rating"+"-"+objectId);
        let actionUrl = form.action;

        $.ajax({
            type: "POST",
            url: actionUrl,
            data: $("#rating" + "-" + objectId).serialize()+"&grade[rating]="+rating,
            dataType : 'script'
        });
    }

    $(document).on("mouseover", ".rating-star", function(e){
        let rating = $(e.target).data('rating');
        let objectId = $(e.target).data('object');
        for (step = 1; step < rating+1; step++) {
            $('.rating-star#rating-' + step + '-' + objectId ).removeClass('fa-star-o').addClass('fa-star');
        }
        $('.rating-star#rating-' + rating + '-' + objectId+ ' ~ .rating-star').removeClass('fa-star').addClass('fa-star-o');
    }).on("mouseleave", ".rating-star", function(e){
        let rating = $(e.target).data('rating');
        let objectId = $(e.target).data('object');
        let grade_rating = $("#rating" + "-" + objectId).find("input[id=grade_rating]").val();
        $('.rating-star#rating-' + (parseInt(grade_rating) ? grade_rating : rating) + '-' + objectId+ ' ~ .rating-star').removeClass('fa-star').addClass('fa-star-o');
        for (step = 1; step < parseInt(grade_rating)+1; step++) {
            $('.rating-star#rating-' + step + '-' + objectId ).removeClass('fa-star-o').addClass('fa-star');
        }
    }).on("click", ".rating-star", function(e){
        let rating = $(e.target).data('rating');
        let objectId = $(e.target).data('object');
        setRating(rating, objectId);
    });
});
