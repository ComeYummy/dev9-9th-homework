//----------------------------------------------------------------------------------
// サムネイル画像のレイアウト指定
//----------------------------------------------------------------------------------



//変数定義
var windowWidth, windowHeight;
var thumbnailWidth, thumbnailHeight;
//1行のサムネイル数
var divideNumber;

//ウィンドウサイズの取得
// getWindowSize();

//Windowリサイズした時の処理
window.onresize = getWindowSize;

//ウィンドウサイズを取得して、サムネイル幅を計算
function getWindowSize() {
    var str;
    windowWidth = window.innerWidth;
    windowHeight = window.innerHeight;

    str = "横幅 = " + windowWidth + " , 高さ = " + windowHeight;
    console.log(str);

    if (windowWidth <= 640) {
        divideNumber = 3;
    } else if (windowWidth > 640) {
        divideNumber = 5;
    }
    //画面幅からマージン2pxの（divideNumber ＋1）倍を引き、そこからdivideNumberで割り算
    thumbnailWidth = (windowWidth - 2 * (divideNumber + 1)) / divideNumber;
    thumbnailHeight = thumbnailWidth;
    console.log("thumbnailWidth:" + thumbnailWidth);

    $(".thumbnail").css({ 'width': `${thumbnailWidth}px`, 'height': `${thumbnailHeight}px` });
}



//----------------------------------------------------------------------------------
// 画面ロード時の動作(DOM生成後、外部リソース前)
//----------------------------------------------------------------------------------
document.addEventListener('DOMContentLoaded', function () {
    //ウィンドウサイズの取得、サムネイル画像の設定
    getWindowSize();
});


//----------------------------------------------------------------------------------
// サイドメニュータップ時の動作
//----------------------------------------------------------------------------------



//サイドメニュークエリセレクタ
var querySelector = document.querySelector.bind(document);
var menuPanel = querySelector('.menu-panel');

//サイドメニュー出し入れ
(function () {

    'use strict';
    var hambuger = querySelector('.hamburger');

    function toggleMenu() {
        menuPanel.classList.toggle('menu-open');
        console.log("toggle");
    };

    // Menu open
    hambuger.addEventListener('click', toggleMenu);
})();

//サイドメニューコンテンツ追加
// 実際はここにコンテンツを書いていく。未実装

$("#logout").on("click", function () {
    window.location.href = 'logout.php';
});



//----------------------------------------------------------------------------------
// ファイル選択せずにアップロード
//----------------------------------------------------------------------------------

//見えないテキストフォームにtitleを設定

$("#formTitle").val(localStorage.getItem("title"));
console.log("title: " + $("#formTitle").val());
$("#formTitle2").val(localStorage.getItem("title"));


$("#upload").click(function () {
    $("#btnUpload").click();
    return false; // must!
});

$("#btnUpload").change(function () {
    // $(this).closest("form").submit();
    document.myform.submit();
});

$("#upload2").click(function () {
    $("#btnUpload2").click();
    return false; // must!
});

$("#btnUpload2").change(function () {
    // $(this).closest("form").submit();
    document.myform2.submit();
});


//----------------------------------------------------------------------------------
// 画像タップで拡大
//----------------------------------------------------------------------------------

$('.img-list img').on('click', function () {

    // 背景セット
    $('body').append('<div id="back">');
    $('#back').hide();

    // 画像セット
    $('body').append('<div id="enlarged_image">');
    $('#enlarged_image').html('<img>');
    $('#enlarged_image img').attr('src', $(this).attr('src'));
    $('#enlarged_image').hide();


    //title取得
    const title = $("#title").text();
    console.log("title: " + title);
    //formセット
    const str = '<div id="input-form">' +
        '<form action = "insertTag.php" method = "post" >' +
        '<input type="text" name="tag" id="tag" >' +
        '<input type="hidden" name="dataId" id="dataId">' +
        '<input type="submit" value="送信">' +
        '</form>' +
        '</div>';
    //dataIdに値をセット
    console.log($(this).attr('data-id'));

    var self = this;

    // オリジナル画像サイズの取得。Imageオブジェクトを利用。onloadしないと０。
    var image = new Image();
    var imgWidth, imgHeight;
    image.src = $(this).attr('src');
    console.log(image.src);

    image.onload = function () {
        imgWidth = image.width;
        console.log("imgWidth: " + imgWidth);
        imgHeight = image.height;
        console.log("imgHeight: " + imgHeight);


        var winWidth = $(window).width();
        var winHeight = $(window).height();

        // 拡大画像のサイズ
        var resizedHeight = winHeight * 0.7;
        var resizedWidth = resizedHeight * imgWidth / imgHeight;

        // 拡大後画像幅がディスプレイ幅を超えていた場合
        if (resizedWidth > winWidth) {
            for (var i = 6; i > 0; i--) {
                tmpResizedHeight = winHeight * i * 0.1;
                tmpResizedWidth = tmpResizedHeight * imgWidth / imgHeight;

                if (tmpResizedWidth < winWidth) {
                    resizedHeight = tmpResizedHeight;
                    resizedWidth = tmpResizedWidth;
                    break;
                }
            }
        }

        // 表示位置を中心にセット
        $('#enlarged_image').css({
            top: winHeight / 2 - resizedHeight / 2,
            left: winWidth / 2 - resizedWidth / 2
        });

        // 画像サイズを指定
        $('#enlarged_image img').css({
            height: resizedHeight,
            width: resizedWidth
        });

        //form要素を追加
        $('body').append(str);
        $("#dataId").val($(self).attr('data-id'));
        console.log($(self).attr('data-id'));

        //位置指定
        $('#input-form').css({
            top: winHeight / 2 - resizedHeight / 2 + resizedHeight,
            left: winWidth / 2 - resizedWidth / 2
        });


        $('#back, #enlarged_image, #input-form').fadeIn();
    };



    $('#back').on('click', function () {
        $(this).fadeOut(function () {
            $(this).remove();
        });

        $('#enlarged_image').fadeOut(function () {
            $(this).remove();
        });

        $('#input-form').fadeOut(function () {
            $(this).remove();
        });
    });
});








