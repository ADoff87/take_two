var gNs = gNs || {};

(function(){
	function doffProjectViewModel(viewModel){

		if(json === ''){
			throw ApplicationException('json string passed in is blank');
		}

		var self = viewModel;

		self.selectProjectItem = ko.observable();

		self.addProjectItem = function(item) {
			self.project_items.push(item);
		}

		self.removeProjectItem = function(item) {
			self.project_items.remove(item);
		}

		self.setSelectedProjectItem = function(item) {
			self.setSelectedProjectItem(item);
		}


		return self;
	}


	gNs.doffProjectViewModel = doffProjectViewModel;
}())