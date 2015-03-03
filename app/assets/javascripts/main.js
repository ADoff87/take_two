$(document).ready(InitSiteLinkIcon);
$(document).on('page:load', InitSiteLinkIcon);

function InitSiteLinkIcon() {
    $('body').on('click', '.site-links-icon', function() {
        $('.site-links').toggle();
    });
}