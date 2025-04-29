# Automatic Dishwashing System - UML Modeling

This project involves modeling an automatic dishwashing system using UML diagrams. The system consists of multiple components, each with its own valid states and transitions. The goal is to create a comprehensive model that captures the behavior and interactions of the system.

## Components, States, and Transitions

Below is the JSON representation of the components, their valid states, and transitions:

```json
{
    "components": [
        {
            "name": "Dishwasher Door",
            "states": ["Open", "Closed", "Locked"],
            "transitions": [
                { "from": "Open", "to": "Closed", "action": "Close Door" },
                { "from": "Closed", "to": "Locked", "action": "Lock Door" },
                { "from": "Locked", "to": "Closed", "action": "Unlock Door" },
                { "from": "Closed", "to": "Open", "action": "Open Door" }
            ]
        },
        {
            "name": "Water Pump",
            "states": ["Off", "Pumping"],
            "transitions": [
                { "from": "Off", "to": "Pumping", "action": "Start Pump" },
                { "from": "Pumping", "to": "Off", "action": "Stop Pump" }
            ]
        },
        {
            "name": "Spray Arm",
            "states": ["Idle", "Rotating"],
            "transitions": [
                { "from": "Idle", "to": "Rotating", "action": "Start Rotation" },
                { "from": "Rotating", "to": "Idle", "action": "Stop Rotation" }
            ]
        },
        {
            "name": "Heater",
            "states": ["Off", "Heating"],
            "transitions": [
                { "from": "Off", "to": "Heating", "action": "Turn On Heater" },
                { "from": "Heating", "to": "Off", "action": "Turn Off Heater" }
            ]
        },
        {
            "name": "Detergent Dispenser",
            "states": ["Closed", "Open"],
            "transitions": [
                { "from": "Closed", "to": "Open", "action": "Dispense Detergent" },
                { "from": "Open", "to": "Closed", "action": "Close Dispenser" }
            ]
        },
        {
            "name": "Control Panel",
            "states": ["Idle", "Running", "Paused", "Completed"],
            "transitions": [
                { "from": "Idle", "to": "Running", "action": "Start Cycle" },
                { "from": "Running", "to": "Paused", "action": "Pause Cycle" },
                { "from": "Paused", "to": "Running", "action": "Resume Cycle" },
                { "from": "Running", "to": "Completed", "action": "Complete Cycle" },
                { "from": "Completed", "to": "Idle", "action": "Reset System" }
            ]
        }
    ]
}
```

## How to Use

1. Analyze the JSON structure to understand the components, their states, and transitions.
2. Use UML tools to create state diagrams for each component.
3. Model the interactions between components to represent the complete system.

## Goals

- Create a detailed UML model of the automatic dishwashing system.
- Ensure all components and their behaviors are accurately represented.
- Simulate the system to validate the model.

## License

This project is licensed under the MIT License.