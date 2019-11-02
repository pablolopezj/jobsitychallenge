statusTweets = function (twid, uid, status) {
    event.preventDefault();
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $.ajax({
        type: 'POST',
        url: '/twitter/setstatus',
        data: {
            twitter_id: twid,
            user_id: uid,
            status: status
        },
        success: function (data) {
            $("#showtw_" + twid).css("display", "block");
            $("#hiddetw_" + twid).css("display", "none");
        }
    });
}