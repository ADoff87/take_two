var gNs = gNs || {};


(function() {
    function init(id) {

        return function() {
            var pm = new gNs.projectManager();

            pm.getAndBindExistingProject(id);
        }

    }

    gNs.init = init;
}())