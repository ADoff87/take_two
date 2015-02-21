var gNs = gNs || {};

(function(){
	function dataUtility(){
		var self = this;
		var _dialog;

		self.getNewProjectJson = function(){
			var viewModel = ko.mappings.toJS(JSON.parse(json));
		};

		self.getEditProjectJson = function(id){
			//call out to api to get json
			var viewModel = ko.mappings.toJS(JSON.parse(json));
		};

		self.saveChanges = function(vm){
			var json = ko.mappings.fromJS(vm);
			//api call update, create
		};

		return self;

	}

	gNs.dataUtility = dataUtility;
}())