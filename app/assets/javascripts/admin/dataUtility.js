var gNs = gNs || {};

(function() {
    function dataUtility() {
        var self = this;
        var _dialog = new gNs.dialog();

        self.getNewProjectJson = function(callback) {


            getDataByUrl('/api/admin/project/new', callback)

        };

        self.getEditProjectJson = function(id, callback) {


            getDataByUrl('/api/admin/project/edit/' + id, callback)
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

        self.postDataByUrl = function(url, data, callback) {
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
                _dialog.showError("There was an error saving the Project")
            }
        }

        return self;

    }

    gNs.dataUtility = dataUtility;
}())