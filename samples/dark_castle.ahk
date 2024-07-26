/*
 * In a realm cloaked in shadows...
 */

class Castle {
    ; Class properties
    name := ""
    constructionYear := 0
    destructionYear := 0
    features := []

    ; Constructor
    __New(name, constructionYear, destructionYear, features*) {
        this.name := name
        this.constructionYear := constructionYear
        this.destructionYear := destructionYear
        this.features := features
    }

    ; Method to calculate the age of the castle
    getAge() {
        return this.calcAge()
    }

    ; Private method to calculate the age
    calcAge() {
        return this.destructionYear - this.constructionYear
    }

    ; Method to get the name of the castle
    getName() {
        return this.name
    }

    ; Method to get the features of the castle
    getFeatures() {
        return this.features
    }
}

; ...there existed a Dark Castle

; Main script
castle := new Castle("Moonshadow Fortress", 980, 1503, "Eerie Glow", "High Battlements")

; Using the 'castle' object and displaying details
MsgBox, Castle Name: % castle.getName()
MsgBox, Castle Age: % castle.getAge() " years"
MsgBox, Castle Features:
for feature in castle.getFeatures() {
    MsgBox, - %feature%
}

; Hotkey to display castle details
^!c::
    MsgBox, Castle Name: % castle.getName()
    MsgBox, Castle Age: % castle.getAge() " years"
    MsgBox, Castle Features:
    for feature in castle.getFeatures() {
        MsgBox, - %feature%
    }
return

; Function to display a welcome message
WelcomeMessage() {
    MsgBox, Welcome to the Moonshadow Fortress!
}

; Call the function
WelcomeMessage()
