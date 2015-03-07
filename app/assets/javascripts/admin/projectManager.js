var gNs = gNs || {};

(function() {
    function projectManager() {

        var self = this;
        var _dataUtility = new gNs.dataUtility();
        self.project = null;

        self.getAndBindNewProject = function() {
            _dataUtility.getNewProjectJson(bindModelFromJson);
        };

        self.getAndBindExistingProject = function(id) {
            _dataUtility.getEditProjectJson(id, bindModelFromJson);

        };

        self.submitChanges = function() {
            _dataUtility.saveChanges(self.project, function(data) {
                console.log(data);
            });
        }

        function bindModelFromJson(data) {
            if (data.error) {
                //log that theres a problem
            }

            console.log(data);
            var vm = ko.mapping.fromJS(data);

            self.project = gNs.doffProjectViewModel(vm);
            ko.applyBindings(self);
        }

        return self;
    };

    gNs.projectManager = projectManager;
}());