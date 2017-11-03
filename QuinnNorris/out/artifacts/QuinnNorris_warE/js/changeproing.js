$(document).ready(function () {
    changepros();
});

function changepros() {
    $.ajax({
        url: '/getpros',
        type: 'post',
        contentType: 'application/x-www-form-urlencoded',
        data: {},
        dataType: "json",
        success: function (data) {
            var list = data.beanObject;
            for (var i = 1; i <= data.object; i++) {
                $('#qnjpro' + i).html("" + list[i-1].proname);
                $('#qnjpro' + i).attr("href", "/project/" + list[i-1].pronumber);

            }

        }
    });

}