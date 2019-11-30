import flash.external.ExternalInterface;

// Saves data to the datastore
function saveData(store, key, value) {
    sharedObjectInstance = SharedObject.getLocal(store);
    sharedObjectInstance.data[key] = value;
    sharedObjectInstance.flush();
}

// Retrieves data from the datastore
function loadData(store, key) {
    sharedObjectInstance = SharedObject.getLocal(store);
    return sharedObjectInstance.data[key];
}

ExternalInterface.addCallback("saveData", this.saveData);
ExternalInterface.addCallback("loadData", this.loadData);
