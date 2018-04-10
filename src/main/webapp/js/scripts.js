$(document).ready(function () {
    $('#check').click(function () {

        $.getJSON('rest/status', function (data) {
            var json = JSON.stringify(data);

            $('#output').html(json);
        });

    });

    $('#clear').click(function () {
        $('#output').html('');
    });
});