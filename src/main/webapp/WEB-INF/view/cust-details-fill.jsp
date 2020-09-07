<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Title Page-->
    <title>Edit details</title>

    <!-- Icons font CSS-->
    <style type="text/css">
    @font-face{font-family:Material-Design-Iconic-Font;src:url(../fonts/Material-Design-Iconic-Font.woff2?v=2.2.0) format('woff2'),url(../fonts/Material-Design-Iconic-Font.woff?v=2.2.0) format('woff'),url(../fonts/Material-Design-Iconic-Font.ttf?v=2.2.0) format('truetype')}.zmdi{display:inline-block;font:normal normal normal 14px/1 'Material-Design-Iconic-Font';font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.zmdi-hc-lg{font-size:1.33333333em;line-height:.75em;vertical-align:-15%}.zmdi-hc-2x{font-size:2em}.zmdi-hc-3x{font-size:3em}.zmdi-hc-4x{font-size:4em}.zmdi-hc-5x{font-size:5em}.zmdi-hc-fw{width:1.28571429em;text-align:center}.zmdi-hc-ul{padding-left:0;margin-left:2.14285714em;list-style-type:none}.zmdi-hc-ul>li{position:relative}.zmdi-hc-li{position:absolute;left:-2.14285714em;width:2.14285714em;top:.14285714em;text-align:center}.zmdi-hc-li.zmdi-hc-lg{left:-1.85714286em}.zmdi-hc-border{padding:.1em .25em;border:solid .1em #9e9e9e;border-radius:2px}.zmdi-hc-border-circle{padding:.1em .25em;border:solid .1em #9e9e9e;border-radius:50%}.zmdi.pull-left{float:left;margin-right:.15em}.zmdi.pull-right{float:right;margin-left:.15em}.zmdi-hc-spin{-webkit-animation:zmdi-spin 1.5s infinite linear;animation:zmdi-spin 1.5s infinite linear}.zmdi-hc-spin-reverse{-webkit-animation:zmdi-spin-reverse 1.5s infinite linear;animation:zmdi-spin-reverse 1.5s infinite linear}@-webkit-keyframes zmdi-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}@keyframes zmdi-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}@-webkit-keyframes zmdi-spin-reverse{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(-359deg);transform:rotate(-359deg)}}@keyframes zmdi-spin-reverse{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(-359deg);transform:rotate(-359deg)}}.zmdi-hc-rotate-90{-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg)}.zmdi-hc-rotate-180{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}.zmdi-hc-rotate-270{-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg)}.zmdi-hc-flip-horizontal{-webkit-transform:scale(-1,1);-ms-transform:scale(-1,1);transform:scale(-1,1)}.zmdi-hc-flip-vertical{-webkit-transform:scale(1,-1);-ms-transform:scale(1,-1);transform:scale(1,-1)}.zmdi-hc-stack{position:relative;display:inline-block;width:2em;height:2em;line-height:2em;vertical-align:middle}.zmdi-hc-stack-1x,.zmdi-hc-stack-2x{position:absolute;left:0;width:100%;text-align:center}.zmdi-hc-stack-1x{line-height:inherit}.zmdi-hc-stack-2x{font-size:2em}.zmdi-hc-inverse{color:#fff}.zmdi-3d-rotation:before{content:'\f101'}.zmdi-airplane-off:before{content:'\f102'}.zmdi-airplane:before{content:'\f103'}.zmdi-album:before{content:'\f104'}.zmdi-archive:before{content:'\f105'}.zmdi-assignment-account:before{content:'\f106'}.zmdi-assignment-alert:before{content:'\f107'}.zmdi-assignment-check:before{content:'\f108'}.zmdi-assignment-o:before{content:'\f109'}.zmdi-assignment-return:before{content:'\f10a'}.zmdi-assignment-returned:before{content:'\f10b'}.zmdi-assignment:before{content:'\f10c'}.zmdi-attachment-alt:before{content:'\f10d'}.zmdi-attachment:before{content:'\f10e'}.zmdi-audio:before{content:'\f10f'}.zmdi-badge-check:before{content:'\f110'}.zmdi-balance-wallet:before{content:'\f111'}.zmdi-balance:before{content:'\f112'}.zmdi-battery-alert:before{content:'\f113'}.zmdi-battery-flash:before{content:'\f114'}.zmdi-battery-unknown:before{content:'\f115'}.zmdi-battery:before{content:'\f116'}.zmdi-bike:before{content:'\f117'}.zmdi-block-alt:before{content:'\f118'}.zmdi-block:before{content:'\f119'}.zmdi-boat:before{content:'\f11a'}.zmdi-book-image:before{content:'\f11b'}.zmdi-book:before{content:'\f11c'}.zmdi-bookmark-outline:before{content:'\f11d'}.zmdi-bookmark:before{content:'\f11e'}.zmdi-brush:before{content:'\f11f'}.zmdi-bug:before{content:'\f120'}.zmdi-bus:before{content:'\f121'}.zmdi-cake:before{content:'\f122'}.zmdi-car-taxi:before{content:'\f123'}.zmdi-car-wash:before{content:'\f124'}.zmdi-car:before{content:'\f125'}.zmdi-card-giftcard:before{content:'\f126'}.zmdi-card-membership:before{content:'\f127'}.zmdi-card-travel:before{content:'\f128'}.zmdi-card:before{content:'\f129'}.zmdi-case-check:before{content:'\f12a'}.zmdi-case-download:before{content:'\f12b'}.zmdi-case-play:before{content:'\f12c'}.zmdi-case:before{content:'\f12d'}.zmdi-cast-connected:before{content:'\f12e'}.zmdi-cast:before{content:'\f12f'}.zmdi-chart-donut:before{content:'\f130'}.zmdi-chart:before{content:'\f131'}.zmdi-city-alt:before{content:'\f132'}.zmdi-city:before{content:'\f133'}.zmdi-close-circle-o:before{content:'\f134'}.zmdi-close-circle:before{content:'\f135'}.zmdi-close:before{content:'\f136'}.zmdi-cocktail:before{content:'\f137'}.zmdi-code-setting:before{content:'\f138'}.zmdi-code-smartphone:before{content:'\f139'}.zmdi-code:before{content:'\f13a'}.zmdi-coffee:before{content:'\f13b'}.zmdi-collection-bookmark:before{content:'\f13c'}.zmdi-collection-case-play:before{content:'\f13d'}.zmdi-collection-folder-image:before{content:'\f13e'}.zmdi-collection-image-o:before{content:'\f13f'}.zmdi-collection-image:before{content:'\f140'}.zmdi-collection-item-1:before{content:'\f141'}.zmdi-collection-item-2:before{content:'\f142'}.zmdi-collection-item-3:before{content:'\f143'}.zmdi-collection-item-4:before{content:'\f144'}.zmdi-collection-item-5:before{content:'\f145'}.zmdi-collection-item-6:before{content:'\f146'}.zmdi-collection-item-7:before{content:'\f147'}.zmdi-collection-item-8:before{content:'\f148'}.zmdi-collection-item-9-plus:before{content:'\f149'}.zmdi-collection-item-9:before{content:'\f14a'}.zmdi-collection-item:before{content:'\f14b'}.zmdi-collection-music:before{content:'\f14c'}.zmdi-collection-pdf:before{content:'\f14d'}.zmdi-collection-plus:before{content:'\f14e'}.zmdi-collection-speaker:before{content:'\f14f'}.zmdi-collection-text:before{content:'\f150'}.zmdi-collection-video:before{content:'\f151'}.zmdi-compass:before{content:'\f152'}.zmdi-cutlery:before{content:'\f153'}.zmdi-delete:before{content:'\f154'}.zmdi-dialpad:before{content:'\f155'}.zmdi-dns:before{content:'\f156'}.zmdi-drink:before{content:'\f157'}.zmdi-edit:before{content:'\f158'}.zmdi-email-open:before{content:'\f159'}.zmdi-email:before{content:'\f15a'}.zmdi-eye-off:before{content:'\f15b'}.zmdi-eye:before{content:'\f15c'}.zmdi-eyedropper:before{content:'\f15d'}.zmdi-favorite-outline:before{content:'\f15e'}.zmdi-favorite:before{content:'\f15f'}.zmdi-filter-list:before{content:'\f160'}.zmdi-fire:before{content:'\f161'}.zmdi-flag:before{content:'\f162'}.zmdi-flare:before{content:'\f163'}.zmdi-flash-auto:before{content:'\f164'}.zmdi-flash-off:before{content:'\f165'}.zmdi-flash:before{content:'\f166'}.zmdi-flip:before{content:'\f167'}.zmdi-flower-alt:before{content:'\f168'}.zmdi-flower:before{content:'\f169'}.zmdi-font:before{content:'\f16a'}.zmdi-fullscreen-alt:before{content:'\f16b'}.zmdi-fullscreen-exit:before{content:'\f16c'}.zmdi-fullscreen:before{content:'\f16d'}.zmdi-functions:before{content:'\f16e'}.zmdi-gas-station:before{content:'\f16f'}.zmdi-gesture:before{content:'\f170'}.zmdi-globe-alt:before{content:'\f171'}.zmdi-globe-lock:before{content:'\f172'}.zmdi-globe:before{content:'\f173'}.zmdi-graduation-cap:before{content:'\f174'}.zmdi-home:before{content:'\f175'}.zmdi-hospital-alt:before{content:'\f176'}.zmdi-hospital:before{content:'\f177'}.zmdi-hotel:before{content:'\f178'}.zmdi-hourglass-alt:before{content:'\f179'}.zmdi-hourglass-outline:before{content:'\f17a'}.zmdi-hourglass:before{content:'\f17b'}.zmdi-http:before{content:'\f17c'}.zmdi-image-alt:before{content:'\f17d'}.zmdi-image-o:before{content:'\f17e'}.zmdi-image:before{content:'\f17f'}.zmdi-inbox:before{content:'\f180'}.zmdi-invert-colors-off:before{content:'\f181'}.zmdi-invert-colors:before{content:'\f182'}.zmdi-key:before{content:'\f183'}.zmdi-label-alt-outline:before{content:'\f184'}.zmdi-label-alt:before{content:'\f185'}.zmdi-label-heart:before{content:'\f186'}.zmdi-label:before{content:'\f187'}.zmdi-labels:before{content:'\f188'}.zmdi-lamp:before{content:'\f189'}.zmdi-landscape:before{content:'\f18a'}.zmdi-layers-off:before{content:'\f18b'}.zmdi-layers:before{content:'\f18c'}.zmdi-library:before{content:'\f18d'}.zmdi-link:before{content:'\f18e'}.zmdi-lock-open:before{content:'\f18f'}.zmdi-lock-outline:before{content:'\f190'}.zmdi-lock:before{content:'\f191'}.zmdi-mail-reply-all:before{content:'\f192'}.zmdi-mail-reply:before{content:'\f193'}.zmdi-mail-send:before{content:'\f194'}.zmdi-mall:before{content:'\f195'}.zmdi-map:before{content:'\f196'}.zmdi-menu:before{content:'\f197'}.zmdi-money-box:before{content:'\f198'}.zmdi-money-off:before{content:'\f199'}.zmdi-money:before{content:'\f19a'}.zmdi-more-vert:before{content:'\f19b'}.zmdi-more:before{content:'\f19c'}.zmdi-movie-alt:before{content:'\f19d'}.zmdi-movie:before{content:'\f19e'}.zmdi-nature-people:before{content:'\f19f'}.zmdi-nature:before{content:'\f1a0'}.zmdi-navigation:before{content:'\f1a1'}.zmdi-open-in-browser:before{content:'\f1a2'}.zmdi-open-in-new:before{content:'\f1a3'}.zmdi-palette:before{content:'\f1a4'}.zmdi-parking:before{content:'\f1a5'}.zmdi-pin-account:before{content:'\f1a6'}.zmdi-pin-assistant:before{content:'\f1a7'}.zmdi-pin-drop:before{content:'\f1a8'}.zmdi-pin-help:before{content:'\f1a9'}.zmdi-pin-off:before{content:'\f1aa'}.zmdi-pin:before{content:'\f1ab'}.zmdi-pizza:before{content:'\f1ac'}.zmdi-plaster:before{content:'\f1ad'}.zmdi-power-setting:before{content:'\f1ae'}.zmdi-power:before{content:'\f1af'}.zmdi-print:before{content:'\f1b0'}.zmdi-puzzle-piece:before{content:'\f1b1'}.zmdi-quote:before{content:'\f1b2'}.zmdi-railway:before{content:'\f1b3'}.zmdi-receipt:before{content:'\f1b4'}.zmdi-refresh-alt:before{content:'\f1b5'}.zmdi-refresh-sync-alert:before{content:'\f1b6'}.zmdi-refresh-sync-off:before{content:'\f1b7'}.zmdi-refresh-sync:before{content:'\f1b8'}.zmdi-refresh:before{content:'\f1b9'}.zmdi-roller:before{content:'\f1ba'}.zmdi-ruler:before{content:'\f1bb'}.zmdi-scissors:before{content:'\f1bc'}.zmdi-screen-rotation-lock:before{content:'\f1bd'}.zmdi-screen-rotation:before{content:'\f1be'}.zmdi-search-for:before{content:'\f1bf'}.zmdi-search-in-file:before{content:'\f1c0'}.zmdi-search-in-page:before{content:'\f1c1'}.zmdi-search-replace:before{content:'\f1c2'}.zmdi-search:before{content:'\f1c3'}.zmdi-seat:before{content:'\f1c4'}.zmdi-settings-square:before{content:'\f1c5'}.zmdi-settings:before{content:'\f1c6'}.zmdi-shield-check:before{content:'\f1c7'}.zmdi-shield-security:before{content:'\f1c8'}.zmdi-shopping-basket:before{content:'\f1c9'}.zmdi-shopping-cart-plus:before{content:'\f1ca'}.zmdi-shopping-cart:before{content:'\f1cb'}.zmdi-sign-in:before{content:'\f1cc'}.zmdi-sort-amount-asc:before{content:'\f1cd'}.zmdi-sort-amount-desc:before{content:'\f1ce'}.zmdi-sort-asc:before{content:'\f1cf'}.zmdi-sort-desc:before{content:'\f1d0'}.zmdi-spellcheck:before{content:'\f1d1'}.zmdi-storage:before{content:'\f1d2'}.zmdi-store-24:before{content:'\f1d3'}.zmdi-store:before{content:'\f1d4'}.zmdi-subway:before{content:'\f1d5'}.zmdi-sun:before{content:'\f1d6'}.zmdi-tab-unselected:before{content:'\f1d7'}.zmdi-tab:before{content:'\f1d8'}.zmdi-tag-close:before{content:'\f1d9'}.zmdi-tag-more:before{content:'\f1da'}.zmdi-tag:before{content:'\f1db'}.zmdi-thumb-down:before{content:'\f1dc'}.zmdi-thumb-up-down:before{content:'\f1dd'}.zmdi-thumb-up:before{content:'\f1de'}.zmdi-ticket-star:before{content:'\f1df'}.zmdi-toll:before{content:'\f1e0'}.zmdi-toys:before{content:'\f1e1'}.zmdi-traffic:before{content:'\f1e2'}.zmdi-translate:before{content:'\f1e3'}.zmdi-triangle-down:before{content:'\f1e4'}.zmdi-triangle-up:before{content:'\f1e5'}.zmdi-truck:before{content:'\f1e6'}.zmdi-turning-sign:before{content:'\f1e7'}.zmdi-wallpaper:before{content:'\f1e8'}.zmdi-washing-machine:before{content:'\f1e9'}.zmdi-window-maximize:before{content:'\f1ea'}.zmdi-window-minimize:before{content:'\f1eb'}.zmdi-window-restore:before{content:'\f1ec'}.zmdi-wrench:before{content:'\f1ed'}.zmdi-zoom-in:before{content:'\f1ee'}.zmdi-zoom-out:before{content:'\f1ef'}.zmdi-alert-circle-o:before{content:'\f1f0'}.zmdi-alert-circle:before{content:'\f1f1'}.zmdi-alert-octagon:before{content:'\f1f2'}.zmdi-alert-polygon:before{content:'\f1f3'}.zmdi-alert-triangle:before{content:'\f1f4'}.zmdi-help-outline:before{content:'\f1f5'}.zmdi-help:before{content:'\f1f6'}.zmdi-info-outline:before{content:'\f1f7'}.zmdi-info:before{content:'\f1f8'}.zmdi-notifications-active:before{content:'\f1f9'}.zmdi-notifications-add:before{content:'\f1fa'}.zmdi-notifications-none:before{content:'\f1fb'}.zmdi-notifications-off:before{content:'\f1fc'}.zmdi-notifications-paused:before{content:'\f1fd'}.zmdi-notifications:before{content:'\f1fe'}.zmdi-account-add:before{content:'\f1ff'}.zmdi-account-box-mail:before{content:'\f200'}.zmdi-account-box-o:before{content:'\f201'}.zmdi-account-box-phone:before{content:'\f202'}.zmdi-account-box:before{content:'\f203'}.zmdi-account-calendar:before{content:'\f204'}.zmdi-account-circle:before{content:'\f205'}.zmdi-account-o:before{content:'\f206'}.zmdi-account:before{content:'\f207'}.zmdi-accounts-add:before{content:'\f208'}.zmdi-accounts-alt:before{content:'\f209'}.zmdi-accounts-list-alt:before{content:'\f20a'}.zmdi-accounts-list:before{content:'\f20b'}.zmdi-accounts-outline:before{content:'\f20c'}.zmdi-accounts:before{content:'\f20d'}.zmdi-face:before{content:'\f20e'}.zmdi-female:before{content:'\f20f'}.zmdi-male-alt:before{content:'\f210'}.zmdi-male-female:before{content:'\f211'}.zmdi-male:before{content:'\f212'}.zmdi-mood-bad:before{content:'\f213'}.zmdi-mood:before{content:'\f214'}.zmdi-run:before{content:'\f215'}.zmdi-walk:before{content:'\f216'}.zmdi-cloud-box:before{content:'\f217'}.zmdi-cloud-circle:before{content:'\f218'}.zmdi-cloud-done:before{content:'\f219'}.zmdi-cloud-download:before{content:'\f21a'}.zmdi-cloud-off:before{content:'\f21b'}.zmdi-cloud-outline-alt:before{content:'\f21c'}.zmdi-cloud-outline:before{content:'\f21d'}.zmdi-cloud-upload:before{content:'\f21e'}.zmdi-cloud:before{content:'\f21f'}.zmdi-download:before{content:'\f220'}.zmdi-file-plus:before{content:'\f221'}.zmdi-file-text:before{content:'\f222'}.zmdi-file:before{content:'\f223'}.zmdi-folder-outline:before{content:'\f224'}.zmdi-folder-person:before{content:'\f225'}.zmdi-folder-star-alt:before{content:'\f226'}.zmdi-folder-star:before{content:'\f227'}.zmdi-folder:before{content:'\f228'}.zmdi-gif:before{content:'\f229'}.zmdi-upload:before{content:'\f22a'}.zmdi-border-all:before{content:'\f22b'}.zmdi-border-bottom:before{content:'\f22c'}.zmdi-border-clear:before{content:'\f22d'}.zmdi-border-color:before{content:'\f22e'}.zmdi-border-horizontal:before{content:'\f22f'}.zmdi-border-inner:before{content:'\f230'}.zmdi-border-left:before{content:'\f231'}.zmdi-border-outer:before{content:'\f232'}.zmdi-border-right:before{content:'\f233'}.zmdi-border-style:before{content:'\f234'}.zmdi-border-top:before{content:'\f235'}.zmdi-border-vertical:before{content:'\f236'}.zmdi-copy:before{content:'\f237'}.zmdi-crop:before{content:'\f238'}.zmdi-format-align-center:before{content:'\f239'}.zmdi-format-align-justify:before{content:'\f23a'}.zmdi-format-align-left:before{content:'\f23b'}.zmdi-format-align-right:before{content:'\f23c'}.zmdi-format-bold:before{content:'\f23d'}.zmdi-format-clear-all:before{content:'\f23e'}.zmdi-format-clear:before{content:'\f23f'}.zmdi-format-color-fill:before{content:'\f240'}.zmdi-format-color-reset:before{content:'\f241'}.zmdi-format-color-text:before{content:'\f242'}.zmdi-format-indent-decrease:before{content:'\f243'}.zmdi-format-indent-increase:before{content:'\f244'}.zmdi-format-italic:before{content:'\f245'}.zmdi-format-line-spacing:before{content:'\f246'}.zmdi-format-list-bulleted:before{content:'\f247'}.zmdi-format-list-numbered:before{content:'\f248'}.zmdi-format-ltr:before{content:'\f249'}.zmdi-format-rtl:before{content:'\f24a'}.zmdi-format-size:before{content:'\f24b'}.zmdi-format-strikethrough-s:before{content:'\f24c'}.zmdi-format-strikethrough:before{content:'\f24d'}.zmdi-format-subject:before{content:'\f24e'}.zmdi-format-underlined:before{content:'\f24f'}.zmdi-format-valign-bottom:before{content:'\f250'}.zmdi-format-valign-center:before{content:'\f251'}.zmdi-format-valign-top:before{content:'\f252'}.zmdi-redo:before{content:'\f253'}.zmdi-select-all:before{content:'\f254'}.zmdi-space-bar:before{content:'\f255'}.zmdi-text-format:before{content:'\f256'}.zmdi-transform:before{content:'\f257'}.zmdi-undo:before{content:'\f258'}.zmdi-wrap-text:before{content:'\f259'}.zmdi-comment-alert:before{content:'\f25a'}.zmdi-comment-alt-text:before{content:'\f25b'}.zmdi-comment-alt:before{content:'\f25c'}.zmdi-comment-edit:before{content:'\f25d'}.zmdi-comment-image:before{content:'\f25e'}.zmdi-comment-list:before{content:'\f25f'}.zmdi-comment-more:before{content:'\f260'}.zmdi-comment-outline:before{content:'\f261'}.zmdi-comment-text-alt:before{content:'\f262'}.zmdi-comment-text:before{content:'\f263'}.zmdi-comment-video:before{content:'\f264'}.zmdi-comment:before{content:'\f265'}.zmdi-comments:before{content:'\f266'}.zmdi-check-all:before{content:'\f267'}.zmdi-check-circle-u:before{content:'\f268'}.zmdi-check-circle:before{content:'\f269'}.zmdi-check-square:before{content:'\f26a'}.zmdi-check:before{content:'\f26b'}.zmdi-circle-o:before{content:'\f26c'}.zmdi-circle:before{content:'\f26d'}.zmdi-dot-circle-alt:before{content:'\f26e'}.zmdi-dot-circle:before{content:'\f26f'}.zmdi-minus-circle-outline:before{content:'\f270'}.zmdi-minus-circle:before{content:'\f271'}.zmdi-minus-square:before{content:'\f272'}.zmdi-minus:before{content:'\f273'}.zmdi-plus-circle-o-duplicate:before{content:'\f274'}.zmdi-plus-circle-o:before{content:'\f275'}.zmdi-plus-circle:before{content:'\f276'}.zmdi-plus-square:before{content:'\f277'}.zmdi-plus:before{content:'\f278'}.zmdi-square-o:before{content:'\f279'}.zmdi-star-circle:before{content:'\f27a'}.zmdi-star-half:before{content:'\f27b'}.zmdi-star-outline:before{content:'\f27c'}.zmdi-star:before{content:'\f27d'}.zmdi-bluetooth-connected:before{content:'\f27e'}.zmdi-bluetooth-off:before{content:'\f27f'}.zmdi-bluetooth-search:before{content:'\f280'}.zmdi-bluetooth-setting:before{content:'\f281'}.zmdi-bluetooth:before{content:'\f282'}.zmdi-camera-add:before{content:'\f283'}.zmdi-camera-alt:before{content:'\f284'}.zmdi-camera-bw:before{content:'\f285'}.zmdi-camera-front:before{content:'\f286'}.zmdi-camera-mic:before{content:'\f287'}.zmdi-camera-party-mode:before{content:'\f288'}.zmdi-camera-rear:before{content:'\f289'}.zmdi-camera-roll:before{content:'\f28a'}.zmdi-camera-switch:before{content:'\f28b'}.zmdi-camera:before{content:'\f28c'}.zmdi-card-alert:before{content:'\f28d'}.zmdi-card-off:before{content:'\f28e'}.zmdi-card-sd:before{content:'\f28f'}.zmdi-card-sim:before{content:'\f290'}.zmdi-desktop-mac:before{content:'\f291'}.zmdi-desktop-windows:before{content:'\f292'}.zmdi-device-hub:before{content:'\f293'}.zmdi-devices-off:before{content:'\f294'}.zmdi-devices:before{content:'\f295'}.zmdi-dock:before{content:'\f296'}.zmdi-floppy:before{content:'\f297'}.zmdi-gamepad:before{content:'\f298'}.zmdi-gps-dot:before{content:'\f299'}.zmdi-gps-off:before{content:'\f29a'}.zmdi-gps:before{content:'\f29b'}.zmdi-headset-mic:before{content:'\f29c'}.zmdi-headset:before{content:'\f29d'}.zmdi-input-antenna:before{content:'\f29e'}.zmdi-input-composite:before{content:'\f29f'}.zmdi-input-hdmi:before{content:'\f2a0'}.zmdi-input-power:before{content:'\f2a1'}.zmdi-input-svideo:before{content:'\f2a2'}.zmdi-keyboard-hide:before{content:'\f2a3'}.zmdi-keyboard:before{content:'\f2a4'}.zmdi-laptop-chromebook:before{content:'\f2a5'}.zmdi-laptop-mac:before{content:'\f2a6'}.zmdi-laptop:before{content:'\f2a7'}.zmdi-mic-off:before{content:'\f2a8'}.zmdi-mic-outline:before{content:'\f2a9'}.zmdi-mic-setting:before{content:'\f2aa'}.zmdi-mic:before{content:'\f2ab'}.zmdi-mouse:before{content:'\f2ac'}.zmdi-network-alert:before{content:'\f2ad'}.zmdi-network-locked:before{content:'\f2ae'}.zmdi-network-off:before{content:'\f2af'}.zmdi-network-outline:before{content:'\f2b0'}.zmdi-network-setting:before{content:'\f2b1'}.zmdi-network:before{content:'\f2b2'}.zmdi-phone-bluetooth:before{content:'\f2b3'}.zmdi-phone-end:before{content:'\f2b4'}.zmdi-phone-forwarded:before{content:'\f2b5'}.zmdi-phone-in-talk:before{content:'\f2b6'}.zmdi-phone-locked:before{content:'\f2b7'}.zmdi-phone-missed:before{content:'\f2b8'}.zmdi-phone-msg:before{content:'\f2b9'}.zmdi-phone-paused:before{content:'\f2ba'}.zmdi-phone-ring:before{content:'\f2bb'}.zmdi-phone-setting:before{content:'\f2bc'}.zmdi-phone-sip:before{content:'\f2bd'}.zmdi-phone:before{content:'\f2be'}.zmdi-portable-wifi-changes:before{content:'\f2bf'}.zmdi-portable-wifi-off:before{content:'\f2c0'}.zmdi-portable-wifi:before{content:'\f2c1'}.zmdi-radio:before{content:'\f2c2'}.zmdi-reader:before{content:'\f2c3'}.zmdi-remote-control-alt:before{content:'\f2c4'}.zmdi-remote-control:before{content:'\f2c5'}.zmdi-router:before{content:'\f2c6'}.zmdi-scanner:before{content:'\f2c7'}.zmdi-smartphone-android:before{content:'\f2c8'}.zmdi-smartphone-download:before{content:'\f2c9'}.zmdi-smartphone-erase:before{content:'\f2ca'}.zmdi-smartphone-info:before{content:'\f2cb'}.zmdi-smartphone-iphone:before{content:'\f2cc'}.zmdi-smartphone-landscape-lock:before{content:'\f2cd'}.zmdi-smartphone-landscape:before{content:'\f2ce'}.zmdi-smartphone-lock:before{content:'\f2cf'}.zmdi-smartphone-portrait-lock:before{content:'\f2d0'}.zmdi-smartphone-ring:before{content:'\f2d1'}.zmdi-smartphone-setting:before{content:'\f2d2'}.zmdi-smartphone-setup:before{content:'\f2d3'}.zmdi-smartphone:before{content:'\f2d4'}.zmdi-speaker:before{content:'\f2d5'}.zmdi-tablet-android:before{content:'\f2d6'}.zmdi-tablet-mac:before{content:'\f2d7'}.zmdi-tablet:before{content:'\f2d8'}.zmdi-tv-alt-play:before{content:'\f2d9'}.zmdi-tv-list:before{content:'\f2da'}.zmdi-tv-play:before{content:'\f2db'}.zmdi-tv:before{content:'\f2dc'}.zmdi-usb:before{content:'\f2dd'}.zmdi-videocam-off:before{content:'\f2de'}.zmdi-videocam-switch:before{content:'\f2df'}.zmdi-videocam:before{content:'\f2e0'}.zmdi-watch:before{content:'\f2e1'}.zmdi-wifi-alt-2:before{content:'\f2e2'}.zmdi-wifi-alt:before{content:'\f2e3'}.zmdi-wifi-info:before{content:'\f2e4'}.zmdi-wifi-lock:before{content:'\f2e5'}.zmdi-wifi-off:before{content:'\f2e6'}.zmdi-wifi-outline:before{content:'\f2e7'}.zmdi-wifi:before{content:'\f2e8'}.zmdi-arrow-left-bottom:before{content:'\f2e9'}.zmdi-arrow-left:before{content:'\f2ea'}.zmdi-arrow-merge:before{content:'\f2eb'}.zmdi-arrow-missed:before{content:'\f2ec'}.zmdi-arrow-right-top:before{content:'\f2ed'}.zmdi-arrow-right:before{content:'\f2ee'}.zmdi-arrow-split:before{content:'\f2ef'}.zmdi-arrows:before{content:'\f2f0'}.zmdi-caret-down-circle:before{content:'\f2f1'}.zmdi-caret-down:before{content:'\f2f2'}.zmdi-caret-left-circle:before{content:'\f2f3'}.zmdi-caret-left:before{content:'\f2f4'}.zmdi-caret-right-circle:before{content:'\f2f5'}.zmdi-caret-right:before{content:'\f2f6'}.zmdi-caret-up-circle:before{content:'\f2f7'}.zmdi-caret-up:before{content:'\f2f8'}.zmdi-chevron-down:before{content:'\f2f9'}.zmdi-chevron-left:before{content:'\f2fa'}.zmdi-chevron-right:before{content:'\f2fb'}.zmdi-chevron-up:before{content:'\f2fc'}.zmdi-forward:before{content:'\f2fd'}.zmdi-long-arrow-down:before{content:'\f2fe'}.zmdi-long-arrow-left:before{content:'\f2ff'}.zmdi-long-arrow-return:before{content:'\f300'}.zmdi-long-arrow-right:before{content:'\f301'}.zmdi-long-arrow-tab:before{content:'\f302'}.zmdi-long-arrow-up:before{content:'\f303'}.zmdi-rotate-ccw:before{content:'\f304'}.zmdi-rotate-cw:before{content:'\f305'}.zmdi-rotate-left:before{content:'\f306'}.zmdi-rotate-right:before{content:'\f307'}.zmdi-square-down:before{content:'\f308'}.zmdi-square-right:before{content:'\f309'}.zmdi-swap-alt:before{content:'\f30a'}.zmdi-swap-vertical-circle:before{content:'\f30b'}.zmdi-swap-vertical:before{content:'\f30c'}.zmdi-swap:before{content:'\f30d'}.zmdi-trending-down:before{content:'\f30e'}.zmdi-trending-flat:before{content:'\f30f'}.zmdi-trending-up:before{content:'\f310'}.zmdi-unfold-less:before{content:'\f311'}.zmdi-unfold-more:before{content:'\f312'}.zmdi-apps:before{content:'\f313'}.zmdi-grid-off:before{content:'\f314'}.zmdi-grid:before{content:'\f315'}.zmdi-view-agenda:before{content:'\f316'}.zmdi-view-array:before{content:'\f317'}.zmdi-view-carousel:before{content:'\f318'}.zmdi-view-column:before{content:'\f319'}.zmdi-view-comfy:before{content:'\f31a'}.zmdi-view-compact:before{content:'\f31b'}.zmdi-view-dashboard:before{content:'\f31c'}.zmdi-view-day:before{content:'\f31d'}.zmdi-view-headline:before{content:'\f31e'}.zmdi-view-list-alt:before{content:'\f31f'}.zmdi-view-list:before{content:'\f320'}.zmdi-view-module:before{content:'\f321'}.zmdi-view-quilt:before{content:'\f322'}.zmdi-view-stream:before{content:'\f323'}.zmdi-view-subtitles:before{content:'\f324'}.zmdi-view-toc:before{content:'\f325'}.zmdi-view-web:before{content:'\f326'}.zmdi-view-week:before{content:'\f327'}.zmdi-widgets:before{content:'\f328'}.zmdi-alarm-check:before{content:'\f329'}.zmdi-alarm-off:before{content:'\f32a'}.zmdi-alarm-plus:before{content:'\f32b'}.zmdi-alarm-snooze:before{content:'\f32c'}.zmdi-alarm:before{content:'\f32d'}.zmdi-calendar-alt:before{content:'\f32e'}.zmdi-calendar-check:before{content:'\f32f'}.zmdi-calendar-close:before{content:'\f330'}.zmdi-calendar-note:before{content:'\f331'}.zmdi-calendar:before{content:'\f332'}.zmdi-time-countdown:before{content:'\f333'}.zmdi-time-interval:before{content:'\f334'}.zmdi-time-restore-setting:before{content:'\f335'}.zmdi-time-restore:before{content:'\f336'}.zmdi-time:before{content:'\f337'}.zmdi-timer-off:before{content:'\f338'}.zmdi-timer:before{content:'\f339'}.zmdi-android-alt:before{content:'\f33a'}.zmdi-android:before{content:'\f33b'}.zmdi-apple:before{content:'\f33c'}.zmdi-behance:before{content:'\f33d'}.zmdi-codepen:before{content:'\f33e'}.zmdi-dribbble:before{content:'\f33f'}.zmdi-dropbox:before{content:'\f340'}.zmdi-evernote:before{content:'\f341'}.zmdi-facebook-box:before{content:'\f342'}.zmdi-facebook:before{content:'\f343'}.zmdi-github-box:before{content:'\f344'}.zmdi-github:before{content:'\f345'}.zmdi-google-drive:before{content:'\f346'}.zmdi-google-earth:before{content:'\f347'}.zmdi-google-glass:before{content:'\f348'}.zmdi-google-maps:before{content:'\f349'}.zmdi-google-pages:before{content:'\f34a'}.zmdi-google-play:before{content:'\f34b'}.zmdi-google-plus-box:before{content:'\f34c'}.zmdi-google-plus:before{content:'\f34d'}.zmdi-google:before{content:'\f34e'}.zmdi-instagram:before{content:'\f34f'}.zmdi-language-css3:before{content:'\f350'}.zmdi-language-html5:before{content:'\f351'}.zmdi-language-javascript:before{content:'\f352'}.zmdi-language-python-alt:before{content:'\f353'}.zmdi-language-python:before{content:'\f354'}.zmdi-lastfm:before{content:'\f355'}.zmdi-linkedin-box:before{content:'\f356'}.zmdi-paypal:before{content:'\f357'}.zmdi-pinterest-box:before{content:'\f358'}.zmdi-pocket:before{content:'\f359'}.zmdi-polymer:before{content:'\f35a'}.zmdi-share:before{content:'\f35b'}.zmdi-stackoverflow:before{content:'\f35c'}.zmdi-steam-square:before{content:'\f35d'}.zmdi-steam:before{content:'\f35e'}.zmdi-twitter-box:before{content:'\f35f'}.zmdi-twitter:before{content:'\f360'}.zmdi-vk:before{content:'\f361'}.zmdi-wikipedia:before{content:'\f362'}.zmdi-windows:before{content:'\f363'}.zmdi-aspect-ratio-alt:before{content:'\f364'}.zmdi-aspect-ratio:before{content:'\f365'}.zmdi-blur-circular:before{content:'\f366'}.zmdi-blur-linear:before{content:'\f367'}.zmdi-blur-off:before{content:'\f368'}.zmdi-blur:before{content:'\f369'}.zmdi-brightness-2:before{content:'\f36a'}.zmdi-brightness-3:before{content:'\f36b'}.zmdi-brightness-4:before{content:'\f36c'}.zmdi-brightness-5:before{content:'\f36d'}.zmdi-brightness-6:before{content:'\f36e'}.zmdi-brightness-7:before{content:'\f36f'}.zmdi-brightness-auto:before{content:'\f370'}.zmdi-brightness-setting:before{content:'\f371'}.zmdi-broken-image:before{content:'\f372'}.zmdi-center-focus-strong:before{content:'\f373'}.zmdi-center-focus-weak:before{content:'\f374'}.zmdi-compare:before{content:'\f375'}.zmdi-crop-16-9:before{content:'\f376'}.zmdi-crop-3-2:before{content:'\f377'}.zmdi-crop-5-4:before{content:'\f378'}.zmdi-crop-7-5:before{content:'\f379'}.zmdi-crop-din:before{content:'\f37a'}.zmdi-crop-free:before{content:'\f37b'}.zmdi-crop-landscape:before{content:'\f37c'}.zmdi-crop-portrait:before{content:'\f37d'}.zmdi-crop-square:before{content:'\f37e'}.zmdi-exposure-alt:before{content:'\f37f'}.zmdi-exposure:before{content:'\f380'}.zmdi-filter-b-and-w:before{content:'\f381'}.zmdi-filter-center-focus:before{content:'\f382'}.zmdi-filter-frames:before{content:'\f383'}.zmdi-filter-tilt-shift:before{content:'\f384'}.zmdi-gradient:before{content:'\f385'}.zmdi-grain:before{content:'\f386'}.zmdi-graphic-eq:before{content:'\f387'}.zmdi-hdr-off:before{content:'\f388'}.zmdi-hdr-strong:before{content:'\f389'}.zmdi-hdr-weak:before{content:'\f38a'}.zmdi-hdr:before{content:'\f38b'}.zmdi-iridescent:before{content:'\f38c'}.zmdi-leak-off:before{content:'\f38d'}.zmdi-leak:before{content:'\f38e'}.zmdi-looks:before{content:'\f38f'}.zmdi-loupe:before{content:'\f390'}.zmdi-panorama-horizontal:before{content:'\f391'}.zmdi-panorama-vertical:before{content:'\f392'}.zmdi-panorama-wide-angle:before{content:'\f393'}.zmdi-photo-size-select-large:before{content:'\f394'}.zmdi-photo-size-select-small:before{content:'\f395'}.zmdi-picture-in-picture:before{content:'\f396'}.zmdi-slideshow:before{content:'\f397'}.zmdi-texture:before{content:'\f398'}.zmdi-tonality:before{content:'\f399'}.zmdi-vignette:before{content:'\f39a'}.zmdi-wb-auto:before{content:'\f39b'}.zmdi-eject-alt:before{content:'\f39c'}.zmdi-eject:before{content:'\f39d'}.zmdi-equalizer:before{content:'\f39e'}.zmdi-fast-forward:before{content:'\f39f'}.zmdi-fast-rewind:before{content:'\f3a0'}.zmdi-forward-10:before{content:'\f3a1'}.zmdi-forward-30:before{content:'\f3a2'}.zmdi-forward-5:before{content:'\f3a3'}.zmdi-hearing:before{content:'\f3a4'}.zmdi-pause-circle-outline:before{content:'\f3a5'}.zmdi-pause-circle:before{content:'\f3a6'}.zmdi-pause:before{content:'\f3a7'}.zmdi-play-circle-outline:before{content:'\f3a8'}.zmdi-play-circle:before{content:'\f3a9'}.zmdi-play:before{content:'\f3aa'}.zmdi-playlist-audio:before{content:'\f3ab'}.zmdi-playlist-plus:before{content:'\f3ac'}.zmdi-repeat-one:before{content:'\f3ad'}.zmdi-repeat:before{content:'\f3ae'}.zmdi-replay-10:before{content:'\f3af'}.zmdi-replay-30:before{content:'\f3b0'}.zmdi-replay-5:before{content:'\f3b1'}.zmdi-replay:before{content:'\f3b2'}.zmdi-shuffle:before{content:'\f3b3'}.zmdi-skip-next:before{content:'\f3b4'}.zmdi-skip-previous:before{content:'\f3b5'}.zmdi-stop:before{content:'\f3b6'}.zmdi-surround-sound:before{content:'\f3b7'}.zmdi-tune:before{content:'\f3b8'}.zmdi-volume-down:before{content:'\f3b9'}.zmdi-volume-mute:before{content:'\f3ba'}.zmdi-volume-off:before{content:'\f3bb'}.zmdi-volume-up:before{content:'\f3bc'}.zmdi-n-1-square:before{content:'\f3bd'}.zmdi-n-2-square:before{content:'\f3be'}.zmdi-n-3-square:before{content:'\f3bf'}.zmdi-n-4-square:before{content:'\f3c0'}.zmdi-n-5-square:before{content:'\f3c1'}.zmdi-n-6-square:before{content:'\f3c2'}.zmdi-neg-1:before{content:'\f3c3'}.zmdi-neg-2:before{content:'\f3c4'}.zmdi-plus-1:before{content:'\f3c5'}.zmdi-plus-2:before{content:'\f3c6'}.zmdi-sec-10:before{content:'\f3c7'}.zmdi-sec-3:before{content:'\f3c8'}.zmdi-zero:before{content:'\f3c9'}.zmdi-airline-seat-flat-angled:before{content:'\f3ca'}.zmdi-airline-seat-flat:before{content:'\f3cb'}.zmdi-airline-seat-individual-suite:before{content:'\f3cc'}.zmdi-airline-seat-legroom-extra:before{content:'\f3cd'}.zmdi-airline-seat-legroom-normal:before{content:'\f3ce'}.zmdi-airline-seat-legroom-reduced:before{content:'\f3cf'}.zmdi-airline-seat-recline-extra:before{content:'\f3d0'}.zmdi-airline-seat-recline-normal:before{content:'\f3d1'}.zmdi-airplay:before{content:'\f3d2'}.zmdi-closed-caption:before{content:'\f3d3'}.zmdi-confirmation-number:before{content:'\f3d4'}.zmdi-developer-board:before{content:'\f3d5'}.zmdi-disc-full:before{content:'\f3d6'}.zmdi-explicit:before{content:'\f3d7'}.zmdi-flight-land:before{content:'\f3d8'}.zmdi-flight-takeoff:before{content:'\f3d9'}.zmdi-flip-to-back:before{content:'\f3da'}.zmdi-flip-to-front:before{content:'\f3db'}.zmdi-group-work:before{content:'\f3dc'}.zmdi-hd:before{content:'\f3dd'}.zmdi-hq:before{content:'\f3de'}.zmdi-markunread-mailbox:before{content:'\f3df'}.zmdi-memory:before{content:'\f3e0'}.zmdi-nfc:before{content:'\f3e1'}.zmdi-play-for-work:before{content:'\f3e2'}.zmdi-power-input:before{content:'\f3e3'}.zmdi-present-to-all:before{content:'\f3e4'}.zmdi-satellite:before{content:'\f3e5'}.zmdi-tap-and-play:before{content:'\f3e6'}.zmdi-vibration:before{content:'\f3e7'}.zmdi-voicemail:before{content:'\f3e8'}.zmdi-group:before{content:'\f3e9'}.zmdi-rss:before{content:'\f3ea'}.zmdi-shape:before{content:'\f3eb'}.zmdi-spinner:before{content:'\f3ec'}.zmdi-ungroup:before{content:'\f3ed'}.zmdi-500px:before{content:'\f3ee'}.zmdi-8tracks:before{content:'\f3ef'}.zmdi-amazon:before{content:'\f3f0'}.zmdi-blogger:before{content:'\f3f1'}.zmdi-delicious:before{content:'\f3f2'}.zmdi-disqus:before{content:'\f3f3'}.zmdi-flattr:before{content:'\f3f4'}.zmdi-flickr:before{content:'\f3f5'}.zmdi-github-alt:before{content:'\f3f6'}.zmdi-google-old:before{content:'\f3f7'}.zmdi-linkedin:before{content:'\f3f8'}.zmdi-odnoklassniki:before{content:'\f3f9'}.zmdi-outlook:before{content:'\f3fa'}.zmdi-paypal-alt:before{content:'\f3fb'}.zmdi-pinterest:before{content:'\f3fc'}.zmdi-playstation:before{content:'\f3fd'}.zmdi-reddit:before{content:'\f3fe'}.zmdi-skype:before{content:'\f3ff'}.zmdi-slideshare:before{content:'\f400'}.zmdi-soundcloud:before{content:'\f401'}.zmdi-tumblr:before{content:'\f402'}.zmdi-twitch:before{content:'\f403'}.zmdi-vimeo:before{content:'\f404'}.zmdi-whatsapp:before{content:'\f405'}.zmdi-xbox:before{content:'\f406'}.zmdi-yahoo:before{content:'\f407'}.zmdi-youtube-play:before{content:'\f408'}.zmdi-youtube:before{content:'\f409'}.zmdi-3d-rotation:before{content:'\f101'}.zmdi-airplane-off:before{content:'\f102'}.zmdi-airplane:before{content:'\f103'}.zmdi-album:before{content:'\f104'}.zmdi-archive:before{content:'\f105'}.zmdi-assignment-account:before{content:'\f106'}.zmdi-assignment-alert:before{content:'\f107'}.zmdi-assignment-check:before{content:'\f108'}.zmdi-assignment-o:before{content:'\f109'}.zmdi-assignment-return:before{content:'\f10a'}.zmdi-assignment-returned:before{content:'\f10b'}.zmdi-assignment:before{content:'\f10c'}.zmdi-attachment-alt:before{content:'\f10d'}.zmdi-attachment:before{content:'\f10e'}.zmdi-audio:before{content:'\f10f'}.zmdi-badge-check:before{content:'\f110'}.zmdi-balance-wallet:before{content:'\f111'}.zmdi-balance:before{content:'\f112'}.zmdi-battery-alert:before{content:'\f113'}.zmdi-battery-flash:before{content:'\f114'}.zmdi-battery-unknown:before{content:'\f115'}.zmdi-battery:before{content:'\f116'}.zmdi-bike:before{content:'\f117'}.zmdi-block-alt:before{content:'\f118'}.zmdi-block:before{content:'\f119'}.zmdi-boat:before{content:'\f11a'}.zmdi-book-image:before{content:'\f11b'}.zmdi-book:before{content:'\f11c'}.zmdi-bookmark-outline:before{content:'\f11d'}.zmdi-bookmark:before{content:'\f11e'}.zmdi-brush:before{content:'\f11f'}.zmdi-bug:before{content:'\f120'}.zmdi-bus:before{content:'\f121'}.zmdi-cake:before{content:'\f122'}.zmdi-car-taxi:before{content:'\f123'}.zmdi-car-wash:before{content:'\f124'}.zmdi-car:before{content:'\f125'}.zmdi-card-giftcard:before{content:'\f126'}.zmdi-card-membership:before{content:'\f127'}.zmdi-card-travel:before{content:'\f128'}.zmdi-card:before{content:'\f129'}.zmdi-case-check:before{content:'\f12a'}.zmdi-case-download:before{content:'\f12b'}.zmdi-case-play:before{content:'\f12c'}.zmdi-case:before{content:'\f12d'}.zmdi-cast-connected:before{content:'\f12e'}.zmdi-cast:before{content:'\f12f'}.zmdi-chart-donut:before{content:'\f130'}.zmdi-chart:before{content:'\f131'}.zmdi-city-alt:before{content:'\f132'}.zmdi-city:before{content:'\f133'}.zmdi-close-circle-o:before{content:'\f134'}.zmdi-close-circle:before{content:'\f135'}.zmdi-close:before{content:'\f136'}.zmdi-cocktail:before{content:'\f137'}.zmdi-code-setting:before{content:'\f138'}.zmdi-code-smartphone:before{content:'\f139'}.zmdi-code:before{content:'\f13a'}.zmdi-coffee:before{content:'\f13b'}.zmdi-collection-bookmark:before{content:'\f13c'}.zmdi-collection-case-play:before{content:'\f13d'}.zmdi-collection-folder-image:before{content:'\f13e'}.zmdi-collection-image-o:before{content:'\f13f'}.zmdi-collection-image:before{content:'\f140'}.zmdi-collection-item-1:before{content:'\f141'}.zmdi-collection-item-2:before{content:'\f142'}.zmdi-collection-item-3:before{content:'\f143'}.zmdi-collection-item-4:before{content:'\f144'}.zmdi-collection-item-5:before{content:'\f145'}.zmdi-collection-item-6:before{content:'\f146'}.zmdi-collection-item-7:before{content:'\f147'}.zmdi-collection-item-8:before{content:'\f148'}.zmdi-collection-item-9-plus:before{content:'\f149'}.zmdi-collection-item-9:before{content:'\f14a'}.zmdi-collection-item:before{content:'\f14b'}.zmdi-collection-music:before{content:'\f14c'}.zmdi-collection-pdf:before{content:'\f14d'}.zmdi-collection-plus:before{content:'\f14e'}.zmdi-collection-speaker:before{content:'\f14f'}.zmdi-collection-text:before{content:'\f150'}.zmdi-collection-video:before{content:'\f151'}.zmdi-compass:before{content:'\f152'}.zmdi-cutlery:before{content:'\f153'}.zmdi-delete:before{content:'\f154'}.zmdi-dialpad:before{content:'\f155'}.zmdi-dns:before{content:'\f156'}.zmdi-drink:before{content:'\f157'}.zmdi-edit:before{content:'\f158'}.zmdi-email-open:before{content:'\f159'}.zmdi-email:before{content:'\f15a'}.zmdi-eye-off:before{content:'\f15b'}.zmdi-eye:before{content:'\f15c'}.zmdi-eyedropper:before{content:'\f15d'}.zmdi-favorite-outline:before{content:'\f15e'}.zmdi-favorite:before{content:'\f15f'}.zmdi-filter-list:before{content:'\f160'}.zmdi-fire:before{content:'\f161'}.zmdi-flag:before{content:'\f162'}.zmdi-flare:before{content:'\f163'}.zmdi-flash-auto:before{content:'\f164'}.zmdi-flash-off:before{content:'\f165'}.zmdi-flash:before{content:'\f166'}.zmdi-flip:before{content:'\f167'}.zmdi-flower-alt:before{content:'\f168'}.zmdi-flower:before{content:'\f169'}.zmdi-font:before{content:'\f16a'}.zmdi-fullscreen-alt:before{content:'\f16b'}.zmdi-fullscreen-exit:before{content:'\f16c'}.zmdi-fullscreen:before{content:'\f16d'}.zmdi-functions:before{content:'\f16e'}.zmdi-gas-station:before{content:'\f16f'}.zmdi-gesture:before{content:'\f170'}.zmdi-globe-alt:before{content:'\f171'}.zmdi-globe-lock:before{content:'\f172'}.zmdi-globe:before{content:'\f173'}.zmdi-graduation-cap:before{content:'\f174'}.zmdi-home:before{content:'\f175'}.zmdi-hospital-alt:before{content:'\f176'}.zmdi-hospital:before{content:'\f177'}.zmdi-hotel:before{content:'\f178'}.zmdi-hourglass-alt:before{content:'\f179'}.zmdi-hourglass-outline:before{content:'\f17a'}.zmdi-hourglass:before{content:'\f17b'}.zmdi-http:before{content:'\f17c'}.zmdi-image-alt:before{content:'\f17d'}.zmdi-image-o:before{content:'\f17e'}.zmdi-image:before{content:'\f17f'}.zmdi-inbox:before{content:'\f180'}.zmdi-invert-colors-off:before{content:'\f181'}.zmdi-invert-colors:before{content:'\f182'}.zmdi-key:before{content:'\f183'}.zmdi-label-alt-outline:before{content:'\f184'}.zmdi-label-alt:before{content:'\f185'}.zmdi-label-heart:before{content:'\f186'}.zmdi-label:before{content:'\f187'}.zmdi-labels:before{content:'\f188'}.zmdi-lamp:before{content:'\f189'}.zmdi-landscape:before{content:'\f18a'}.zmdi-layers-off:before{content:'\f18b'}.zmdi-layers:before{content:'\f18c'}.zmdi-library:before{content:'\f18d'}.zmdi-link:before{content:'\f18e'}.zmdi-lock-open:before{content:'\f18f'}.zmdi-lock-outline:before{content:'\f190'}.zmdi-lock:before{content:'\f191'}.zmdi-mail-reply-all:before{content:'\f192'}.zmdi-mail-reply:before{content:'\f193'}.zmdi-mail-send:before{content:'\f194'}.zmdi-mall:before{content:'\f195'}.zmdi-map:before{content:'\f196'}.zmdi-menu:before{content:'\f197'}.zmdi-money-box:before{content:'\f198'}.zmdi-money-off:before{content:'\f199'}.zmdi-money:before{content:'\f19a'}.zmdi-more-vert:before{content:'\f19b'}.zmdi-more:before{content:'\f19c'}.zmdi-movie-alt:before{content:'\f19d'}.zmdi-movie:before{content:'\f19e'}.zmdi-nature-people:before{content:'\f19f'}.zmdi-nature:before{content:'\f1a0'}.zmdi-navigation:before{content:'\f1a1'}.zmdi-open-in-browser:before{content:'\f1a2'}.zmdi-open-in-new:before{content:'\f1a3'}.zmdi-palette:before{content:'\f1a4'}.zmdi-parking:before{content:'\f1a5'}.zmdi-pin-account:before{content:'\f1a6'}.zmdi-pin-assistant:before{content:'\f1a7'}.zmdi-pin-drop:before{content:'\f1a8'}.zmdi-pin-help:before{content:'\f1a9'}.zmdi-pin-off:before{content:'\f1aa'}.zmdi-pin:before{content:'\f1ab'}.zmdi-pizza:before{content:'\f1ac'}.zmdi-plaster:before{content:'\f1ad'}.zmdi-power-setting:before{content:'\f1ae'}.zmdi-power:before{content:'\f1af'}.zmdi-print:before{content:'\f1b0'}.zmdi-puzzle-piece:before{content:'\f1b1'}.zmdi-quote:before{content:'\f1b2'}.zmdi-railway:before{content:'\f1b3'}.zmdi-receipt:before{content:'\f1b4'}.zmdi-refresh-alt:before{content:'\f1b5'}.zmdi-refresh-sync-alert:before{content:'\f1b6'}.zmdi-refresh-sync-off:before{content:'\f1b7'}.zmdi-refresh-sync:before{content:'\f1b8'}.zmdi-refresh:before{content:'\f1b9'}.zmdi-roller:before{content:'\f1ba'}.zmdi-ruler:before{content:'\f1bb'}.zmdi-scissors:before{content:'\f1bc'}.zmdi-screen-rotation-lock:before{content:'\f1bd'}.zmdi-screen-rotation:before{content:'\f1be'}.zmdi-search-for:before{content:'\f1bf'}.zmdi-search-in-file:before{content:'\f1c0'}.zmdi-search-in-page:before{content:'\f1c1'}.zmdi-search-replace:before{content:'\f1c2'}.zmdi-search:before{content:'\f1c3'}.zmdi-seat:before{content:'\f1c4'}.zmdi-settings-square:before{content:'\f1c5'}.zmdi-settings:before{content:'\f1c6'}.zmdi-shield-check:before{content:'\f1c7'}.zmdi-shield-security:before{content:'\f1c8'}.zmdi-shopping-basket:before{content:'\f1c9'}.zmdi-shopping-cart-plus:before{content:'\f1ca'}.zmdi-shopping-cart:before{content:'\f1cb'}.zmdi-sign-in:before{content:'\f1cc'}.zmdi-sort-amount-asc:before{content:'\f1cd'}.zmdi-sort-amount-desc:before{content:'\f1ce'}.zmdi-sort-asc:before{content:'\f1cf'}.zmdi-sort-desc:before{content:'\f1d0'}.zmdi-spellcheck:before{content:'\f1d1'}.zmdi-storage:before{content:'\f1d2'}.zmdi-store-24:before{content:'\f1d3'}.zmdi-store:before{content:'\f1d4'}.zmdi-subway:before{content:'\f1d5'}.zmdi-sun:before{content:'\f1d6'}.zmdi-tab-unselected:before{content:'\f1d7'}.zmdi-tab:before{content:'\f1d8'}.zmdi-tag-close:before{content:'\f1d9'}.zmdi-tag-more:before{content:'\f1da'}.zmdi-tag:before{content:'\f1db'}.zmdi-thumb-down:before{content:'\f1dc'}.zmdi-thumb-up-down:before{content:'\f1dd'}.zmdi-thumb-up:before{content:'\f1de'}.zmdi-ticket-star:before{content:'\f1df'}.zmdi-toll:before{content:'\f1e0'}.zmdi-toys:before{content:'\f1e1'}.zmdi-traffic:before{content:'\f1e2'}.zmdi-translate:before{content:'\f1e3'}.zmdi-triangle-down:before{content:'\f1e4'}.zmdi-triangle-up:before{content:'\f1e5'}.zmdi-truck:before{content:'\f1e6'}.zmdi-turning-sign:before{content:'\f1e7'}.zmdi-wallpaper:before{content:'\f1e8'}.zmdi-washing-machine:before{content:'\f1e9'}.zmdi-window-maximize:before{content:'\f1ea'}.zmdi-window-minimize:before{content:'\f1eb'}.zmdi-window-restore:before{content:'\f1ec'}.zmdi-wrench:before{content:'\f1ed'}.zmdi-zoom-in:before{content:'\f1ee'}.zmdi-zoom-out:before{content:'\f1ef'}.zmdi-alert-circle-o:before{content:'\f1f0'}.zmdi-alert-circle:before{content:'\f1f1'}.zmdi-alert-octagon:before{content:'\f1f2'}.zmdi-alert-polygon:before{content:'\f1f3'}.zmdi-alert-triangle:before{content:'\f1f4'}.zmdi-help-outline:before{content:'\f1f5'}.zmdi-help:before{content:'\f1f6'}.zmdi-info-outline:before{content:'\f1f7'}.zmdi-info:before{content:'\f1f8'}.zmdi-notifications-active:before{content:'\f1f9'}.zmdi-notifications-add:before{content:'\f1fa'}.zmdi-notifications-none:before{content:'\f1fb'}.zmdi-notifications-off:before{content:'\f1fc'}.zmdi-notifications-paused:before{content:'\f1fd'}.zmdi-notifications:before{content:'\f1fe'}.zmdi-account-add:before{content:'\f1ff'}.zmdi-account-box-mail:before{content:'\f200'}.zmdi-account-box-o:before{content:'\f201'}.zmdi-account-box-phone:before{content:'\f202'}.zmdi-account-box:before{content:'\f203'}.zmdi-account-calendar:before{content:'\f204'}.zmdi-account-circle:before{content:'\f205'}.zmdi-account-o:before{content:'\f206'}.zmdi-account:before{content:'\f207'}.zmdi-accounts-add:before{content:'\f208'}.zmdi-accounts-alt:before{content:'\f209'}.zmdi-accounts-list-alt:before{content:'\f20a'}.zmdi-accounts-list:before{content:'\f20b'}.zmdi-accounts-outline:before{content:'\f20c'}.zmdi-accounts:before{content:'\f20d'}.zmdi-face:before{content:'\f20e'}.zmdi-female:before{content:'\f20f'}.zmdi-male-alt:before{content:'\f210'}.zmdi-male-female:before{content:'\f211'}.zmdi-male:before{content:'\f212'}.zmdi-mood-bad:before{content:'\f213'}.zmdi-mood:before{content:'\f214'}.zmdi-run:before{content:'\f215'}.zmdi-walk:before{content:'\f216'}.zmdi-cloud-box:before{content:'\f217'}.zmdi-cloud-circle:before{content:'\f218'}.zmdi-cloud-done:before{content:'\f219'}.zmdi-cloud-download:before{content:'\f21a'}.zmdi-cloud-off:before{content:'\f21b'}.zmdi-cloud-outline-alt:before{content:'\f21c'}.zmdi-cloud-outline:before{content:'\f21d'}.zmdi-cloud-upload:before{content:'\f21e'}.zmdi-cloud:before{content:'\f21f'}.zmdi-download:before{content:'\f220'}.zmdi-file-plus:before{content:'\f221'}.zmdi-file-text:before{content:'\f222'}.zmdi-file:before{content:'\f223'}.zmdi-folder-outline:before{content:'\f224'}.zmdi-folder-person:before{content:'\f225'}.zmdi-folder-star-alt:before{content:'\f226'}.zmdi-folder-star:before{content:'\f227'}.zmdi-folder:before{content:'\f228'}.zmdi-gif:before{content:'\f229'}.zmdi-upload:before{content:'\f22a'}.zmdi-border-all:before{content:'\f22b'}.zmdi-border-bottom:before{content:'\f22c'}.zmdi-border-clear:before{content:'\f22d'}.zmdi-border-color:before{content:'\f22e'}.zmdi-border-horizontal:before{content:'\f22f'}.zmdi-border-inner:before{content:'\f230'}.zmdi-border-left:before{content:'\f231'}.zmdi-border-outer:before{content:'\f232'}.zmdi-border-right:before{content:'\f233'}.zmdi-border-style:before{content:'\f234'}.zmdi-border-top:before{content:'\f235'}.zmdi-border-vertical:before{content:'\f236'}.zmdi-copy:before{content:'\f237'}.zmdi-crop:before{content:'\f238'}.zmdi-format-align-center:before{content:'\f239'}.zmdi-format-align-justify:before{content:'\f23a'}.zmdi-format-align-left:before{content:'\f23b'}.zmdi-format-align-right:before{content:'\f23c'}.zmdi-format-bold:before{content:'\f23d'}.zmdi-format-clear-all:before{content:'\f23e'}.zmdi-format-clear:before{content:'\f23f'}.zmdi-format-color-fill:before{content:'\f240'}.zmdi-format-color-reset:before{content:'\f241'}.zmdi-format-color-text:before{content:'\f242'}.zmdi-format-indent-decrease:before{content:'\f243'}.zmdi-format-indent-increase:before{content:'\f244'}.zmdi-format-italic:before{content:'\f245'}.zmdi-format-line-spacing:before{content:'\f246'}.zmdi-format-list-bulleted:before{content:'\f247'}.zmdi-format-list-numbered:before{content:'\f248'}.zmdi-format-ltr:before{content:'\f249'}.zmdi-format-rtl:before{content:'\f24a'}.zmdi-format-size:before{content:'\f24b'}.zmdi-format-strikethrough-s:before{content:'\f24c'}.zmdi-format-strikethrough:before{content:'\f24d'}.zmdi-format-subject:before{content:'\f24e'}.zmdi-format-underlined:before{content:'\f24f'}.zmdi-format-valign-bottom:before{content:'\f250'}.zmdi-format-valign-center:before{content:'\f251'}.zmdi-format-valign-top:before{content:'\f252'}.zmdi-redo:before{content:'\f253'}.zmdi-select-all:before{content:'\f254'}.zmdi-space-bar:before{content:'\f255'}.zmdi-text-format:before{content:'\f256'}.zmdi-transform:before{content:'\f257'}.zmdi-undo:before{content:'\f258'}.zmdi-wrap-text:before{content:'\f259'}.zmdi-comment-alert:before{content:'\f25a'}.zmdi-comment-alt-text:before{content:'\f25b'}.zmdi-comment-alt:before{content:'\f25c'}.zmdi-comment-edit:before{content:'\f25d'}.zmdi-comment-image:before{content:'\f25e'}.zmdi-comment-list:before{content:'\f25f'}.zmdi-comment-more:before{content:'\f260'}.zmdi-comment-outline:before{content:'\f261'}.zmdi-comment-text-alt:before{content:'\f262'}.zmdi-comment-text:before{content:'\f263'}.zmdi-comment-video:before{content:'\f264'}.zmdi-comment:before{content:'\f265'}.zmdi-comments:before{content:'\f266'}.zmdi-check-all:before{content:'\f267'}.zmdi-check-circle-u:before{content:'\f268'}.zmdi-check-circle:before{content:'\f269'}.zmdi-check-square:before{content:'\f26a'}.zmdi-check:before{content:'\f26b'}.zmdi-circle-o:before{content:'\f26c'}.zmdi-circle:before{content:'\f26d'}.zmdi-dot-circle-alt:before{content:'\f26e'}.zmdi-dot-circle:before{content:'\f26f'}.zmdi-minus-circle-outline:before{content:'\f270'}.zmdi-minus-circle:before{content:'\f271'}.zmdi-minus-square:before{content:'\f272'}.zmdi-minus:before{content:'\f273'}.zmdi-plus-circle-o-duplicate:before{content:'\f274'}.zmdi-plus-circle-o:before{content:'\f275'}.zmdi-plus-circle:before{content:'\f276'}.zmdi-plus-square:before{content:'\f277'}.zmdi-plus:before{content:'\f278'}.zmdi-square-o:before{content:'\f279'}.zmdi-star-circle:before{content:'\f27a'}.zmdi-star-half:before{content:'\f27b'}.zmdi-star-outline:before{content:'\f27c'}.zmdi-star:before{content:'\f27d'}.zmdi-bluetooth-connected:before{content:'\f27e'}.zmdi-bluetooth-off:before{content:'\f27f'}.zmdi-bluetooth-search:before{content:'\f280'}.zmdi-bluetooth-setting:before{content:'\f281'}.zmdi-bluetooth:before{content:'\f282'}.zmdi-camera-add:before{content:'\f283'}.zmdi-camera-alt:before{content:'\f284'}.zmdi-camera-bw:before{content:'\f285'}.zmdi-camera-front:before{content:'\f286'}.zmdi-camera-mic:before{content:'\f287'}.zmdi-camera-party-mode:before{content:'\f288'}.zmdi-camera-rear:before{content:'\f289'}.zmdi-camera-roll:before{content:'\f28a'}.zmdi-camera-switch:before{content:'\f28b'}.zmdi-camera:before{content:'\f28c'}.zmdi-card-alert:before{content:'\f28d'}.zmdi-card-off:before{content:'\f28e'}.zmdi-card-sd:before{content:'\f28f'}.zmdi-card-sim:before{content:'\f290'}.zmdi-desktop-mac:before{content:'\f291'}.zmdi-desktop-windows:before{content:'\f292'}.zmdi-device-hub:before{content:'\f293'}.zmdi-devices-off:before{content:'\f294'}.zmdi-devices:before{content:'\f295'}.zmdi-dock:before{content:'\f296'}.zmdi-floppy:before{content:'\f297'}.zmdi-gamepad:before{content:'\f298'}.zmdi-gps-dot:before{content:'\f299'}.zmdi-gps-off:before{content:'\f29a'}.zmdi-gps:before{content:'\f29b'}.zmdi-headset-mic:before{content:'\f29c'}.zmdi-headset:before{content:'\f29d'}.zmdi-input-antenna:before{content:'\f29e'}.zmdi-input-composite:before{content:'\f29f'}.zmdi-input-hdmi:before{content:'\f2a0'}.zmdi-input-power:before{content:'\f2a1'}.zmdi-input-svideo:before{content:'\f2a2'}.zmdi-keyboard-hide:before{content:'\f2a3'}.zmdi-keyboard:before{content:'\f2a4'}.zmdi-laptop-chromebook:before{content:'\f2a5'}.zmdi-laptop-mac:before{content:'\f2a6'}.zmdi-laptop:before{content:'\f2a7'}.zmdi-mic-off:before{content:'\f2a8'}.zmdi-mic-outline:before{content:'\f2a9'}.zmdi-mic-setting:before{content:'\f2aa'}.zmdi-mic:before{content:'\f2ab'}.zmdi-mouse:before{content:'\f2ac'}.zmdi-network-alert:before{content:'\f2ad'}.zmdi-network-locked:before{content:'\f2ae'}.zmdi-network-off:before{content:'\f2af'}.zmdi-network-outline:before{content:'\f2b0'}.zmdi-network-setting:before{content:'\f2b1'}.zmdi-network:before{content:'\f2b2'}.zmdi-phone-bluetooth:before{content:'\f2b3'}.zmdi-phone-end:before{content:'\f2b4'}.zmdi-phone-forwarded:before{content:'\f2b5'}.zmdi-phone-in-talk:before{content:'\f2b6'}.zmdi-phone-locked:before{content:'\f2b7'}.zmdi-phone-missed:before{content:'\f2b8'}.zmdi-phone-msg:before{content:'\f2b9'}.zmdi-phone-paused:before{content:'\f2ba'}.zmdi-phone-ring:before{content:'\f2bb'}.zmdi-phone-setting:before{content:'\f2bc'}.zmdi-phone-sip:before{content:'\f2bd'}.zmdi-phone:before{content:'\f2be'}.zmdi-portable-wifi-changes:before{content:'\f2bf'}.zmdi-portable-wifi-off:before{content:'\f2c0'}.zmdi-portable-wifi:before{content:'\f2c1'}.zmdi-radio:before{content:'\f2c2'}.zmdi-reader:before{content:'\f2c3'}.zmdi-remote-control-alt:before{content:'\f2c4'}.zmdi-remote-control:before{content:'\f2c5'}.zmdi-router:before{content:'\f2c6'}.zmdi-scanner:before{content:'\f2c7'}.zmdi-smartphone-android:before{content:'\f2c8'}.zmdi-smartphone-download:before{content:'\f2c9'}.zmdi-smartphone-erase:before{content:'\f2ca'}.zmdi-smartphone-info:before{content:'\f2cb'}.zmdi-smartphone-iphone:before{content:'\f2cc'}.zmdi-smartphone-landscape-lock:before{content:'\f2cd'}.zmdi-smartphone-landscape:before{content:'\f2ce'}.zmdi-smartphone-lock:before{content:'\f2cf'}.zmdi-smartphone-portrait-lock:before{content:'\f2d0'}.zmdi-smartphone-ring:before{content:'\f2d1'}.zmdi-smartphone-setting:before{content:'\f2d2'}.zmdi-smartphone-setup:before{content:'\f2d3'}.zmdi-smartphone:before{content:'\f2d4'}.zmdi-speaker:before{content:'\f2d5'}.zmdi-tablet-android:before{content:'\f2d6'}.zmdi-tablet-mac:before{content:'\f2d7'}.zmdi-tablet:before{content:'\f2d8'}.zmdi-tv-alt-play:before{content:'\f2d9'}.zmdi-tv-list:before{content:'\f2da'}.zmdi-tv-play:before{content:'\f2db'}.zmdi-tv:before{content:'\f2dc'}.zmdi-usb:before{content:'\f2dd'}.zmdi-videocam-off:before{content:'\f2de'}.zmdi-videocam-switch:before{content:'\f2df'}.zmdi-videocam:before{content:'\f2e0'}.zmdi-watch:before{content:'\f2e1'}.zmdi-wifi-alt-2:before{content:'\f2e2'}.zmdi-wifi-alt:before{content:'\f2e3'}.zmdi-wifi-info:before{content:'\f2e4'}.zmdi-wifi-lock:before{content:'\f2e5'}.zmdi-wifi-off:before{content:'\f2e6'}.zmdi-wifi-outline:before{content:'\f2e7'}.zmdi-wifi:before{content:'\f2e8'}.zmdi-arrow-left-bottom:before{content:'\f2e9'}.zmdi-arrow-left:before{content:'\f2ea'}.zmdi-arrow-merge:before{content:'\f2eb'}.zmdi-arrow-missed:before{content:'\f2ec'}.zmdi-arrow-right-top:before{content:'\f2ed'}.zmdi-arrow-right:before{content:'\f2ee'}.zmdi-arrow-split:before{content:'\f2ef'}.zmdi-arrows:before{content:'\f2f0'}.zmdi-caret-down-circle:before{content:'\f2f1'}.zmdi-caret-down:before{content:'\f2f2'}.zmdi-caret-left-circle:before{content:'\f2f3'}.zmdi-caret-left:before{content:'\f2f4'}.zmdi-caret-right-circle:before{content:'\f2f5'}.zmdi-caret-right:before{content:'\f2f6'}.zmdi-caret-up-circle:before{content:'\f2f7'}.zmdi-caret-up:before{content:'\f2f8'}.zmdi-chevron-down:before{content:'\f2f9'}.zmdi-chevron-left:before{content:'\f2fa'}.zmdi-chevron-right:before{content:'\f2fb'}.zmdi-chevron-up:before{content:'\f2fc'}.zmdi-forward:before{content:'\f2fd'}.zmdi-long-arrow-down:before{content:'\f2fe'}.zmdi-long-arrow-left:before{content:'\f2ff'}.zmdi-long-arrow-return:before{content:'\f300'}.zmdi-long-arrow-right:before{content:'\f301'}.zmdi-long-arrow-tab:before{content:'\f302'}.zmdi-long-arrow-up:before{content:'\f303'}.zmdi-rotate-ccw:before{content:'\f304'}.zmdi-rotate-cw:before{content:'\f305'}.zmdi-rotate-left:before{content:'\f306'}.zmdi-rotate-right:before{content:'\f307'}.zmdi-square-down:before{content:'\f308'}.zmdi-square-right:before{content:'\f309'}.zmdi-swap-alt:before{content:'\f30a'}.zmdi-swap-vertical-circle:before{content:'\f30b'}.zmdi-swap-vertical:before{content:'\f30c'}.zmdi-swap:before{content:'\f30d'}.zmdi-trending-down:before{content:'\f30e'}.zmdi-trending-flat:before{content:'\f30f'}.zmdi-trending-up:before{content:'\f310'}.zmdi-unfold-less:before{content:'\f311'}.zmdi-unfold-more:before{content:'\f312'}.zmdi-apps:before{content:'\f313'}.zmdi-grid-off:before{content:'\f314'}.zmdi-grid:before{content:'\f315'}.zmdi-view-agenda:before{content:'\f316'}.zmdi-view-array:before{content:'\f317'}.zmdi-view-carousel:before{content:'\f318'}.zmdi-view-column:before{content:'\f319'}.zmdi-view-comfy:before{content:'\f31a'}.zmdi-view-compact:before{content:'\f31b'}.zmdi-view-dashboard:before{content:'\f31c'}.zmdi-view-day:before{content:'\f31d'}.zmdi-view-headline:before{content:'\f31e'}.zmdi-view-list-alt:before{content:'\f31f'}.zmdi-view-list:before{content:'\f320'}.zmdi-view-module:before{content:'\f321'}.zmdi-view-quilt:before{content:'\f322'}.zmdi-view-stream:before{content:'\f323'}.zmdi-view-subtitles:before{content:'\f324'}.zmdi-view-toc:before{content:'\f325'}.zmdi-view-web:before{content:'\f326'}.zmdi-view-week:before{content:'\f327'}.zmdi-widgets:before{content:'\f328'}.zmdi-alarm-check:before{content:'\f329'}.zmdi-alarm-off:before{content:'\f32a'}.zmdi-alarm-plus:before{content:'\f32b'}.zmdi-alarm-snooze:before{content:'\f32c'}.zmdi-alarm:before{content:'\f32d'}.zmdi-calendar-alt:before{content:'\f32e'}.zmdi-calendar-check:before{content:'\f32f'}.zmdi-calendar-close:before{content:'\f330'}.zmdi-calendar-note:before{content:'\f331'}.zmdi-calendar:before{content:'\f332'}.zmdi-time-countdown:before{content:'\f333'}.zmdi-time-interval:before{content:'\f334'}.zmdi-time-restore-setting:before{content:'\f335'}.zmdi-time-restore:before{content:'\f336'}.zmdi-time:before{content:'\f337'}.zmdi-timer-off:before{content:'\f338'}.zmdi-timer:before{content:'\f339'}.zmdi-android-alt:before{content:'\f33a'}.zmdi-android:before{content:'\f33b'}.zmdi-apple:before{content:'\f33c'}.zmdi-behance:before{content:'\f33d'}.zmdi-codepen:before{content:'\f33e'}.zmdi-dribbble:before{content:'\f33f'}.zmdi-dropbox:before{content:'\f340'}.zmdi-evernote:before{content:'\f341'}.zmdi-facebook-box:before{content:'\f342'}.zmdi-facebook:before{content:'\f343'}.zmdi-github-box:before{content:'\f344'}.zmdi-github:before{content:'\f345'}.zmdi-google-drive:before{content:'\f346'}.zmdi-google-earth:before{content:'\f347'}.zmdi-google-glass:before{content:'\f348'}.zmdi-google-maps:before{content:'\f349'}.zmdi-google-pages:before{content:'\f34a'}.zmdi-google-play:before{content:'\f34b'}.zmdi-google-plus-box:before{content:'\f34c'}.zmdi-google-plus:before{content:'\f34d'}.zmdi-google:before{content:'\f34e'}.zmdi-instagram:before{content:'\f34f'}.zmdi-language-css3:before{content:'\f350'}.zmdi-language-html5:before{content:'\f351'}.zmdi-language-javascript:before{content:'\f352'}.zmdi-language-python-alt:before{content:'\f353'}.zmdi-language-python:before{content:'\f354'}.zmdi-lastfm:before{content:'\f355'}.zmdi-linkedin-box:before{content:'\f356'}.zmdi-paypal:before{content:'\f357'}.zmdi-pinterest-box:before{content:'\f358'}.zmdi-pocket:before{content:'\f359'}.zmdi-polymer:before{content:'\f35a'}.zmdi-share:before{content:'\f35b'}.zmdi-stackoverflow:before{content:'\f35c'}.zmdi-steam-square:before{content:'\f35d'}.zmdi-steam:before{content:'\f35e'}.zmdi-twitter-box:before{content:'\f35f'}.zmdi-twitter:before{content:'\f360'}.zmdi-vk:before{content:'\f361'}.zmdi-wikipedia:before{content:'\f362'}.zmdi-windows:before{content:'\f363'}.zmdi-aspect-ratio-alt:before{content:'\f364'}.zmdi-aspect-ratio:before{content:'\f365'}.zmdi-blur-circular:before{content:'\f366'}.zmdi-blur-linear:before{content:'\f367'}.zmdi-blur-off:before{content:'\f368'}.zmdi-blur:before{content:'\f369'}.zmdi-brightness-2:before{content:'\f36a'}.zmdi-brightness-3:before{content:'\f36b'}.zmdi-brightness-4:before{content:'\f36c'}.zmdi-brightness-5:before{content:'\f36d'}.zmdi-brightness-6:before{content:'\f36e'}.zmdi-brightness-7:before{content:'\f36f'}.zmdi-brightness-auto:before{content:'\f370'}.zmdi-brightness-setting:before{content:'\f371'}.zmdi-broken-image:before{content:'\f372'}.zmdi-center-focus-strong:before{content:'\f373'}.zmdi-center-focus-weak:before{content:'\f374'}.zmdi-compare:before{content:'\f375'}.zmdi-crop-16-9:before{content:'\f376'}.zmdi-crop-3-2:before{content:'\f377'}.zmdi-crop-5-4:before{content:'\f378'}.zmdi-crop-7-5:before{content:'\f379'}.zmdi-crop-din:before{content:'\f37a'}.zmdi-crop-free:before{content:'\f37b'}.zmdi-crop-landscape:before{content:'\f37c'}.zmdi-crop-portrait:before{content:'\f37d'}.zmdi-crop-square:before{content:'\f37e'}.zmdi-exposure-alt:before{content:'\f37f'}.zmdi-exposure:before{content:'\f380'}.zmdi-filter-b-and-w:before{content:'\f381'}.zmdi-filter-center-focus:before{content:'\f382'}.zmdi-filter-frames:before{content:'\f383'}.zmdi-filter-tilt-shift:before{content:'\f384'}.zmdi-gradient:before{content:'\f385'}.zmdi-grain:before{content:'\f386'}.zmdi-graphic-eq:before{content:'\f387'}.zmdi-hdr-off:before{content:'\f388'}.zmdi-hdr-strong:before{content:'\f389'}.zmdi-hdr-weak:before{content:'\f38a'}.zmdi-hdr:before{content:'\f38b'}.zmdi-iridescent:before{content:'\f38c'}.zmdi-leak-off:before{content:'\f38d'}.zmdi-leak:before{content:'\f38e'}.zmdi-looks:before{content:'\f38f'}.zmdi-loupe:before{content:'\f390'}.zmdi-panorama-horizontal:before{content:'\f391'}.zmdi-panorama-vertical:before{content:'\f392'}.zmdi-panorama-wide-angle:before{content:'\f393'}.zmdi-photo-size-select-large:before{content:'\f394'}.zmdi-photo-size-select-small:before{content:'\f395'}.zmdi-picture-in-picture:before{content:'\f396'}.zmdi-slideshow:before{content:'\f397'}.zmdi-texture:before{content:'\f398'}.zmdi-tonality:before{content:'\f399'}.zmdi-vignette:before{content:'\f39a'}.zmdi-wb-auto:before{content:'\f39b'}.zmdi-eject-alt:before{content:'\f39c'}.zmdi-eject:before{content:'\f39d'}.zmdi-equalizer:before{content:'\f39e'}.zmdi-fast-forward:before{content:'\f39f'}.zmdi-fast-rewind:before{content:'\f3a0'}.zmdi-forward-10:before{content:'\f3a1'}.zmdi-forward-30:before{content:'\f3a2'}.zmdi-forward-5:before{content:'\f3a3'}.zmdi-hearing:before{content:'\f3a4'}.zmdi-pause-circle-outline:before{content:'\f3a5'}.zmdi-pause-circle:before{content:'\f3a6'}.zmdi-pause:before{content:'\f3a7'}.zmdi-play-circle-outline:before{content:'\f3a8'}.zmdi-play-circle:before{content:'\f3a9'}.zmdi-play:before{content:'\f3aa'}.zmdi-playlist-audio:before{content:'\f3ab'}.zmdi-playlist-plus:before{content:'\f3ac'}.zmdi-repeat-one:before{content:'\f3ad'}.zmdi-repeat:before{content:'\f3ae'}.zmdi-replay-10:before{content:'\f3af'}.zmdi-replay-30:before{content:'\f3b0'}.zmdi-replay-5:before{content:'\f3b1'}.zmdi-replay:before{content:'\f3b2'}.zmdi-shuffle:before{content:'\f3b3'}.zmdi-skip-next:before{content:'\f3b4'}.zmdi-skip-previous:before{content:'\f3b5'}.zmdi-stop:before{content:'\f3b6'}.zmdi-surround-sound:before{content:'\f3b7'}.zmdi-tune:before{content:'\f3b8'}.zmdi-volume-down:before{content:'\f3b9'}.zmdi-volume-mute:before{content:'\f3ba'}.zmdi-volume-off:before{content:'\f3bb'}.zmdi-volume-up:before{content:'\f3bc'}.zmdi-n-1-square:before{content:'\f3bd'}.zmdi-n-2-square:before{content:'\f3be'}.zmdi-n-3-square:before{content:'\f3bf'}.zmdi-n-4-square:before{content:'\f3c0'}.zmdi-n-5-square:before{content:'\f3c1'}.zmdi-n-6-square:before{content:'\f3c2'}.zmdi-neg-1:before{content:'\f3c3'}.zmdi-neg-2:before{content:'\f3c4'}.zmdi-plus-1:before{content:'\f3c5'}.zmdi-plus-2:before{content:'\f3c6'}.zmdi-sec-10:before{content:'\f3c7'}.zmdi-sec-3:before{content:'\f3c8'}.zmdi-zero:before{content:'\f3c9'}.zmdi-airline-seat-flat-angled:before{content:'\f3ca'}.zmdi-airline-seat-flat:before{content:'\f3cb'}.zmdi-airline-seat-individual-suite:before{content:'\f3cc'}.zmdi-airline-seat-legroom-extra:before{content:'\f3cd'}.zmdi-airline-seat-legroom-normal:before{content:'\f3ce'}.zmdi-airline-seat-legroom-reduced:before{content:'\f3cf'}.zmdi-airline-seat-recline-extra:before{content:'\f3d0'}.zmdi-airline-seat-recline-normal:before{content:'\f3d1'}.zmdi-airplay:before{content:'\f3d2'}.zmdi-closed-caption:before{content:'\f3d3'}.zmdi-confirmation-number:before{content:'\f3d4'}.zmdi-developer-board:before{content:'\f3d5'}.zmdi-disc-full:before{content:'\f3d6'}.zmdi-explicit:before{content:'\f3d7'}.zmdi-flight-land:before{content:'\f3d8'}.zmdi-flight-takeoff:before{content:'\f3d9'}.zmdi-flip-to-back:before{content:'\f3da'}.zmdi-flip-to-front:before{content:'\f3db'}.zmdi-group-work:before{content:'\f3dc'}.zmdi-hd:before{content:'\f3dd'}.zmdi-hq:before{content:'\f3de'}.zmdi-markunread-mailbox:before{content:'\f3df'}.zmdi-memory:before{content:'\f3e0'}.zmdi-nfc:before{content:'\f3e1'}.zmdi-play-for-work:before{content:'\f3e2'}.zmdi-power-input:before{content:'\f3e3'}.zmdi-present-to-all:before{content:'\f3e4'}.zmdi-satellite:before{content:'\f3e5'}.zmdi-tap-and-play:before{content:'\f3e6'}.zmdi-vibration:before{content:'\f3e7'}.zmdi-voicemail:before{content:'\f3e8'}.zmdi-group:before{content:'\f3e9'}.zmdi-rss:before{content:'\f3ea'}.zmdi-shape:before{content:'\f3eb'}.zmdi-spinner:before{content:'\f3ec'}.zmdi-ungroup:before{content:'\f3ed'}.zmdi-500px:before{content:'\f3ee'}.zmdi-8tracks:before{content:'\f3ef'}.zmdi-amazon:before{content:'\f3f0'}.zmdi-blogger:before{content:'\f3f1'}.zmdi-delicious:before{content:'\f3f2'}.zmdi-disqus:before{content:'\f3f3'}.zmdi-flattr:before{content:'\f3f4'}.zmdi-flickr:before{content:'\f3f5'}.zmdi-github-alt:before{content:'\f3f6'}.zmdi-google-old:before{content:'\f3f7'}.zmdi-linkedin:before{content:'\f3f8'}.zmdi-odnoklassniki:before{content:'\f3f9'}.zmdi-outlook:before{content:'\f3fa'}.zmdi-paypal-alt:before{content:'\f3fb'}.zmdi-pinterest:before{content:'\f3fc'}.zmdi-playstation:before{content:'\f3fd'}.zmdi-reddit:before{content:'\f3fe'}.zmdi-skype:before{content:'\f3ff'}.zmdi-slideshare:before{content:'\f400'}.zmdi-soundcloud:before{content:'\f401'}.zmdi-tumblr:before{content:'\f402'}.zmdi-twitch:before{content:'\f403'}.zmdi-vimeo:before{content:'\f404'}.zmdi-whatsapp:before{content:'\f405'}.zmdi-xbox:before{content:'\f406'}.zmdi-yahoo:before{content:'\f407'}.zmdi-youtube-play:before{content:'\f408'}.zmdi-youtube:before{content:'\f409'}.zmdi-import-export:before{content:'\f30c'}.zmdi-swap-vertical-:before{content:'\f30c'}.zmdi-airplanemode-inactive:before{content:'\f102'}.zmdi-airplanemode-active:before{content:'\f103'}.zmdi-rate-review:before{content:'\f103'}.zmdi-comment-sign:before{content:'\f25a'}.zmdi-network-warning:before{content:'\f2ad'}.zmdi-shopping-cart-add:before{content:'\f1ca'}.zmdi-file-add:before{content:'\f221'}.zmdi-network-wifi-scan:before{content:'\f2e4'}.zmdi-collection-add:before{content:'\f14e'}.zmdi-format-playlist-add:before{content:'\f3ac'}.zmdi-format-queue-music:before{content:'\f3ab'}.zmdi-plus-box:before{content:'\f277'}.zmdi-tag-backspace:before{content:'\f1d9'}.zmdi-alarm-add:before{content:'\f32b'}.zmdi-battery-charging:before{content:'\f114'}.zmdi-daydream-setting:before{content:'\f217'}.zmdi-more-horiz:before{content:'\f19c'}.zmdi-book-photo:before{content:'\f11b'}.zmdi-incandescent:before{content:'\f189'}.zmdi-wb-iridescent:before{content:'\f38c'}.zmdi-calendar-remove:before{content:'\f330'}.zmdi-refresh-sync-disabled:before{content:'\f1b7'}.zmdi-refresh-sync-problem:before{content:'\f1b6'}.zmdi-crop-original:before{content:'\f17e'}.zmdi-power-off:before{content:'\f1af'}.zmdi-power-off-setting:before{content:'\f1ae'}.zmdi-leak-remove:before{content:'\f38d'}.zmdi-star-border:before{content:'\f27c'}.zmdi-brightness-low:before{content:'\f36d'}.zmdi-brightness-medium:before{content:'\f36e'}.zmdi-brightness-high:before{content:'\f36f'}.zmdi-smartphone-portrait:before{content:'\f2d4'}.zmdi-live-tv:before{content:'\f2d9'}.zmdi-format-textdirection-l-to-r:before{content:'\f249'}.zmdi-format-textdirection-r-to-l:before{content:'\f24a'}.zmdi-arrow-back:before{content:'\f2ea'}.zmdi-arrow-forward:before{content:'\f2ee'}.zmdi-arrow-in:before{content:'\f2e9'}.zmdi-arrow-out:before{content:'\f2ed'}.zmdi-rotate-90-degrees-ccw:before{content:'\f304'}.zmdi-adb:before{content:'\f33a'}.zmdi-network-wifi:before{content:'\f2e8'}.zmdi-network-wifi-alt:before{content:'\f2e3'}.zmdi-network-wifi-lock:before{content:'\f2e5'}.zmdi-network-wifi-off:before{content:'\f2e6'}.zmdi-network-wifi-outline:before{content:'\f2e7'}.zmdi-network-wifi-info:before{content:'\f2e4'}.zmdi-layers-clear:before{content:'\f18b'}.zmdi-colorize:before{content:'\f15d'}.zmdi-format-paint:before{content:'\f1ba'}.zmdi-format-quote:before{content:'\f1b2'}.zmdi-camera-monochrome-photos:before{content:'\f285'}.zmdi-sort-by-alpha:before{content:'\f1cf'}.zmdi-folder-shared:before{content:'\f225'}.zmdi-folder-special:before{content:'\f226'}.zmdi-comment-dots:before{content:'\f260'}.zmdi-reorder:before{content:'\f31e'}.zmdi-dehaze:before{content:'\f197'}.zmdi-sort:before{content:'\f1ce'}.zmdi-pages:before{content:'\f34a'}.zmdi-stack-overflow:before{content:'\f35c'}.zmdi-calendar-account:before{content:'\f204'}.zmdi-paste:before{content:'\f109'}.zmdi-cut:before{content:'\f1bc'}.zmdi-save:before{content:'\f297'}.zmdi-smartphone-code:before{content:'\f139'}.zmdi-directions-bike:before{content:'\f117'}.zmdi-directions-boat:before{content:'\f11a'}.zmdi-directions-bus:before{content:'\f121'}.zmdi-directions-car:before{content:'\f125'}.zmdi-directions-railway:before{content:'\f1b3'}.zmdi-directions-run:before{content:'\f215'}.zmdi-directions-subway:before{content:'\f1d5'}.zmdi-directions-walk:before{content:'\f216'}.zmdi-local-hotel:before{content:'\f178'}.zmdi-local-activity:before{content:'\f1df'}.zmdi-local-play:before{content:'\f1df'}.zmdi-local-airport:before{content:'\f103'}.zmdi-local-atm:before{content:'\f198'}.zmdi-local-bar:before{content:'\f137'}.zmdi-local-cafe:before{content:'\f13b'}.zmdi-local-car-wash:before{content:'\f124'}.zmdi-local-convenience-store:before{content:'\f1d3'}.zmdi-local-dining:before{content:'\f153'}.zmdi-local-drink:before{content:'\f157'}.zmdi-local-florist:before{content:'\f168'}.zmdi-local-gas-station:before{content:'\f16f'}.zmdi-local-grocery-store:before{content:'\f1cb'}.zmdi-local-hospital:before{content:'\f177'}.zmdi-local-laundry-service:before{content:'\f1e9'}.zmdi-local-library:before{content:'\f18d'}.zmdi-local-mall:before{content:'\f195'}.zmdi-local-movies:before{content:'\f19d'}.zmdi-local-offer:before{content:'\f187'}.zmdi-local-parking:before{content:'\f1a5'}.zmdi-local-parking:before{content:'\f1a5'}.zmdi-local-pharmacy:before{content:'\f176'}.zmdi-local-phone:before{content:'\f2be'}.zmdi-local-pizza:before{content:'\f1ac'}.zmdi-local-post-office:before{content:'\f15a'}.zmdi-local-printshop:before{content:'\f1b0'}.zmdi-local-see:before{content:'\f28c'}.zmdi-local-shipping:before{content:'\f1e6'}.zmdi-local-store:before{content:'\f1d4'}.zmdi-local-taxi:before{content:'\f123'}.zmdi-local-wc:before{content:'\f211'}.zmdi-my-location:before{content:'\f299'}.zmdi-directions:before{content:'\f1e7'}</style>
    <style type="text/css">
    @font-face{font-family:'FontAwesome';src:url('../fonts/fontawesome-webfont.eot?v=4.7.0');src:url('../fonts/fontawesome-webfont.eot?#iefix&v=4.7.0') format('embedded-opentype'),url('../fonts/fontawesome-webfont.woff2?v=4.7.0') format('woff2'),url('../fonts/fontawesome-webfont.woff?v=4.7.0') format('woff'),url('../fonts/fontawesome-webfont.ttf?v=4.7.0') format('truetype'),url('../fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular') format('svg');font-weight:normal;font-style:normal}.fa{display:inline-block;font:normal normal normal 14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.fa-lg{font-size:1.33333333em;line-height:.75em;vertical-align:-15%}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-fw{width:1.28571429em;text-align:center}.fa-ul{padding-left:0;margin-left:2.14285714em;list-style-type:none}.fa-ul>li{position:relative}.fa-li{position:absolute;left:-2.14285714em;width:2.14285714em;top:.14285714em;text-align:center}.fa-li.fa-lg{left:-1.85714286em}.fa-border{padding:.2em .25em .15em;border:solid .08em #eee;border-radius:.1em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left{margin-right:.3em}.fa.fa-pull-right{margin-left:.3em}.pull-right{float:right}.pull-left{float:left}.fa.pull-left{margin-right:.3em}.fa.pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}.fa-rotate-90{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)";-webkit-transform:scale(-1, 1);-ms-transform:scale(-1, 1);transform:scale(-1, 1)}.fa-flip-vertical{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";-webkit-transform:scale(1, -1);-ms-transform:scale(1, -1);transform:scale(1, -1)}:root .fa-rotate-90,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-flip-horizontal,:root .fa-flip-vertical{filter:none}.fa-stack{position:relative;display:inline-block;width:2em;height:2em;line-height:2em;vertical-align:middle}.fa-stack-1x,.fa-stack-2x{position:absolute;left:0;width:100%;text-align:center}.fa-stack-1x{line-height:inherit}.fa-stack-2x{font-size:2em}.fa-inverse{color:#fff}.fa-glass:before{content:"\f000"}.fa-music:before{content:"\f001"}.fa-search:before{content:"\f002"}.fa-envelope-o:before{content:"\f003"}.fa-heart:before{content:"\f004"}.fa-star:before{content:"\f005"}.fa-star-o:before{content:"\f006"}.fa-user:before{content:"\f007"}.fa-film:before{content:"\f008"}.fa-th-large:before{content:"\f009"}.fa-th:before{content:"\f00a"}.fa-th-list:before{content:"\f00b"}.fa-check:before{content:"\f00c"}.fa-remove:before,.fa-close:before,.fa-times:before{content:"\f00d"}.fa-search-plus:before{content:"\f00e"}.fa-search-minus:before{content:"\f010"}.fa-power-off:before{content:"\f011"}.fa-signal:before{content:"\f012"}.fa-gear:before,.fa-cog:before{content:"\f013"}.fa-trash-o:before{content:"\f014"}.fa-home:before{content:"\f015"}.fa-file-o:before{content:"\f016"}.fa-clock-o:before{content:"\f017"}.fa-road:before{content:"\f018"}.fa-download:before{content:"\f019"}.fa-arrow-circle-o-down:before{content:"\f01a"}.fa-arrow-circle-o-up:before{content:"\f01b"}.fa-inbox:before{content:"\f01c"}.fa-play-circle-o:before{content:"\f01d"}.fa-rotate-right:before,.fa-repeat:before{content:"\f01e"}.fa-refresh:before{content:"\f021"}.fa-list-alt:before{content:"\f022"}.fa-lock:before{content:"\f023"}.fa-flag:before{content:"\f024"}.fa-headphones:before{content:"\f025"}.fa-volume-off:before{content:"\f026"}.fa-volume-down:before{content:"\f027"}.fa-volume-up:before{content:"\f028"}.fa-qrcode:before{content:"\f029"}.fa-barcode:before{content:"\f02a"}.fa-tag:before{content:"\f02b"}.fa-tags:before{content:"\f02c"}.fa-book:before{content:"\f02d"}.fa-bookmark:before{content:"\f02e"}.fa-print:before{content:"\f02f"}.fa-camera:before{content:"\f030"}.fa-font:before{content:"\f031"}.fa-bold:before{content:"\f032"}.fa-italic:before{content:"\f033"}.fa-text-height:before{content:"\f034"}.fa-text-width:before{content:"\f035"}.fa-align-left:before{content:"\f036"}.fa-align-center:before{content:"\f037"}.fa-align-right:before{content:"\f038"}.fa-align-justify:before{content:"\f039"}.fa-list:before{content:"\f03a"}.fa-dedent:before,.fa-outdent:before{content:"\f03b"}.fa-indent:before{content:"\f03c"}.fa-video-camera:before{content:"\f03d"}.fa-photo:before,.fa-image:before,.fa-picture-o:before{content:"\f03e"}.fa-pencil:before{content:"\f040"}.fa-map-marker:before{content:"\f041"}.fa-adjust:before{content:"\f042"}.fa-tint:before{content:"\f043"}.fa-edit:before,.fa-pencil-square-o:before{content:"\f044"}.fa-share-square-o:before{content:"\f045"}.fa-check-square-o:before{content:"\f046"}.fa-arrows:before{content:"\f047"}.fa-step-backward:before{content:"\f048"}.fa-fast-backward:before{content:"\f049"}.fa-backward:before{content:"\f04a"}.fa-play:before{content:"\f04b"}.fa-pause:before{content:"\f04c"}.fa-stop:before{content:"\f04d"}.fa-forward:before{content:"\f04e"}.fa-fast-forward:before{content:"\f050"}.fa-step-forward:before{content:"\f051"}.fa-eject:before{content:"\f052"}.fa-chevron-left:before{content:"\f053"}.fa-chevron-right:before{content:"\f054"}.fa-plus-circle:before{content:"\f055"}.fa-minus-circle:before{content:"\f056"}.fa-times-circle:before{content:"\f057"}.fa-check-circle:before{content:"\f058"}.fa-question-circle:before{content:"\f059"}.fa-info-circle:before{content:"\f05a"}.fa-crosshairs:before{content:"\f05b"}.fa-times-circle-o:before{content:"\f05c"}.fa-check-circle-o:before{content:"\f05d"}.fa-ban:before{content:"\f05e"}.fa-arrow-left:before{content:"\f060"}.fa-arrow-right:before{content:"\f061"}.fa-arrow-up:before{content:"\f062"}.fa-arrow-down:before{content:"\f063"}.fa-mail-forward:before,.fa-share:before{content:"\f064"}.fa-expand:before{content:"\f065"}.fa-compress:before{content:"\f066"}.fa-plus:before{content:"\f067"}.fa-minus:before{content:"\f068"}.fa-asterisk:before{content:"\f069"}.fa-exclamation-circle:before{content:"\f06a"}.fa-gift:before{content:"\f06b"}.fa-leaf:before{content:"\f06c"}.fa-fire:before{content:"\f06d"}.fa-eye:before{content:"\f06e"}.fa-eye-slash:before{content:"\f070"}.fa-warning:before,.fa-exclamation-triangle:before{content:"\f071"}.fa-plane:before{content:"\f072"}.fa-calendar:before{content:"\f073"}.fa-random:before{content:"\f074"}.fa-comment:before{content:"\f075"}.fa-magnet:before{content:"\f076"}.fa-chevron-up:before{content:"\f077"}.fa-chevron-down:before{content:"\f078"}.fa-retweet:before{content:"\f079"}.fa-shopping-cart:before{content:"\f07a"}.fa-folder:before{content:"\f07b"}.fa-folder-open:before{content:"\f07c"}.fa-arrows-v:before{content:"\f07d"}.fa-arrows-h:before{content:"\f07e"}.fa-bar-chart-o:before,.fa-bar-chart:before{content:"\f080"}.fa-twitter-square:before{content:"\f081"}.fa-facebook-square:before{content:"\f082"}.fa-camera-retro:before{content:"\f083"}.fa-key:before{content:"\f084"}.fa-gears:before,.fa-cogs:before{content:"\f085"}.fa-comments:before{content:"\f086"}.fa-thumbs-o-up:before{content:"\f087"}.fa-thumbs-o-down:before{content:"\f088"}.fa-star-half:before{content:"\f089"}.fa-heart-o:before{content:"\f08a"}.fa-sign-out:before{content:"\f08b"}.fa-linkedin-square:before{content:"\f08c"}.fa-thumb-tack:before{content:"\f08d"}.fa-external-link:before{content:"\f08e"}.fa-sign-in:before{content:"\f090"}.fa-trophy:before{content:"\f091"}.fa-github-square:before{content:"\f092"}.fa-upload:before{content:"\f093"}.fa-lemon-o:before{content:"\f094"}.fa-phone:before{content:"\f095"}.fa-square-o:before{content:"\f096"}.fa-bookmark-o:before{content:"\f097"}.fa-phone-square:before{content:"\f098"}.fa-twitter:before{content:"\f099"}.fa-facebook-f:before,.fa-facebook:before{content:"\f09a"}.fa-github:before{content:"\f09b"}.fa-unlock:before{content:"\f09c"}.fa-credit-card:before{content:"\f09d"}.fa-feed:before,.fa-rss:before{content:"\f09e"}.fa-hdd-o:before{content:"\f0a0"}.fa-bullhorn:before{content:"\f0a1"}.fa-bell:before{content:"\f0f3"}.fa-certificate:before{content:"\f0a3"}.fa-hand-o-right:before{content:"\f0a4"}.fa-hand-o-left:before{content:"\f0a5"}.fa-hand-o-up:before{content:"\f0a6"}.fa-hand-o-down:before{content:"\f0a7"}.fa-arrow-circle-left:before{content:"\f0a8"}.fa-arrow-circle-right:before{content:"\f0a9"}.fa-arrow-circle-up:before{content:"\f0aa"}.fa-arrow-circle-down:before{content:"\f0ab"}.fa-globe:before{content:"\f0ac"}.fa-wrench:before{content:"\f0ad"}.fa-tasks:before{content:"\f0ae"}.fa-filter:before{content:"\f0b0"}.fa-briefcase:before{content:"\f0b1"}.fa-arrows-alt:before{content:"\f0b2"}.fa-group:before,.fa-users:before{content:"\f0c0"}.fa-chain:before,.fa-link:before{content:"\f0c1"}.fa-cloud:before{content:"\f0c2"}.fa-flask:before{content:"\f0c3"}.fa-cut:before,.fa-scissors:before{content:"\f0c4"}.fa-copy:before,.fa-files-o:before{content:"\f0c5"}.fa-paperclip:before{content:"\f0c6"}.fa-save:before,.fa-floppy-o:before{content:"\f0c7"}.fa-square:before{content:"\f0c8"}.fa-navicon:before,.fa-reorder:before,.fa-bars:before{content:"\f0c9"}.fa-list-ul:before{content:"\f0ca"}.fa-list-ol:before{content:"\f0cb"}.fa-strikethrough:before{content:"\f0cc"}.fa-underline:before{content:"\f0cd"}.fa-table:before{content:"\f0ce"}.fa-magic:before{content:"\f0d0"}.fa-truck:before{content:"\f0d1"}.fa-pinterest:before{content:"\f0d2"}.fa-pinterest-square:before{content:"\f0d3"}.fa-google-plus-square:before{content:"\f0d4"}.fa-google-plus:before{content:"\f0d5"}.fa-money:before{content:"\f0d6"}.fa-caret-down:before{content:"\f0d7"}.fa-caret-up:before{content:"\f0d8"}.fa-caret-left:before{content:"\f0d9"}.fa-caret-right:before{content:"\f0da"}.fa-columns:before{content:"\f0db"}.fa-unsorted:before,.fa-sort:before{content:"\f0dc"}.fa-sort-down:before,.fa-sort-desc:before{content:"\f0dd"}.fa-sort-up:before,.fa-sort-asc:before{content:"\f0de"}.fa-envelope:before{content:"\f0e0"}.fa-linkedin:before{content:"\f0e1"}.fa-rotate-left:before,.fa-undo:before{content:"\f0e2"}.fa-legal:before,.fa-gavel:before{content:"\f0e3"}.fa-dashboard:before,.fa-tachometer:before{content:"\f0e4"}.fa-comment-o:before{content:"\f0e5"}.fa-comments-o:before{content:"\f0e6"}.fa-flash:before,.fa-bolt:before{content:"\f0e7"}.fa-sitemap:before{content:"\f0e8"}.fa-umbrella:before{content:"\f0e9"}.fa-paste:before,.fa-clipboard:before{content:"\f0ea"}.fa-lightbulb-o:before{content:"\f0eb"}.fa-exchange:before{content:"\f0ec"}.fa-cloud-download:before{content:"\f0ed"}.fa-cloud-upload:before{content:"\f0ee"}.fa-user-md:before{content:"\f0f0"}.fa-stethoscope:before{content:"\f0f1"}.fa-suitcase:before{content:"\f0f2"}.fa-bell-o:before{content:"\f0a2"}.fa-coffee:before{content:"\f0f4"}.fa-cutlery:before{content:"\f0f5"}.fa-file-text-o:before{content:"\f0f6"}.fa-building-o:before{content:"\f0f7"}.fa-hospital-o:before{content:"\f0f8"}.fa-ambulance:before{content:"\f0f9"}.fa-medkit:before{content:"\f0fa"}.fa-fighter-jet:before{content:"\f0fb"}.fa-beer:before{content:"\f0fc"}.fa-h-square:before{content:"\f0fd"}.fa-plus-square:before{content:"\f0fe"}.fa-angle-double-left:before{content:"\f100"}.fa-angle-double-right:before{content:"\f101"}.fa-angle-double-up:before{content:"\f102"}.fa-angle-double-down:before{content:"\f103"}.fa-angle-left:before{content:"\f104"}.fa-angle-right:before{content:"\f105"}.fa-angle-up:before{content:"\f106"}.fa-angle-down:before{content:"\f107"}.fa-desktop:before{content:"\f108"}.fa-laptop:before{content:"\f109"}.fa-tablet:before{content:"\f10a"}.fa-mobile-phone:before,.fa-mobile:before{content:"\f10b"}.fa-circle-o:before{content:"\f10c"}.fa-quote-left:before{content:"\f10d"}.fa-quote-right:before{content:"\f10e"}.fa-spinner:before{content:"\f110"}.fa-circle:before{content:"\f111"}.fa-mail-reply:before,.fa-reply:before{content:"\f112"}.fa-github-alt:before{content:"\f113"}.fa-folder-o:before{content:"\f114"}.fa-folder-open-o:before{content:"\f115"}.fa-smile-o:before{content:"\f118"}.fa-frown-o:before{content:"\f119"}.fa-meh-o:before{content:"\f11a"}.fa-gamepad:before{content:"\f11b"}.fa-keyboard-o:before{content:"\f11c"}.fa-flag-o:before{content:"\f11d"}.fa-flag-checkered:before{content:"\f11e"}.fa-terminal:before{content:"\f120"}.fa-code:before{content:"\f121"}.fa-mail-reply-all:before,.fa-reply-all:before{content:"\f122"}.fa-star-half-empty:before,.fa-star-half-full:before,.fa-star-half-o:before{content:"\f123"}.fa-location-arrow:before{content:"\f124"}.fa-crop:before{content:"\f125"}.fa-code-fork:before{content:"\f126"}.fa-unlink:before,.fa-chain-broken:before{content:"\f127"}.fa-question:before{content:"\f128"}.fa-info:before{content:"\f129"}.fa-exclamation:before{content:"\f12a"}.fa-superscript:before{content:"\f12b"}.fa-subscript:before{content:"\f12c"}.fa-eraser:before{content:"\f12d"}.fa-puzzle-piece:before{content:"\f12e"}.fa-microphone:before{content:"\f130"}.fa-microphone-slash:before{content:"\f131"}.fa-shield:before{content:"\f132"}.fa-calendar-o:before{content:"\f133"}.fa-fire-extinguisher:before{content:"\f134"}.fa-rocket:before{content:"\f135"}.fa-maxcdn:before{content:"\f136"}.fa-chevron-circle-left:before{content:"\f137"}.fa-chevron-circle-right:before{content:"\f138"}.fa-chevron-circle-up:before{content:"\f139"}.fa-chevron-circle-down:before{content:"\f13a"}.fa-html5:before{content:"\f13b"}.fa-css3:before{content:"\f13c"}.fa-anchor:before{content:"\f13d"}.fa-unlock-alt:before{content:"\f13e"}.fa-bullseye:before{content:"\f140"}.fa-ellipsis-h:before{content:"\f141"}.fa-ellipsis-v:before{content:"\f142"}.fa-rss-square:before{content:"\f143"}.fa-play-circle:before{content:"\f144"}.fa-ticket:before{content:"\f145"}.fa-minus-square:before{content:"\f146"}.fa-minus-square-o:before{content:"\f147"}.fa-level-up:before{content:"\f148"}.fa-level-down:before{content:"\f149"}.fa-check-square:before{content:"\f14a"}.fa-pencil-square:before{content:"\f14b"}.fa-external-link-square:before{content:"\f14c"}.fa-share-square:before{content:"\f14d"}.fa-compass:before{content:"\f14e"}.fa-toggle-down:before,.fa-caret-square-o-down:before{content:"\f150"}.fa-toggle-up:before,.fa-caret-square-o-up:before{content:"\f151"}.fa-toggle-right:before,.fa-caret-square-o-right:before{content:"\f152"}.fa-euro:before,.fa-eur:before{content:"\f153"}.fa-gbp:before{content:"\f154"}.fa-dollar:before,.fa-usd:before{content:"\f155"}.fa-rupee:before,.fa-inr:before{content:"\f156"}.fa-cny:before,.fa-rmb:before,.fa-yen:before,.fa-jpy:before{content:"\f157"}.fa-ruble:before,.fa-rouble:before,.fa-rub:before{content:"\f158"}.fa-won:before,.fa-krw:before{content:"\f159"}.fa-bitcoin:before,.fa-btc:before{content:"\f15a"}.fa-file:before{content:"\f15b"}.fa-file-text:before{content:"\f15c"}.fa-sort-alpha-asc:before{content:"\f15d"}.fa-sort-alpha-desc:before{content:"\f15e"}.fa-sort-amount-asc:before{content:"\f160"}.fa-sort-amount-desc:before{content:"\f161"}.fa-sort-numeric-asc:before{content:"\f162"}.fa-sort-numeric-desc:before{content:"\f163"}.fa-thumbs-up:before{content:"\f164"}.fa-thumbs-down:before{content:"\f165"}.fa-youtube-square:before{content:"\f166"}.fa-youtube:before{content:"\f167"}.fa-xing:before{content:"\f168"}.fa-xing-square:before{content:"\f169"}.fa-youtube-play:before{content:"\f16a"}.fa-dropbox:before{content:"\f16b"}.fa-stack-overflow:before{content:"\f16c"}.fa-instagram:before{content:"\f16d"}.fa-flickr:before{content:"\f16e"}.fa-adn:before{content:"\f170"}.fa-bitbucket:before{content:"\f171"}.fa-bitbucket-square:before{content:"\f172"}.fa-tumblr:before{content:"\f173"}.fa-tumblr-square:before{content:"\f174"}.fa-long-arrow-down:before{content:"\f175"}.fa-long-arrow-up:before{content:"\f176"}.fa-long-arrow-left:before{content:"\f177"}.fa-long-arrow-right:before{content:"\f178"}.fa-apple:before{content:"\f179"}.fa-windows:before{content:"\f17a"}.fa-android:before{content:"\f17b"}.fa-linux:before{content:"\f17c"}.fa-dribbble:before{content:"\f17d"}.fa-skype:before{content:"\f17e"}.fa-foursquare:before{content:"\f180"}.fa-trello:before{content:"\f181"}.fa-female:before{content:"\f182"}.fa-male:before{content:"\f183"}.fa-gittip:before,.fa-gratipay:before{content:"\f184"}.fa-sun-o:before{content:"\f185"}.fa-moon-o:before{content:"\f186"}.fa-archive:before{content:"\f187"}.fa-bug:before{content:"\f188"}.fa-vk:before{content:"\f189"}.fa-weibo:before{content:"\f18a"}.fa-renren:before{content:"\f18b"}.fa-pagelines:before{content:"\f18c"}.fa-stack-exchange:before{content:"\f18d"}.fa-arrow-circle-o-right:before{content:"\f18e"}.fa-arrow-circle-o-left:before{content:"\f190"}.fa-toggle-left:before,.fa-caret-square-o-left:before{content:"\f191"}.fa-dot-circle-o:before{content:"\f192"}.fa-wheelchair:before{content:"\f193"}.fa-vimeo-square:before{content:"\f194"}.fa-turkish-lira:before,.fa-try:before{content:"\f195"}.fa-plus-square-o:before{content:"\f196"}.fa-space-shuttle:before{content:"\f197"}.fa-slack:before{content:"\f198"}.fa-envelope-square:before{content:"\f199"}.fa-wordpress:before{content:"\f19a"}.fa-openid:before{content:"\f19b"}.fa-institution:before,.fa-bank:before,.fa-university:before{content:"\f19c"}.fa-mortar-board:before,.fa-graduation-cap:before{content:"\f19d"}.fa-yahoo:before{content:"\f19e"}.fa-google:before{content:"\f1a0"}.fa-reddit:before{content:"\f1a1"}.fa-reddit-square:before{content:"\f1a2"}.fa-stumbleupon-circle:before{content:"\f1a3"}.fa-stumbleupon:before{content:"\f1a4"}.fa-delicious:before{content:"\f1a5"}.fa-digg:before{content:"\f1a6"}.fa-pied-piper-pp:before{content:"\f1a7"}.fa-pied-piper-alt:before{content:"\f1a8"}.fa-drupal:before{content:"\f1a9"}.fa-joomla:before{content:"\f1aa"}.fa-language:before{content:"\f1ab"}.fa-fax:before{content:"\f1ac"}.fa-building:before{content:"\f1ad"}.fa-child:before{content:"\f1ae"}.fa-paw:before{content:"\f1b0"}.fa-spoon:before{content:"\f1b1"}.fa-cube:before{content:"\f1b2"}.fa-cubes:before{content:"\f1b3"}.fa-behance:before{content:"\f1b4"}.fa-behance-square:before{content:"\f1b5"}.fa-steam:before{content:"\f1b6"}.fa-steam-square:before{content:"\f1b7"}.fa-recycle:before{content:"\f1b8"}.fa-automobile:before,.fa-car:before{content:"\f1b9"}.fa-cab:before,.fa-taxi:before{content:"\f1ba"}.fa-tree:before{content:"\f1bb"}.fa-spotify:before{content:"\f1bc"}.fa-deviantart:before{content:"\f1bd"}.fa-soundcloud:before{content:"\f1be"}.fa-database:before{content:"\f1c0"}.fa-file-pdf-o:before{content:"\f1c1"}.fa-file-word-o:before{content:"\f1c2"}.fa-file-excel-o:before{content:"\f1c3"}.fa-file-powerpoint-o:before{content:"\f1c4"}.fa-file-photo-o:before,.fa-file-picture-o:before,.fa-file-image-o:before{content:"\f1c5"}.fa-file-zip-o:before,.fa-file-archive-o:before{content:"\f1c6"}.fa-file-sound-o:before,.fa-file-audio-o:before{content:"\f1c7"}.fa-file-movie-o:before,.fa-file-video-o:before{content:"\f1c8"}.fa-file-code-o:before{content:"\f1c9"}.fa-vine:before{content:"\f1ca"}.fa-codepen:before{content:"\f1cb"}.fa-jsfiddle:before{content:"\f1cc"}.fa-life-bouy:before,.fa-life-buoy:before,.fa-life-saver:before,.fa-support:before,.fa-life-ring:before{content:"\f1cd"}.fa-circle-o-notch:before{content:"\f1ce"}.fa-ra:before,.fa-resistance:before,.fa-rebel:before{content:"\f1d0"}.fa-ge:before,.fa-empire:before{content:"\f1d1"}.fa-git-square:before{content:"\f1d2"}.fa-git:before{content:"\f1d3"}.fa-y-combinator-square:before,.fa-yc-square:before,.fa-hacker-news:before{content:"\f1d4"}.fa-tencent-weibo:before{content:"\f1d5"}.fa-qq:before{content:"\f1d6"}.fa-wechat:before,.fa-weixin:before{content:"\f1d7"}.fa-send:before,.fa-paper-plane:before{content:"\f1d8"}.fa-send-o:before,.fa-paper-plane-o:before{content:"\f1d9"}.fa-history:before{content:"\f1da"}.fa-circle-thin:before{content:"\f1db"}.fa-header:before{content:"\f1dc"}.fa-paragraph:before{content:"\f1dd"}.fa-sliders:before{content:"\f1de"}.fa-share-alt:before{content:"\f1e0"}.fa-share-alt-square:before{content:"\f1e1"}.fa-bomb:before{content:"\f1e2"}.fa-soccer-ball-o:before,.fa-futbol-o:before{content:"\f1e3"}.fa-tty:before{content:"\f1e4"}.fa-binoculars:before{content:"\f1e5"}.fa-plug:before{content:"\f1e6"}.fa-slideshare:before{content:"\f1e7"}.fa-twitch:before{content:"\f1e8"}.fa-yelp:before{content:"\f1e9"}.fa-newspaper-o:before{content:"\f1ea"}.fa-wifi:before{content:"\f1eb"}.fa-calculator:before{content:"\f1ec"}.fa-paypal:before{content:"\f1ed"}.fa-google-wallet:before{content:"\f1ee"}.fa-cc-visa:before{content:"\f1f0"}.fa-cc-mastercard:before{content:"\f1f1"}.fa-cc-discover:before{content:"\f1f2"}.fa-cc-amex:before{content:"\f1f3"}.fa-cc-paypal:before{content:"\f1f4"}.fa-cc-stripe:before{content:"\f1f5"}.fa-bell-slash:before{content:"\f1f6"}.fa-bell-slash-o:before{content:"\f1f7"}.fa-trash:before{content:"\f1f8"}.fa-copyright:before{content:"\f1f9"}.fa-at:before{content:"\f1fa"}.fa-eyedropper:before{content:"\f1fb"}.fa-paint-brush:before{content:"\f1fc"}.fa-birthday-cake:before{content:"\f1fd"}.fa-area-chart:before{content:"\f1fe"}.fa-pie-chart:before{content:"\f200"}.fa-line-chart:before{content:"\f201"}.fa-lastfm:before{content:"\f202"}.fa-lastfm-square:before{content:"\f203"}.fa-toggle-off:before{content:"\f204"}.fa-toggle-on:before{content:"\f205"}.fa-bicycle:before{content:"\f206"}.fa-bus:before{content:"\f207"}.fa-ioxhost:before{content:"\f208"}.fa-angellist:before{content:"\f209"}.fa-cc:before{content:"\f20a"}.fa-shekel:before,.fa-sheqel:before,.fa-ils:before{content:"\f20b"}.fa-meanpath:before{content:"\f20c"}.fa-buysellads:before{content:"\f20d"}.fa-connectdevelop:before{content:"\f20e"}.fa-dashcube:before{content:"\f210"}.fa-forumbee:before{content:"\f211"}.fa-leanpub:before{content:"\f212"}.fa-sellsy:before{content:"\f213"}.fa-shirtsinbulk:before{content:"\f214"}.fa-simplybuilt:before{content:"\f215"}.fa-skyatlas:before{content:"\f216"}.fa-cart-plus:before{content:"\f217"}.fa-cart-arrow-down:before{content:"\f218"}.fa-diamond:before{content:"\f219"}.fa-ship:before{content:"\f21a"}.fa-user-secret:before{content:"\f21b"}.fa-motorcycle:before{content:"\f21c"}.fa-street-view:before{content:"\f21d"}.fa-heartbeat:before{content:"\f21e"}.fa-venus:before{content:"\f221"}.fa-mars:before{content:"\f222"}.fa-mercury:before{content:"\f223"}.fa-intersex:before,.fa-transgender:before{content:"\f224"}.fa-transgender-alt:before{content:"\f225"}.fa-venus-double:before{content:"\f226"}.fa-mars-double:before{content:"\f227"}.fa-venus-mars:before{content:"\f228"}.fa-mars-stroke:before{content:"\f229"}.fa-mars-stroke-v:before{content:"\f22a"}.fa-mars-stroke-h:before{content:"\f22b"}.fa-neuter:before{content:"\f22c"}.fa-genderless:before{content:"\f22d"}.fa-facebook-official:before{content:"\f230"}.fa-pinterest-p:before{content:"\f231"}.fa-whatsapp:before{content:"\f232"}.fa-server:before{content:"\f233"}.fa-user-plus:before{content:"\f234"}.fa-user-times:before{content:"\f235"}.fa-hotel:before,.fa-bed:before{content:"\f236"}.fa-viacoin:before{content:"\f237"}.fa-train:before{content:"\f238"}.fa-subway:before{content:"\f239"}.fa-medium:before{content:"\f23a"}.fa-yc:before,.fa-y-combinator:before{content:"\f23b"}.fa-optin-monster:before{content:"\f23c"}.fa-opencart:before{content:"\f23d"}.fa-expeditedssl:before{content:"\f23e"}.fa-battery-4:before,.fa-battery:before,.fa-battery-full:before{content:"\f240"}.fa-battery-3:before,.fa-battery-three-quarters:before{content:"\f241"}.fa-battery-2:before,.fa-battery-half:before{content:"\f242"}.fa-battery-1:before,.fa-battery-quarter:before{content:"\f243"}.fa-battery-0:before,.fa-battery-empty:before{content:"\f244"}.fa-mouse-pointer:before{content:"\f245"}.fa-i-cursor:before{content:"\f246"}.fa-object-group:before{content:"\f247"}.fa-object-ungroup:before{content:"\f248"}.fa-sticky-note:before{content:"\f249"}.fa-sticky-note-o:before{content:"\f24a"}.fa-cc-jcb:before{content:"\f24b"}.fa-cc-diners-club:before{content:"\f24c"}.fa-clone:before{content:"\f24d"}.fa-balance-scale:before{content:"\f24e"}.fa-hourglass-o:before{content:"\f250"}.fa-hourglass-1:before,.fa-hourglass-start:before{content:"\f251"}.fa-hourglass-2:before,.fa-hourglass-half:before{content:"\f252"}.fa-hourglass-3:before,.fa-hourglass-end:before{content:"\f253"}.fa-hourglass:before{content:"\f254"}.fa-hand-grab-o:before,.fa-hand-rock-o:before{content:"\f255"}.fa-hand-stop-o:before,.fa-hand-paper-o:before{content:"\f256"}.fa-hand-scissors-o:before{content:"\f257"}.fa-hand-lizard-o:before{content:"\f258"}.fa-hand-spock-o:before{content:"\f259"}.fa-hand-pointer-o:before{content:"\f25a"}.fa-hand-peace-o:before{content:"\f25b"}.fa-trademark:before{content:"\f25c"}.fa-registered:before{content:"\f25d"}.fa-creative-commons:before{content:"\f25e"}.fa-gg:before{content:"\f260"}.fa-gg-circle:before{content:"\f261"}.fa-tripadvisor:before{content:"\f262"}.fa-odnoklassniki:before{content:"\f263"}.fa-odnoklassniki-square:before{content:"\f264"}.fa-get-pocket:before{content:"\f265"}.fa-wikipedia-w:before{content:"\f266"}.fa-safari:before{content:"\f267"}.fa-chrome:before{content:"\f268"}.fa-firefox:before{content:"\f269"}.fa-opera:before{content:"\f26a"}.fa-internet-explorer:before{content:"\f26b"}.fa-tv:before,.fa-television:before{content:"\f26c"}.fa-contao:before{content:"\f26d"}.fa-500px:before{content:"\f26e"}.fa-amazon:before{content:"\f270"}.fa-calendar-plus-o:before{content:"\f271"}.fa-calendar-minus-o:before{content:"\f272"}.fa-calendar-times-o:before{content:"\f273"}.fa-calendar-check-o:before{content:"\f274"}.fa-industry:before{content:"\f275"}.fa-map-pin:before{content:"\f276"}.fa-map-signs:before{content:"\f277"}.fa-map-o:before{content:"\f278"}.fa-map:before{content:"\f279"}.fa-commenting:before{content:"\f27a"}.fa-commenting-o:before{content:"\f27b"}.fa-houzz:before{content:"\f27c"}.fa-vimeo:before{content:"\f27d"}.fa-black-tie:before{content:"\f27e"}.fa-fonticons:before{content:"\f280"}.fa-reddit-alien:before{content:"\f281"}.fa-edge:before{content:"\f282"}.fa-credit-card-alt:before{content:"\f283"}.fa-codiepie:before{content:"\f284"}.fa-modx:before{content:"\f285"}.fa-fort-awesome:before{content:"\f286"}.fa-usb:before{content:"\f287"}.fa-product-hunt:before{content:"\f288"}.fa-mixcloud:before{content:"\f289"}.fa-scribd:before{content:"\f28a"}.fa-pause-circle:before{content:"\f28b"}.fa-pause-circle-o:before{content:"\f28c"}.fa-stop-circle:before{content:"\f28d"}.fa-stop-circle-o:before{content:"\f28e"}.fa-shopping-bag:before{content:"\f290"}.fa-shopping-basket:before{content:"\f291"}.fa-hashtag:before{content:"\f292"}.fa-bluetooth:before{content:"\f293"}.fa-bluetooth-b:before{content:"\f294"}.fa-percent:before{content:"\f295"}.fa-gitlab:before{content:"\f296"}.fa-wpbeginner:before{content:"\f297"}.fa-wpforms:before{content:"\f298"}.fa-envira:before{content:"\f299"}.fa-universal-access:before{content:"\f29a"}.fa-wheelchair-alt:before{content:"\f29b"}.fa-question-circle-o:before{content:"\f29c"}.fa-blind:before{content:"\f29d"}.fa-audio-description:before{content:"\f29e"}.fa-volume-control-phone:before{content:"\f2a0"}.fa-braille:before{content:"\f2a1"}.fa-assistive-listening-systems:before{content:"\f2a2"}.fa-asl-interpreting:before,.fa-american-sign-language-interpreting:before{content:"\f2a3"}.fa-deafness:before,.fa-hard-of-hearing:before,.fa-deaf:before{content:"\f2a4"}.fa-glide:before{content:"\f2a5"}.fa-glide-g:before{content:"\f2a6"}.fa-signing:before,.fa-sign-language:before{content:"\f2a7"}.fa-low-vision:before{content:"\f2a8"}.fa-viadeo:before{content:"\f2a9"}.fa-viadeo-square:before{content:"\f2aa"}.fa-snapchat:before{content:"\f2ab"}.fa-snapchat-ghost:before{content:"\f2ac"}.fa-snapchat-square:before{content:"\f2ad"}.fa-pied-piper:before{content:"\f2ae"}.fa-first-order:before{content:"\f2b0"}.fa-yoast:before{content:"\f2b1"}.fa-themeisle:before{content:"\f2b2"}.fa-google-plus-circle:before,.fa-google-plus-official:before{content:"\f2b3"}.fa-fa:before,.fa-font-awesome:before{content:"\f2b4"}.fa-handshake-o:before{content:"\f2b5"}.fa-envelope-open:before{content:"\f2b6"}.fa-envelope-open-o:before{content:"\f2b7"}.fa-linode:before{content:"\f2b8"}.fa-address-book:before{content:"\f2b9"}.fa-address-book-o:before{content:"\f2ba"}.fa-vcard:before,.fa-address-card:before{content:"\f2bb"}.fa-vcard-o:before,.fa-address-card-o:before{content:"\f2bc"}.fa-user-circle:before{content:"\f2bd"}.fa-user-circle-o:before{content:"\f2be"}.fa-user-o:before{content:"\f2c0"}.fa-id-badge:before{content:"\f2c1"}.fa-drivers-license:before,.fa-id-card:before{content:"\f2c2"}.fa-drivers-license-o:before,.fa-id-card-o:before{content:"\f2c3"}.fa-quora:before{content:"\f2c4"}.fa-free-code-camp:before{content:"\f2c5"}.fa-telegram:before{content:"\f2c6"}.fa-thermometer-4:before,.fa-thermometer:before,.fa-thermometer-full:before{content:"\f2c7"}.fa-thermometer-3:before,.fa-thermometer-three-quarters:before{content:"\f2c8"}.fa-thermometer-2:before,.fa-thermometer-half:before{content:"\f2c9"}.fa-thermometer-1:before,.fa-thermometer-quarter:before{content:"\f2ca"}.fa-thermometer-0:before,.fa-thermometer-empty:before{content:"\f2cb"}.fa-shower:before{content:"\f2cc"}.fa-bathtub:before,.fa-s15:before,.fa-bath:before{content:"\f2cd"}.fa-podcast:before{content:"\f2ce"}.fa-window-maximize:before{content:"\f2d0"}.fa-window-minimize:before{content:"\f2d1"}.fa-window-restore:before{content:"\f2d2"}.fa-times-rectangle:before,.fa-window-close:before{content:"\f2d3"}.fa-times-rectangle-o:before,.fa-window-close-o:before{content:"\f2d4"}.fa-bandcamp:before{content:"\f2d5"}.fa-grav:before{content:"\f2d6"}.fa-etsy:before{content:"\f2d7"}.fa-imdb:before{content:"\f2d8"}.fa-ravelry:before{content:"\f2d9"}.fa-eercast:before{content:"\f2da"}.fa-microchip:before{content:"\f2db"}.fa-snowflake-o:before{content:"\f2dc"}.fa-superpowers:before{content:"\f2dd"}.fa-wpexplorer:before{content:"\f2de"}.fa-meetup:before{content:"\f2e0"}.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0, 0, 0, 0);border:0}.sr-only-focusable:active,.sr-only-focusable:focus{position:static;width:auto;height:auto;margin:0;overflow:visible;clip:auto}
    
    </style>
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <style type="text/css">
    .select2-container{box-sizing:border-box;display:inline-block;margin:0;position:relative;vertical-align:middle}.select2-container .select2-selection--single{box-sizing:border-box;cursor:pointer;display:block;height:28px;user-select:none;-webkit-user-select:none}.select2-container .select2-selection--single .select2-selection__rendered{display:block;padding-left:8px;padding-right:20px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.select2-container .select2-selection--single .select2-selection__clear{position:relative}.select2-container[dir="rtl"] .select2-selection--single .select2-selection__rendered{padding-right:8px;padding-left:20px}.select2-container .select2-selection--multiple{box-sizing:border-box;cursor:pointer;display:block;min-height:32px;user-select:none;-webkit-user-select:none}.select2-container .select2-selection--multiple .select2-selection__rendered{display:inline-block;overflow:hidden;padding-left:8px;text-overflow:ellipsis;white-space:nowrap}.select2-container .select2-search--inline{float:left}.select2-container .select2-search--inline .select2-search__field{box-sizing:border-box;border:none;font-size:100%;margin-top:5px;padding:0}.select2-container .select2-search--inline .select2-search__field::-webkit-search-cancel-button{-webkit-appearance:none}.select2-dropdown{background-color:white;border:1px solid #aaa;border-radius:4px;box-sizing:border-box;display:block;position:absolute;left:-100000px;width:100%;z-index:1051}.select2-results{display:block}.select2-results__options{list-style:none;margin:0;padding:0}.select2-results__option{padding:6px;user-select:none;-webkit-user-select:none}.select2-results__option[aria-selected]{cursor:pointer}.select2-container--open .select2-dropdown{left:0}.select2-container--open .select2-dropdown--above{border-bottom:none;border-bottom-left-radius:0;border-bottom-right-radius:0}.select2-container--open .select2-dropdown--below{border-top:none;border-top-left-radius:0;border-top-right-radius:0}.select2-search--dropdown{display:block;padding:4px}.select2-search--dropdown .select2-search__field{padding:4px;width:100%;box-sizing:border-box}.select2-search--dropdown .select2-search__field::-webkit-search-cancel-button{-webkit-appearance:none}.select2-search--dropdown.select2-search--hide{display:none}.select2-close-mask{border:0;margin:0;padding:0;display:block;position:fixed;left:0;top:0;min-height:100%;min-width:100%;height:auto;width:auto;opacity:0;z-index:99;background-color:#fff;filter:alpha(opacity=0)}.select2-hidden-accessible{border:0 !important;clip:rect(0 0 0 0) !important;-webkit-clip-path:inset(50%) !important;clip-path:inset(50%) !important;height:1px !important;overflow:hidden !important;padding:0 !important;position:absolute !important;width:1px !important;white-space:nowrap !important}.select2-container--default .select2-selection--single{background-color:#fff;border:1px solid #aaa;border-radius:4px}.select2-container--default .select2-selection--single .select2-selection__rendered{color:#444;line-height:28px}.select2-container--default .select2-selection--single .select2-selection__clear{cursor:pointer;float:right;font-weight:bold}.select2-container--default .select2-selection--single .select2-selection__placeholder{color:#999}.select2-container--default .select2-selection--single .select2-selection__arrow{height:26px;position:absolute;top:1px;right:1px;width:20px}.select2-container--default .select2-selection--single .select2-selection__arrow b{border-color:#888 transparent transparent transparent;border-style:solid;border-width:5px 4px 0 4px;height:0;left:50%;margin-left:-4px;margin-top:-2px;position:absolute;top:50%;width:0}.select2-container--default[dir="rtl"] .select2-selection--single .select2-selection__clear{float:left}.select2-container--default[dir="rtl"] .select2-selection--single .select2-selection__arrow{left:1px;right:auto}.select2-container--default.select2-container--disabled .select2-selection--single{background-color:#eee;cursor:default}.select2-container--default.select2-container--disabled .select2-selection--single .select2-selection__clear{display:none}.select2-container--default.select2-container--open .select2-selection--single .select2-selection__arrow b{border-color:transparent transparent #888 transparent;border-width:0 4px 5px 4px}.select2-container--default .select2-selection--multiple{background-color:white;border:1px solid #aaa;border-radius:4px;cursor:text}.select2-container--default .select2-selection--multiple .select2-selection__rendered{box-sizing:border-box;list-style:none;margin:0;padding:0 5px;width:100%}.select2-container--default .select2-selection--multiple .select2-selection__rendered li{list-style:none}.select2-container--default .select2-selection--multiple .select2-selection__placeholder{color:#999;margin-top:5px;float:left}.select2-container--default .select2-selection--multiple .select2-selection__clear{cursor:pointer;float:right;font-weight:bold;margin-top:5px;margin-right:10px}.select2-container--default .select2-selection--multiple .select2-selection__choice{background-color:#e4e4e4;border:1px solid #aaa;border-radius:4px;cursor:default;float:left;margin-right:5px;margin-top:5px;padding:0 5px}.select2-container--default .select2-selection--multiple .select2-selection__choice__remove{color:#999;cursor:pointer;display:inline-block;font-weight:bold;margin-right:2px}.select2-container--default .select2-selection--multiple .select2-selection__choice__remove:hover{color:#333}.select2-container--default[dir="rtl"] .select2-selection--multiple .select2-selection__choice,.select2-container--default[dir="rtl"] .select2-selection--multiple .select2-selection__placeholder,.select2-container--default[dir="rtl"] .select2-selection--multiple .select2-search--inline{float:right}.select2-container--default[dir="rtl"] .select2-selection--multiple .select2-selection__choice{margin-left:5px;margin-right:auto}.select2-container--default[dir="rtl"] .select2-selection--multiple .select2-selection__choice__remove{margin-left:2px;margin-right:auto}.select2-container--default.select2-container--focus .select2-selection--multiple{border:solid black 1px;outline:0}.select2-container--default.select2-container--disabled .select2-selection--multiple{background-color:#eee;cursor:default}.select2-container--default.select2-container--disabled .select2-selection__choice__remove{display:none}.select2-container--default.select2-container--open.select2-container--above .select2-selection--single,.select2-container--default.select2-container--open.select2-container--above .select2-selection--multiple{border-top-left-radius:0;border-top-right-radius:0}.select2-container--default.select2-container--open.select2-container--below .select2-selection--single,.select2-container--default.select2-container--open.select2-container--below .select2-selection--multiple{border-bottom-left-radius:0;border-bottom-right-radius:0}.select2-container--default .select2-search--dropdown .select2-search__field{border:1px solid #aaa}.select2-container--default .select2-search--inline .select2-search__field{background:transparent;border:none;outline:0;box-shadow:none;-webkit-appearance:textfield}.select2-container--default .select2-results>.select2-results__options{max-height:200px;overflow-y:auto}.select2-container--default .select2-results__option[role=group]{padding:0}.select2-container--default .select2-results__option[aria-disabled=true]{color:#999}.select2-container--default .select2-results__option[aria-selected=true]{background-color:#ddd}.select2-container--default .select2-results__option .select2-results__option{padding-left:1em}.select2-container--default .select2-results__option .select2-results__option .select2-results__group{padding-left:0}.select2-container--default .select2-results__option .select2-results__option .select2-results__option{margin-left:-1em;padding-left:2em}.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option{margin-left:-2em;padding-left:3em}.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option{margin-left:-3em;padding-left:4em}.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option{margin-left:-4em;padding-left:5em}.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option{margin-left:-5em;padding-left:6em}.select2-container--default .select2-results__option--highlighted[aria-selected]{background-color:#5897fb;color:white}.select2-container--default .select2-results__group{cursor:default;display:block;padding:6px}.select2-container--classic .select2-selection--single{background-color:#f7f7f7;border:1px solid #aaa;border-radius:4px;outline:0;background-image:-webkit-linear-gradient(top, #fff 50%, #eee 100%);background-image:-o-linear-gradient(top, #fff 50%, #eee 100%);background-image:linear-gradient(to bottom, #fff 50%, #eee 100%);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFFFFFFF', endColorstr='#FFEEEEEE', GradientType=0)}.select2-container--classic .select2-selection--single:focus{border:1px solid #5897fb}.select2-container--classic .select2-selection--single .select2-selection__rendered{color:#444;line-height:28px}.select2-container--classic .select2-selection--single .select2-selection__clear{cursor:pointer;float:right;font-weight:bold;margin-right:10px}.select2-container--classic .select2-selection--single .select2-selection__placeholder{color:#999}.select2-container--classic .select2-selection--single .select2-selection__arrow{background-color:#ddd;border:none;border-left:1px solid #aaa;border-top-right-radius:4px;border-bottom-right-radius:4px;height:26px;position:absolute;top:1px;right:1px;width:20px;background-image:-webkit-linear-gradient(top, #eee 50%, #ccc 100%);background-image:-o-linear-gradient(top, #eee 50%, #ccc 100%);background-image:linear-gradient(to bottom, #eee 50%, #ccc 100%);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFEEEEEE', endColorstr='#FFCCCCCC', GradientType=0)}.select2-container--classic .select2-selection--single .select2-selection__arrow b{border-color:#888 transparent transparent transparent;border-style:solid;border-width:5px 4px 0 4px;height:0;left:50%;margin-left:-4px;margin-top:-2px;position:absolute;top:50%;width:0}.select2-container--classic[dir="rtl"] .select2-selection--single .select2-selection__clear{float:left}.select2-container--classic[dir="rtl"] .select2-selection--single .select2-selection__arrow{border:none;border-right:1px solid #aaa;border-radius:0;border-top-left-radius:4px;border-bottom-left-radius:4px;left:1px;right:auto}.select2-container--classic.select2-container--open .select2-selection--single{border:1px solid #5897fb}.select2-container--classic.select2-container--open .select2-selection--single .select2-selection__arrow{background:transparent;border:none}.select2-container--classic.select2-container--open .select2-selection--single .select2-selection__arrow b{border-color:transparent transparent #888 transparent;border-width:0 4px 5px 4px}.select2-container--classic.select2-container--open.select2-container--above .select2-selection--single{border-top:none;border-top-left-radius:0;border-top-right-radius:0;background-image:-webkit-linear-gradient(top, #fff 0%, #eee 50%);background-image:-o-linear-gradient(top, #fff 0%, #eee 50%);background-image:linear-gradient(to bottom, #fff 0%, #eee 50%);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFFFFFFF', endColorstr='#FFEEEEEE', GradientType=0)}.select2-container--classic.select2-container--open.select2-container--below .select2-selection--single{border-bottom:none;border-bottom-left-radius:0;border-bottom-right-radius:0;background-image:-webkit-linear-gradient(top, #eee 50%, #fff 100%);background-image:-o-linear-gradient(top, #eee 50%, #fff 100%);background-image:linear-gradient(to bottom, #eee 50%, #fff 100%);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFEEEEEE', endColorstr='#FFFFFFFF', GradientType=0)}.select2-container--classic .select2-selection--multiple{background-color:white;border:1px solid #aaa;border-radius:4px;cursor:text;outline:0}.select2-container--classic .select2-selection--multiple:focus{border:1px solid #5897fb}.select2-container--classic .select2-selection--multiple .select2-selection__rendered{list-style:none;margin:0;padding:0 5px}.select2-container--classic .select2-selection--multiple .select2-selection__clear{display:none}.select2-container--classic .select2-selection--multiple .select2-selection__choice{background-color:#e4e4e4;border:1px solid #aaa;border-radius:4px;cursor:default;float:left;margin-right:5px;margin-top:5px;padding:0 5px}.select2-container--classic .select2-selection--multiple .select2-selection__choice__remove{color:#888;cursor:pointer;display:inline-block;font-weight:bold;margin-right:2px}.select2-container--classic .select2-selection--multiple .select2-selection__choice__remove:hover{color:#555}.select2-container--classic[dir="rtl"] .select2-selection--multiple .select2-selection__choice{float:right;margin-left:5px;margin-right:auto}.select2-container--classic[dir="rtl"] .select2-selection--multiple .select2-selection__choice__remove{margin-left:2px;margin-right:auto}.select2-container--classic.select2-container--open .select2-selection--multiple{border:1px solid #5897fb}.select2-container--classic.select2-container--open.select2-container--above .select2-selection--multiple{border-top:none;border-top-left-radius:0;border-top-right-radius:0}.select2-container--classic.select2-container--open.select2-container--below .select2-selection--multiple{border-bottom:none;border-bottom-left-radius:0;border-bottom-right-radius:0}.select2-container--classic .select2-search--dropdown .select2-search__field{border:1px solid #aaa;outline:0}.select2-container--classic .select2-search--inline .select2-search__field{outline:0;box-shadow:none}.select2-container--classic .select2-dropdown{background-color:#fff;border:1px solid transparent}.select2-container--classic .select2-dropdown--above{border-bottom:none}.select2-container--classic .select2-dropdown--below{border-top:none}.select2-container--classic .select2-results>.select2-results__options{max-height:200px;overflow-y:auto}.select2-container--classic .select2-results__option[role=group]{padding:0}.select2-container--classic .select2-results__option[aria-disabled=true]{color:grey}.select2-container--classic .select2-results__option--highlighted[aria-selected]{background-color:#3875d7;color:#fff}.select2-container--classic .select2-results__group{cursor:default;display:block;padding:6px}.select2-container--classic.select2-container--open .select2-dropdown{border-color:#5897fb}
    
    </style>
  

    <!-- Main CSS-->
    <style type="text/css">
    
/* ==========================================================================
   #FONT
   ========================================================================== */
.font-robo {
  font-family: "Roboto", "Arial", "Helvetica Neue", sans-serif;
}

.font-poppins {
  font-family: "Poppins", "Arial", "Helvetica Neue", sans-serif;
}

/* ==========================================================================
   #GRID
   ========================================================================== */
.row {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex-wrap: wrap;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
}

.row-space {
  -webkit-box-pack: justify;
  -webkit-justify-content: space-between;
  -moz-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
}

.col-2 {
  width: -webkit-calc((100% - 30px) / 2);
  width: -moz-calc((100% - 30px) / 2);
  width: calc((100% - 30px) / 2);
}

@media (max-width: 767px) {
  .col-2 {
    width: 100%;
  }
}

/* ==========================================================================
   #BOX-SIZING
   ========================================================================== */
/**
 * More sensible default box-sizing:
 * css-tricks.com/inheriting-box-sizing-probably-slightly-better-best-practice
 */
html {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

* {
  padding: 0;
  margin: 0;
}

*, *:before, *:after {
  -webkit-box-sizing: inherit;
  -moz-box-sizing: inherit;
  box-sizing: inherit;
}

/* ==========================================================================
   #RESET
   ========================================================================== */
/**
 * A very simple reset that sits on top of Normalize.css.
 */
body,
h1, h2, h3, h4, h5, h6,
blockquote, p, pre,
dl, dd, ol, ul,
figure,
hr,
fieldset, legend {
  margin: 0;
  padding: 0;
}

/**
 * Remove trailing margins from nested lists.
 */
li > ol,
li > ul {
  margin-bottom: 0;
}

/**
 * Remove default table spacing.
 */
table {
  border-collapse: collapse;
  border-spacing: 0;
}

/**
 * 1. Reset Chrome and Firefox behaviour which sets a `min-width: min-content;`
 *    on fieldsets.
 */
fieldset {
  min-width: 0;
  /* [1] */
  border: 0;
}

button {
  outline: none;
  background: none;
  border: none;
}

/* ==========================================================================
   #PAGE WRAPPER
   ========================================================================== */
.page-wrapper {
  min-height: 100vh;
}

body {
  font-family: "Poppins", "Arial", "Helvetica Neue", sans-serif;
  font-weight: 400;
  font-size: 14px;
}

h1, h2, h3, h4, h5, h6 {
  font-weight: 400;
}

h1 {
  font-size: 36px;
}

h2 {
  font-size: 30px;
}

h3 {
  font-size: 24px;
}

h4 {
  font-size: 18px;
}

h5 {
  font-size: 15px;
}

h6 {
  font-size: 13px;
}

/* ==========================================================================
   #BACKGROUND
   ========================================================================== */
.bg-blue {
  background: #2c6ed5;
}

.bg-red {
  background: #fa4251;
}

.bg-gra-01 {
  background: -webkit-gradient(linear, left bottom, left top, from(#fbc2eb), to(#a18cd1));
  background: -webkit-linear-gradient(bottom, #fbc2eb 0%, #a18cd1 100%);
  background: -moz-linear-gradient(bottom, #fbc2eb 0%, #a18cd1 100%);
  background: -o-linear-gradient(bottom, #fbc2eb 0%, #a18cd1 100%);
  background: linear-gradient(to top, #fbc2eb 0%, #a18cd1 100%);
}

.bg-gra-02 {
  background: -webkit-gradient(linear, left bottom, right top, from(#fc2c77), to(#6c4079));
  background: -webkit-linear-gradient(bottom left, #fc2c77 0%, #6c4079 100%);
  background: -moz-linear-gradient(bottom left, #fc2c77 0%, #6c4079 100%);
  background: -o-linear-gradient(bottom left, #fc2c77 0%, #6c4079 100%);
  background: linear-gradient(to top right, #fc2c77 0%, #6c4079 100%);
}

/* ==========================================================================
   #SPACING
   ========================================================================== */
.p-t-100 {
  padding-top: 100px;
}

.p-t-130 {
  padding-top: 130px;
}

.p-t-180 {
  padding-top: 180px;
}

.p-t-20 {
  padding-top: 20px;
}

.p-t-15 {
  padding-top: 15px;
}

.p-t-10 {
  padding-top: 10px;
}

.p-t-30 {
  padding-top: 30px;
}

.p-b-100 {
  padding-bottom: 100px;
}

.m-r-45 {
  margin-right: 45px;
}

/* ==========================================================================
   #WRAPPER
   ========================================================================== */
.wrapper {
  margin: 0 auto;
}

.wrapper--w960 {
  max-width: 960px;
}

.wrapper--w780 {
  max-width: 780px;
}

.wrapper--w680 {
  max-width: 680px;
}

/* ==========================================================================
   #BUTTON
   ========================================================================== */
.btn {
  display: inline-block;
  line-height: 50px;
  padding: 0 50px;
  -webkit-transition: all 0.4s ease;
  -o-transition: all 0.4s ease;
  -moz-transition: all 0.4s ease;
  transition: all 0.4s ease;
  cursor: pointer;
  font-size: 18px;
  color: #fff;
  font-family: "Poppins", "Arial", "Helvetica Neue", sans-serif;
}

.btn--radius {
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}

.btn--radius-2 {
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
}

.btn--pill {
  -webkit-border-radius: 20px;
  -moz-border-radius: 20px;
  border-radius: 20px;
}

.btn--green {
  background: #57b846;
}

.btn--green:hover {
  background: #4dae3c;
}

.btn--blue {
  background: #4272d7;
}

.btn--blue:hover {
  background: #3868cd;
}

/* ==========================================================================
   #DATE PICKER
   ========================================================================== */
td.active {
  background-color: #2c6ed5;
}

input[type="date" i] {
  padding: 14px;
}

.table-condensed td, .table-condensed th {
  font-size: 14px;
  font-family: "Roboto", "Arial", "Helvetica Neue", sans-serif;
  font-weight: 400;
}

.daterangepicker td {
  width: 40px;
  height: 30px;
}

.daterangepicker {
  border: none;
  -webkit-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  display: none;
  border: 1px solid #e0e0e0;
  margin-top: 5px;
}

.daterangepicker::after, .daterangepicker::before {
  display: none;
}

.daterangepicker thead tr th {
  padding: 10px 0;
}

.daterangepicker .table-condensed th select {
  border: 1px solid #ccc;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
  font-size: 14px;
  padding: 5px;
  outline: none;
}

/* ==========================================================================
   #FORM
   ========================================================================== */
input {
  outline: none;
  margin: 0;
  border: none;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
  width: 100%;
  font-size: 14px;
  font-family: inherit;
}

.input--style-4 {
  line-height: 50px;
  background: #fafafa;
  -webkit-box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  -moz-box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
  padding: 0 20px;
  font-size: 16px;
  color: #666;
  -webkit-transition: all 0.4s ease;
  -o-transition: all 0.4s ease;
  -moz-transition: all 0.4s ease;
  transition: all 0.4s ease;
}

.input--style-4::-webkit-input-placeholder {
  /* WebKit, Blink, Edge */
  color: #666;
}

.input--style-4:-moz-placeholder {
  /* Mozilla Firefox 4 to 18 */
  color: #666;
  opacity: 1;
}

.input--style-4::-moz-placeholder {
  /* Mozilla Firefox 19+ */
  color: #666;
  opacity: 1;
}

.input--style-4:-ms-input-placeholder {
  /* Internet Explorer 10-11 */
  color: #666;
}

.input--style-4:-ms-input-placeholder {
  /* Microsoft Edge */
  color: #666;
}

.label {
  font-size: 16px;
  color: #555;
  text-transform: capitalize;
  display: block;
  margin-bottom: 5px;
}

.radio-container {
  display: inline-block;
  position: relative;
  padding-left: 30px;
  cursor: pointer;
  font-size: 16px;
  color: #666;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

.radio-container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

.radio-container input:checked ~ .checkmark {
  background-color: #e5e5e5;
}

.radio-container input:checked ~ .checkmark:after {
  display: block;
}

.radio-container .checkmark:after {
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  -o-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  width: 12px;
  height: 12px;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  background: #57b846;
}

.checkmark {
  position: absolute;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
  left: 0;
  height: 20px;
  width: 20px;
  background-color: #e5e5e5;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  -webkit-box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  -moz-box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
}

.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

.input-group {
  position: relative;
  margin-bottom: 22px;
}

.input-group-icon {
  position: relative;
}

.input-icon {
  position: absolute;
  font-size: 18px;
  color: #999;
  right: 18px;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
  cursor: pointer;
}

/* ==========================================================================
   #SELECT2
   ========================================================================== */
.select--no-search .select2-search {
  display: none !important;
}

.rs-select2 .select2-container {
  width: 100% !important;
  outline: none;
  background: #fafafa;
  -webkit-box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  -moz-box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
}

.rs-select2 .select2-container .select2-selection--single {
  outline: none;
  border: none;
  height: 50px;
  background: transparent;
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__rendered {
  line-height: 50px;
  padding-left: 0;
  color: #555;
  font-size: 16px;
  font-family: inherit;
  padding-left: 22px;
  padding-right: 50px;
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__arrow {
  height: 50px;
  right: 20px;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
  -webkit-justify-content: center;
  -moz-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  -webkit-box-align: center;
  -webkit-align-items: center;
  -moz-box-align: center;
  -ms-flex-align: center;
  align-items: center;
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__arrow b {
  display: none;
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__arrow:after {
  font-family: "Material-Design-Iconic-Font";
  content: '\f2f9';
  font-size: 24px;
  color: #999;
  -webkit-transition: all 0.4s ease;
  -o-transition: all 0.4s ease;
  -moz-transition: all 0.4s ease;
  transition: all 0.4s ease;
}

.rs-select2 .select2-container.select2-container--open .select2-selection--single .select2-selection__arrow::after {
  -webkit-transform: rotate(-180deg);
  -moz-transform: rotate(-180deg);
  -ms-transform: rotate(-180deg);
  -o-transform: rotate(-180deg);
  transform: rotate(-180deg);
}

.select2-container--open .select2-dropdown--below {
  border: none;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
  -webkit-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  border: 1px solid #e0e0e0;
  margin-top: 5px;
  overflow: hidden;
}

.select2-container--default .select2-results__option {
  padding-left: 22px;
}

/* ==========================================================================
   #TITLE
   ========================================================================== */
.title {
  font-size: 24px;
  color: #525252;
  font-weight: 400;
  margin-bottom: 40px;
}

/* ==========================================================================
   #CARD
   ========================================================================== */
.card {
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
  background: #fff;
}

.card-4 {
  background: #fff;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  border-radius: 10px;
  -webkit-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
}

.card-4 .card-body {
  padding: 57px 65px;
  padding-bottom: 65px;
}

@media (max-width: 767px) {
  .card-4 .card-body {
    padding: 50px 40px;
  }
}
    
    </style>
</head>

<body>
		<sec:authentication var="user" property="principal.username" />
		
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Fill your details</h2>
                    
                    <form:form method="POST" action="saveCustomer"
			modelAttribute="customer">
			
			<form:hidden path="id" />
			
			<form:input path="user.userName" value="${user}"
								type="hidden" />
			
                        <div class="row row-space">
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">First name</label><br>
                                    <form:errors path="firstnm" class="ml-3 alert alert-danger "/>
                                    <form:input class="input--style-4" type="text" name="first_name" path="firstnm"/>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">Last name</label><br>
                                    <form:errors path="lastnm" class="ml-3 alert alert-danger "/>
                                    <form:input class="input--style-4" type="text" name="last_name" path="lastnm"/>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                           <div class="col-6">
                                <div class="input-group">
                                    <label class="label">Email</label><br>
                                    <form:errors path="email" class="ml-3 alert alert-danger "/>
                                    <form:input class="input--style-4" type="email" name="email" path="email" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">Gender</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">Male
                                            <form:radiobutton path="gender" value="Male"  checked="checked" name="gender"/>
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Female
                                             <form:radiobutton path="gender" value="Female"  checked="checked" name="gender"/>
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">Other
                                            <form:radiobutton path="gender" value="Other"  checked="checked" name="gender"/>
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">Age</label><br>
                                    <form:errors path="age" class="ml-3 alert alert-danger "/>
                                    <form:input class="input--style-4"  path="age"/>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    <form:input class="input--style-4" type="text" name="phone" path="phoneNum" />
                                </div>
                            </div>
                        </div>
						<div class="row row-space">
							<div class="col-3">
								<div class="input-group">
									<label class="label">Weight(kgs)</label><br>
									<form:errors path="weight" class="alert alert-danger "/>
									<form:input class="input--style-4" type="text" name="email"
										path="weight" />
								</div>
							</div>
							<div class="col-3">
								<div class="input-group">
									<label class="label">Height(cms)</label><br>
									<form:errors path="height" class="alert alert-danger "/>
									<form:input class="input--style-4" type="text" name="phone"
										path="height" />
								</div>
							</div>
							<div class="col-3">
								<div class="input-group">
									<label class="label">Blood Group</label><br>
									<form:errors path="bloodGrp" class="alert alert-danger "/>
									<form:input class="input--style-4" type="text" name="phone"
										path="bloodGrp" />
								</div>
							</div>
						</div>
						<div class="row row-space">
                            <div class="col-12">
                                <div class="input-group">
                                    <label class="label">Address</label>
                                    <br>
                                    <form:errors path="address" class="ml-3 alert alert-danger "/>
                                    <form:input class="input--style-4" type="text" name="email" path="address"/>
                                </div>
                            </div>
                        </div>
						<div class="row row-space">
							<div class="col-12">
								<div class="input-group">
									<label class="label">Medical History</label>
									<form:input class="input--style-4" type="text" name="email"
										path="medicalHist" />
								</div>
							</div>
						</div>
						<div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Save</button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>

 
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</body>
</html>
