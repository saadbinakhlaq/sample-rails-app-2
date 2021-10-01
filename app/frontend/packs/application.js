// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
import '../js/bootstrap_js_files.js'
import "@fortawesome/fontawesome-free/css/all"
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;
import $ from 'jquery'
import 'select2'
import 'select2/dist/css/select2.css'
window.addEventListener('DOMContentLoaded', () => {
  $('.js-source-states').select2({
    theme: "bootstrap-5",
    width: "resolve",
    placeholder: 'Select an option'
  })
})