var gNs = gNs || {};

(function() {
    function doffProjectViewModel(viewModel) {

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

        massageProjectItem(self.project_items())

        return self;
    }

    function massageProjectItem(projectItems) {
        projectItems.forEach(function(item, idx) {
            item.projectItemName = ko.computed(function() {
                var caption = item.image_caption();
                var name = caption == undefined ? "Item " + idx : caption;

                return name;
            })
        })
    }


    gNs.doffProjectViewModel = doffProjectViewModel;
}())