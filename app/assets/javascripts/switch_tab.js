$('a[href="#location"]').on('shown.bs.tab', function (e) {
    initMap();
});

$('#payment-form').card({
    // a selector or DOM element for the container
    // where you want the card to appear
    container: '.card-wrapper', // *required*

    // all of the other options from above
});
