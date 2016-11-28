// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-tour-standalone

var site_tour = new Tour({
	  name: "tour",
	  steps: [],
	  container: "body",
	  smartPlacement: false,
	  keyboard: true,
	  storage: false, // window.localStorage
	  debug: false,
	  backdrop: false,
	  backdropContainer: 'body',
	  backdropPadding: 0,
	  redirect: true,
	  orphan: false,
	  duration: false,
	  delay: false,
	  basePath: "",
	  afterGetState: function (key, value) {},
	  afterSetState: function (key, value) {},
	  afterRemoveState: function (key, value) {},
	  onStart: function (tour) {},
	  onEnd: function (tour) {},
	  onShow: function (tour) {},
	  onShown: function (tour) {},
	  onHide: function (tour) {},
	  onHidden: function (tour) {},
	  onNext: function (tour) {},
	  onPrev: function (tour) {},
	  onPause: function (tour, duration) {},
	  onResume: function (tour, duration) {},
	  onRedirectError: function (tour) {}
	});
	
	site_tour.addStep({
		element:'.whikitpdf',
		placement:"bottom",
		title: "Welcome to MyCompliance",
		content: "This site manages your site compliance with various dependency on items"
	});
	
	site_tour.addStep({
		element:'.prawan',
		placement:"bottom",
		title: "This is the Compliant Due and Not Compliant Site links",
		content: "This is where you can filter your sites based on Compliance Due and Not Compliant Status"
	});

	// Initialize the Site tour
	site_tour.init();
	
	// Start the tour
	site_tour.start();