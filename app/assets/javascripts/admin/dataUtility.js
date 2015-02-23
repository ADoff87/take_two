var gNs = gNs || {};

(function() {
    function dataUtility() {
        var self = this;
        var _dialog;

        self.getNewProjectJson = function(callback) {


            getDataByUrl('/api/admin/project/new', callback)

        };

        self.getEditProjectJson = function(id, callback) {


            getDataByUrl('/api/admin/project/edit/' + id, callback)
        };



        self.saveChanges = function(vm) {
            var json = ko.mapping.toJS(vm);
            var isNew = json.project;
            //api call update, create
        };

        function getDataByUrl(url, callback) {
            var options = {
                url: url,
                success: callback,
                error: onError(url),
                method: 'GET'
            };

            $.ajax(options);
        }

        function onError(url) {

            return function(xhr, result, text) {
                console.log(xhr);
                console.log(result);
                console.log(text);
                console.log("Error request to " + url);
            }
        }

        return self;

    }

    gNs.dataUtility = dataUtility;
}())