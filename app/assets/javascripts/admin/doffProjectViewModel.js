var gNs = gNs || {};

(function() {
    function doffProjectViewModel(viewModel) {

        var self = viewModel;

        self.selectedProjectItem = ko.observable({});
        self.isSelected = ko.observable(false);
        var projectId = viewModel.id();

        //as it comes from server, but blank observables
        var projectItemTemplate = prepAndClone(viewModel.project_items()[0]); 

        self.addProjectItem = function() {
            var clonedObject = clone(projectItemTemplate);
            processProjectItem(clonedObject)

            self.project_items.push(clonedObject);
            self.setSelectedProjectItem(clonedObject);
        }

        self.removeProjectItem = function(item) {
            self.project_items.remove(item);
        }

        self.setSelectedProjectItem = function(item) {
            self.selectedProjectItem(item);
            self.isSelected(true)
        }

        finalizeProjectItems(self.project_items())


        return self;
    }

    function finalizeProjectItems(projectItems) {
        projectItems.forEach(processProjectItem);
    }

    function processProjectItem(projectItem){
            projectItem.projectItemDisplayName = ko.computed(function() {
                var imageName = projectItem.image_name() || projectItem.image_url();
                var name = (imageName === "" || imageName == undefined) ? "(No Item Name)": imageName;

                return name;
            })
    }

    function clone(obj){
        var newObj = ko.mapping.fromJS(ko.mapping.toJS(obj));

        return newObj;
    }

    function prepAndClone(obj){
        var newItem = clone(obj);

        for(var name in newItem){
            var prop = newItem[name];
            if(newItem.hasOwnProperty(name) && ko.isObservable(prop)){
                prop('');
            }
        }
        
        delete newItem.id;
        newItem.project_id(projectId);

        return newItem;
    }


    gNs.doffProjectViewModel = doffProjectViewModel;
}())