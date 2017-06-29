var hide = function(time, item) {
    this.item = item;
    this.time = time;
    var self = this;
    setTimeout(function () {
        self.item.classList.remove("show-banner");
        self.item.classList.add("hide-banner");
        hide(self.time, self.item);
    }, time);
};
var show = function(time, item) {
    this.item = item;
    this.time = time;
    var self = this;
    setTimeout(function () {
        self.item.classList.add("show-banner");
        self.item.classList.remove("hide-banner");
        show(self.time, self.item);
    }, time);
};


$(document).ready(function() {
    var sale = document.getElementById("banner-head");
    var vid = document.getElementById("bgvid");
    vid.playbackRate = 0.7;
    show(12000,sale);
    hide(14300,sale);
});

