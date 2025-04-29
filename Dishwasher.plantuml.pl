@startuml DishwasherStateDiagram

' Dishwasher Door Component
state "Dishwasher Door" as DishwasherDoor {
    [*] --> Open
    Open --> Closed : Close Door
    Closed --> Locked : Lock Door
    Locked --> Closed : Unlock Door
    Closed --> Open : Open Door
}

' Water Pump Component
state "Water Pump" as WaterPump {
    [*] --> Off
    Off --> Pumping : Start Pump
    Pumping --> Off : Stop Pump
}

' Spray Arm Component
state "Spray Arm" as SprayArm {
    [*] --> Idle
    Idle --> Rotating : Start Rotation
    Rotating --> Idle : Stop Rotation
}

' Heater Component
state "Heater" as Heater {
    [*] --> Off
    Off --> Heating : Turn On Heater
    Heating --> Off : Turn Off Heater
}

' Detergent Dispenser Component
state "Detergent Dispenser" as DetergentDispenser {
    [*] --> Closed
    Closed --> Open : Dispense Detergent
    Open --> Closed : Close Dispenser
}

' Control Panel Component
state "Control Panel" as ControlPanel {
    [*] --> Idle
    Idle --> Running : Start Cycle
    Running --> Paused : Pause Cycle
    Paused --> Running : Resume Cycle
    Running --> Completed : Complete Cycle
    Completed --> Idle : Reset System
}

@enduml