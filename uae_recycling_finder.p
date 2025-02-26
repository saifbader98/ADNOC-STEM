import webbrowser
import sys

# List of UAE E-Waste Recycling Centers with Google Maps links
recycling_centers = [
    {
        "name": "EnviroServe",
        "location": "Dubai Industrial City, Saih Shuaib 3, Site No. 30014, Dubai, UAE",
        "contact": "+971 4 885 2434",
        "website": "https://enviroserve.org/",
        "maps": "https://maps.app.goo.gl/dR8qK"
    },
    {
        "name": "Green Solutions",
        "location": "Warehouse: LIU10 BC 05, Jebel Ali, Dubai, UAE",
        "contact": "+971 4 354 4223",
        "website": "https://www.greensolutionsuae.com/",
        "maps": "https://maps.app.goo.gl/F6QfD"
    },
    {
        "name": "E-Scrappy Recyclers",
        "location": "Dubai, UAE",
        "contact": "+971 4 221 1141",
        "website": "https://www.escrappy.ae/",
        "maps": "https://maps.app.goo.gl/HZyXw"
    },
    {
        "name": "Public Services Department - E-Waste Pick-up",
        "location": "Al Qusaidat, Ras Al-Khaimah, UAE",
        "contact": "+971-72270035",
        "website": "https://stg.rak.ae/wps/portal/rak/e-services/govt/rak-pswd/waste-management-agency/wma-e-waste-pick-up",
        "maps": "https://maps.app.goo.gl/AbcXYZ"
    },
    {
        "name": "Gulf IT Scrap",
        "location": "Ajman, UAE",
        "contact": "info@gulfitscrap.com",
        "website": "https://www.gulfitscrap.com/Location/ajman",
        "maps": "https://maps.app.goo.gl/Xyz123"
    }
]

# Function to display recycling centers
def display_centers():
    print("\n--- UAE E-Waste Recycling Centers ---")
    for i, center in enumerate(recycling_centers, 1):
        print(f"{i}. {center['name']} - {center['location']}")

# Function to open Google Maps or Apple Maps
def open_maps(choice):
    if 1 <= choice <= len(recycling_centers):
        center = recycling_centers[choice - 1]
        print(f"\nOpening location: {center['name']} in Maps...\n")
        
        # Open Google Maps link in browser
        webbrowser.open(center["maps"])
    else:
        print("\nInvalid selection. Please try again.")

# Main function
def main():
    while True:
        display_centers()
        try:
            choice = int(input("\nEnter the number of the recycling center you want to visit (0 to exit): "))
            if choice == 0:
                print("Exiting program. Have a great day!")
                break
            open_maps(choice)
        except ValueError:
            print("\nInvalid input. Please enter a number.")

# Run the script
if __name__ == "__main__":
    main()
