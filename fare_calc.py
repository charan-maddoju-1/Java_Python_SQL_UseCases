import random
from datetime import datetime

rates={
    "economy":10,
    "premium":18,
    "suv":25
}

def calculate_fare(km, type, hour):
    base_price=rates[type]
    surge_multiplier=1
    if(hour>=17 and hour<=20):
        surge_multiplier=1.5
    return base_price*km*surge_multiplier


print("------- CityCab ride Estimate -------")

time=int(input("Enter the ride hour of the day (0-23) : "))
distance=int(input("Enter the distance in km : "))
print("Enter the type of vehicle from the available options")
print(list(rates.keys()))

vehicle_type=input().lower()
if vehicle_type in rates.keys():
    fare=calculate_fare(distance,vehicle_type,time)

    date=datetime.now()
    print("\n************** PRICE RECEIPT *************")
    print(f"Receipt No   : {random.randint(1000,10000)}")
    print(f"Date & Time  : {date}")
    print("-----------------------------------")
    print(f"Distance     : {distance} km")
    print(f"Vehicle      : {vehicle_type}")
    print(f"Rate/km      : ₹{rates[vehicle_type]}")
    print("-----------------------------------")
    print(f"Total fare   : ₹{fare:.2f}")
    print("-----------------------------------")

else:
    print("Service Not Available")



