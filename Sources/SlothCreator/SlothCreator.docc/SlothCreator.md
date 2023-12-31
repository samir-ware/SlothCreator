# ``SlothCreator``

Catalog sloths you find in nature and create new adorable virtual sloths. Enjoy!

@Metadata {
    @PageImage(
        purpose: icon, 
        source: "slothCreator-icon", 
        alt: "A technology icon representing the SlothCreator framework.")
    @PageColor(green)
}

## Overview

SlothCreator provides models and utilities for creating, tracking, and caring for sloths. The framework provides structures to model an individual ``Sloth``, and identify them by key characteristics, including their ``Sloth/name`` and special supernatural ``Sloth/power-swift.property``. You can create your own custom sloths using a ``SlothGenerator``, and name them using a ``NameGenerator``.

Sloths need careful feeding and maintenance to ensure their health and happiness. You maintain their ``Sloth/energyLevel`` by providing the correct ``Sloth/Food`` and a suitable ``Habitat``. You can exercise your sloth by providing a fun or restful ``Activity``. 

You can visualize and observe your sloths by adding a ``SlothView`` to a SwiftUI view structure.

### Featured

@Links(visualStyle: detailedGrid) {
    - <doc:GettingStarted>
    - <doc:SlothySample>
}


## Topics

### Essentials

- <doc:GettingStarted>
- <doc:SlothySample>
- ``Sloth``

### Sloth Creation

- ``SlothGenerator``
- ``NameGenerator``
- ``Habitat``

### Care and Feeding

- ``Activity``
- ``CareSchedule``
- ``FoodGenerator``
- ``Sloth/Food``

### Sloth Views

- ``SlothView``
- ``HabitatView``
- ``PowerPicker``
- ``SwiftUI/Image``
