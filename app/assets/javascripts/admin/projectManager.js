var gNs = gNs || {};

(function(){
	function projectManager(){
		
		var self = this;
		var _dataUtility = new gNs.dataUtility();
		var _vm = null;

		self.getAndBindNewProject = function(){
			var viewModel = _dataUtility.getNewProjectJson();
			_vm = gNs.doffProjectViewModel(viewModel);

			ko.applyBindings(vm);
		}

		self.getAndBindExistingProject = function(id){
			var viewModel = _dataUtility.getEditProjectJson(id);
			_vm = gNs.doffProjectViewModel(viewModel);

			ko.applyBindings(_vm);
		}

		self.submitChanges = function(callback){
			_dataUtility.saveChanges(_vm, callback);
		}

		return self;
	}

	gNs.projectManager = projectManager;
}());