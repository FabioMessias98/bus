import jQuery from "jquery";
import Swiper from "swiper";

(function(document, window, jQuery, Swiper) {
  const routes = require("./routes");

  window.$ = window.jQuery = jQuery;
  window.Swiper = Swiper;

  require("./components/show-notification");
})(document, window, jQuery, Swiper);
