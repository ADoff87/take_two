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



        self.saveChanges = function(vm, redirectCallback) {
            var json = ko.mapping.toJS(vm);
            var isNew = !(json.id > 0);

            var url = isNew ? '/api/admin/project/create' : '/api/admin/project/update';

            postDataByUrl(url, {
                project: json
            }, redirectCallback);
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

        function postDataByUrl(url, data, callback) {
            var options = {
                url: url,
                success: callback,
                method: 'POST',
                error: onError(url),
                data: data
            }

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