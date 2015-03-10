var gNs = gNs || {};

(function() {
    function projectManager() {

        var self = this;
        var _dataUtility = new gNs.dataUtility();
        var _dialog = new gNs.dialog();
        self.project = null;

        self.getAndBindNewProject = function() {
            _dataUtility.getNewProjectJson(bindModelFromJson);
        };

        self.getAndBindExistingProject = function(id) {
            _dataUtility.getEditProjectJson(id, bindModelFromJson);

        };

        self.submitChanges = function() {
            /*
            var json = ko.mapping.toJS(vm);
            var isNew = !(json.id > 0);

            var url = isNew ? '/api/admin/project/create' : '/api/admin/project/update';
            */
            var vm = ko.mapping.toJS(self.project);

            var isNew = !(vm.id > 0);
            var url = isNew ? '/api/admin/project/create' : '/api/admin/project/update';

            var jsData = {
                project: vm,
            }

            _dataUtility.postDataByUrl(url, jsData, function(data) {
                _dialog.showSuccess("Update Successful")
            })
        }

        function bindModelFromJson(data) {
            if (data.error) {
                //log that theres a problem
                alert('error!')
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