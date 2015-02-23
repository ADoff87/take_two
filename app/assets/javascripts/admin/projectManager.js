var gNs = gNs || {};

(function() {
    function projectManager() {

        var self = this;
        var _dataUtility = new gNs.dataUtility();
        var _vm = null;

        self.getAndBindNewProject = function() {
            _dataUtility.getNewProjectJson(bindModelFromJson);
        };

        self.getAndBindExistingProject = function(id) {
            _dataUtility.getEditProjectJson(id, bindModelFromJson);

        };

        self.submitChanges = function(callback) {
            _dataUtility.saveChanges(_vm, callback);
        }

        function bindModelFromJson(data) {
            if (data.error) {
                //log that theres a problem
            }

            console.log(data);
            var vm = ko.mapping.fromJS(data);

            _vm = gNs.doffProjectViewModel(vm);
            ko.applyBindings(_vm);
        }

        return self;
    };

    gNs.projectManager = projectManager;
}());