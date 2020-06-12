(function() {
    var index = document.getElementById('tabs-index'),
        fee = document.getElementById('tabs-fee'),
        about = document.getElementById('tabs-about'),
        concat = document.getElementById('tab-concat')
    index.onclick = function() {
        window.open('./login.html', '_self')
    }
    fee.onclick = function() {
        window.open('./fee.html', '_self')
    }
    about.onclick = function() {
        window.open('./about.html', '_self')
    }
    concat.onclick = function() {
        window.open('./contact.html', '_self')
    }
})(window)